import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:insta_store/cart_screen.dart';
import 'package:insta_store/models/item.dart';
import 'package:insta_store/models/store/pagination_bloc.dart';
import 'package:insta_store/models/store/store_pagination.dart';
import 'package:insta_store/products_service.dart';
import 'package:insta_store/store_repository.dart';
import 'package:insta_store/widgets/image_provider.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Item product;
  const ProductDetailsScreen({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductDetailsScreen> with PaginationBloc {
  @override
  final pagingController = PagingController<int, Item>(
    firstPageKey: 0,
    invisibleItemsThreshold: 28,
  );

  @override
  void initState() {
    super.initState();
    initPagingState();
  }

  @override
  PaginationCache<Item> get paginationCache =>
      ProductRepository().relatedItemsPagination(widget.product.key);

  @override
  fetchPage(int pageKey) async {
    await ProductRepository().fetchRelatedProducts(pageKey, widget.product);
  }

  Future<void> initPagingState() async {
    await setupPagination();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Feed'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ProductCard(
              product: widget.product,
            ),
          ),
          PagedSliverList(
            pagingController: pagingController,
            builderDelegate: PagedChildBuilderDelegate<Item>(
              itemBuilder: (context, item, index) {
                return ProductCard(product: item);
              },
              newPageErrorIndicatorBuilder: (context) => const SizedBox(),
              noItemsFoundIndicatorBuilder: (context) => const SizedBox(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: StreamBuilder(
          stream: ProductService().selectedItems$.stream,
          builder: (context, snapshot) {
            return Text('${snapshot.data?.length ?? ''} ');
          },
        ),
        icon: const Icon(Icons.shopping_cart),
        isExtended: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const CartScreen();
            }),
          );
        },
      ),
    );
  }
}

class ProductCard extends StatefulWidget {
  final Item product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool liked = false;
  final controller = PageController();
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.product.brand),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade50,
            child: PageView.builder(
              controller: controller,
              itemBuilder: (context, index) {
                return AppImageProvider(
                  widget.product.highResolutionImages[index],
                  boxFit: BoxFit.contain,
                );
              },
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              itemCount: widget.product.highResolutionImages.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
            child: widget.product.highResolutionImages.length <= 1
                ? const SizedBox()
                : PageViewDotIndicator(
                    currentItem: selectedPage,
                    count: widget.product.highResolutionImages.length,
                    unselectedColor: Colors.black26,
                    selectedColor: Colors.deepPurple,
                    duration: const Duration(milliseconds: 200),
                    size: const Size(10, 10),
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    boxShape: BoxShape.circle,
                    onItemClicked: (index) {
                      controller.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    liked = !liked;
                  });
                },
                child: Icon(
                  liked ? Icons.favorite : Icons.favorite_outline_outlined,
                  color: liked
                      ? Colors.red
                      : const Color.fromARGB(255, 32, 31, 31),
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse(widget.product.url),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    child: const Text('Buy now'),
                  ),
                  StreamBuilder<List<Item>>(
                    stream: ProductService().selectedItems$,
                    builder: (context, snapshot) {
                      final selectedItems = snapshot.data ?? [];
                      final alreadyAdded = selectedItems.any(
                        (element) => element.asin == widget.product.asin,
                      );
                      return TextButton(
                        onPressed: () {
                          if (alreadyAdded) return;
                          ProductService()
                              .selectedItems$
                              .add([...selectedItems, widget.product]);
                        },
                        child: alreadyAdded
                            ? const Text(
                                'Added',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            : const Text('Add to basket'),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          Text(widget.product.title),
          Text(price),
          Text(
            widget.product.description ?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  String get price {
    final val = widget.product.price ?? widget.product.listPrice;
    if (val == null) return '\$ 15.34';
    return '${val.currency} ${val.value}';
  }
}
