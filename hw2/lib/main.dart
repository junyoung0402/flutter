// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:hw2/ProductDetailPage.dart';
import 'package:hw2/cartModel.dart';
import 'package:hw2/fruit_image.dart';
import 'package:hw2/product.dart';
import 'package:hw2/cart_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => cartModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: ProductListPage(),
      ),
    );
  }
}

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final List<Product> _list = [
    Product(
      id: 0,
      title: 'Apple',
      summary: 'Fresh red apple',
      price: 1200,
      desc: '빨간색을 띈 사과',
      color: Colors.red,
    ),
    Product(
      id: 1,
      title: 'Banana',
      summary: 'Sweet banana',
      price: 800,
      desc: 'Rich in potassium and perfect for breakfast',
      color: Colors.yellow,
    ),
    Product(
      id: 2,
      title: 'Orange',
      summary: 'Citrus orange',
      price: 1500,
      desc: 'Vitamin C rich orange for healthy lifestyle',
      color: Colors.orange,
    ),
    Product(
      id: 3,
      title: 'Grapes',
      summary: 'Seedless grapes',
      price: 2000,
      desc: 'Sweet and seedless grapes perfect for snacking',
      color: Colors.purple,
    ),
    Product(
      id: 4,
      title: 'Watermelon',
      summary: 'Large watermelon',
      price: 5000,
      desc: 'Perfect for summer, juicy and refreshing watermelon',
      color: Colors.green,
    ),
    Product(
      id: 5,
      title: 'Strawberry',
      summary: 'Fresh strawberry',
      price: 2500,
      desc: 'Sweet and sour strawberry rich in vitamin C',
      color: Colors.pink,
    ),
    Product(
      id: 6,
      title: 'Peach',
      summary: 'Soft peach',
      price: 1800,
      desc: 'Soft and fragrant peach with sweet taste',
      color: Colors.yellow,
    ),
    Product(
      id: 7,
      title: 'Mango',
      summary: 'Tropical mango',
      price: 3000,
      desc: 'Sweet tropical mango full of flavor',
      color: Colors.amber,
    ),
    Product(
      id: 8,
      title: 'Blueberry',
      summary: 'Healthy blueberry',
      price: 3500,
      desc: 'Antioxidant-rich blueberry for healthy diet',
      color: Colors.blue,
    ),
    Product(
      id: 9,
      title: 'Pineapple',
      summary: 'Juicy pineapple',
      price: 4000,
      desc: 'Tropical and juicy pineapple with sweet taste',
      color: Colors.brown,
    ),
  ];
  String fruit_name = '';

  var image_path = fruit_image();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fruit sort page'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartList()),
              );
            },
            icon: Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
      body: Center(
        child: CardSwiper(
          cardBuilder:
              (
                context,
                index,
                horizontalOffsetPercentage,
                verticalOffsetPercentage,
              ) {
                var product = _list[index];
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetailPage(product: product),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: product.color,
                          ),

                          child: Column(
                            children: [
                              const SizedBox(height: 5),
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(10),
                                child: Image.asset(
                                  image_path.return_image_path(product.title),
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                product.title,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(product.summary),
                              Text(product.price.toString()),
                              ElevatedButton(
                                onPressed: () {
                                  Provider.of<cartModel>(
                                    context,
                                    listen: false,
                                  ).addToCart(product);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        '장바구니에 ${product.title}이 추가 되었습니다.',
                                      ),
                                      duration: Duration(seconds: 1),
                                    ),
                                  );
                                },
                                child: Text('장바구니에 담기'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
          cardsCount: _list.length,
        ),
      ),
    );
  }
}
