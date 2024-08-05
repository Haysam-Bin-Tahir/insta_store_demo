import 'package:flutter/material.dart';
import 'package:insta_store/models/item.dart';
import 'package:insta_store/products_service.dart';
import 'package:insta_store/widgets/image_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: StreamBuilder(
        stream: ProductService().selectedItems$.stream,
        builder: (context, snapshot) {
          final items = snapshot.data ?? [];
          return ListView.separated(
              padding: const EdgeInsets.only(top: 16),
              itemCount: items.length,
              separatorBuilder: (context, index) => const SizedBox(
                    height: 8,
                  ),
              itemBuilder: (context, index) {
                final item = items[index];
                return Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          final products =
                              ProductService().selectedItems$.valueOrNull ?? [];
                          products.remove(item);
                          ProductService().selectedItems$.add(products);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(Icons.remove),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: AppImageProvider(item.thumbnailImage,
                            boxFit: BoxFit.contain),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            if (item.description != null)
                              Text(
                                item.description ?? '',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(price(item)),
                            const SizedBox(width: 4),
                            InkWell(
                              onTap: () {
                                launchUrl(
                                  Uri.parse(item.url),
                                  mode: LaunchMode.externalApplication,
                                );
                              },
                              child: const Text(
                                'Buy now',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
                // return  ListTile(
                //     title: Text(
                //       item.title,
                //       maxLines: 1,
                //       overflow: TextOverflow.ellipsis,
                //     ),
                //     leading: Row(
                //       mainAxisSize: MainAxisSize.min,
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       children: [
                //         GestureDetector(
                //           onTap: () {
                //             final products =
                //                 ProductService().selectedItems$.valueOrNull ??
                //                     [];
                //             products.remove(item);
                //             ProductService().selectedItems$.add(products);
                //           },
                //           child: Container(
                //             decoration: BoxDecoration(
                //               color: Colors.grey.shade100,
                //               borderRadius: BorderRadius.circular(100),
                //             ),
                //             child: const Icon(Icons.remove),
                //           ),
                //         ),
                //         const SizedBox(width: 8),
                //         Container(
                //           width: 50,
                //           child: AppImageProvider(item.thumbnailImage),
                //         ),
                //       ],
                //     ),
                //     subtitle: Text(
                //       item.description ?? '',
                //       maxLines: 2,
                //       overflow: TextOverflow.ellipsis,
                //     ),
                //     trailing: Column(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         Text(price(item)),
                //         const SizedBox(width: 4),
                //         TextButton(
                //           onPressed: () {
                //             launchUrl(
                //               Uri.parse(item.url),
                //               mode: LaunchMode.externalApplication,
                //             );
                //           },
                //           child: const Text('Buy now'),
                //         ),
                //       ],
                //     ),
                //   ),
                // );
              });
        },
      ),
    );
  }

  String price(Item product) {
    final val = product.price ?? product.listPrice;
    if (val == null) return '\$ 15.34';
    return '${val.currency} ${val.value}';
  }
}
