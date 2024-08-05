import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:insta_store/cart_screen.dart';
import 'package:insta_store/models/hive_helper.dart';
import 'package:insta_store/models/item.dart';
import 'package:insta_store/models/store/pagination_bloc.dart';
import 'package:insta_store/models/store/store_pagination.dart';
import 'package:insta_store/product_details_screen.dart';
import 'package:insta_store/products_service.dart';
import 'package:insta_store/store_repository.dart';
import 'package:insta_store/widgets/image_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await HiveHelper.deleteWholeDatabase();
  await HiveHelper().registerAdapters();
  await ProductRepository().initialize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //await ProductService().syncDataToDB();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Insta Store',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.shopping_bag_rounded),
                StreamBuilder(
                  stream: ProductService().selectedItems$.stream,
                  builder: (context, snapshot) {
                    return Text('${snapshot.data?.length ?? ''} ');
                  },
                ),
              ],
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CartScreen();
              }));
            },
          ),
          body: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with PaginationBloc {
  @override
  final PagingController<int, Item> pagingController =
      PagingController<int, Item>(
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
      ProductRepository().itemsPagination;

  @override
  fetchPage(int pageKey) async {
    await ProductRepository().fetchProducts(pageKey);
  }

  Future<void> initPagingState() async {
    await setupPagination();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insta Store'),
      ),
      body: PagedGridView(
        showNewPageErrorIndicatorAsGridChild: false,
        showNewPageProgressIndicatorAsGridChild: false,
        showNoMoreItemsIndicatorAsGridChild: false,
        pagingController: pagingController,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        builderDelegate: PagedChildBuilderDelegate<Item>(
          itemBuilder: (context, item, index) {
            final image = item.thumbnailImage;
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsScreen(product: item),
                  ),
                );
              },
              child: AppImageProvider(image),
            );
          },
          newPageErrorIndicatorBuilder: (context) => const SizedBox(),
          animateTransitions: true,
          transitionDuration: const Duration(
            milliseconds: 500,
          ),
        ),
      ),
    );
  }
}
