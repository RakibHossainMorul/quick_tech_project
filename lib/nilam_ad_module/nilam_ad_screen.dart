import 'package:flutter/material.dart';
import '../home_module/home_screen.dart';
import '../home_module/slider_widget.dart';
import '../reusable_widget/product_widget.dart';

class NilamAdScreen extends StatelessWidget {
  const NilamAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nilam Ad'),
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          ),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: SliderScreen(),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                child: GridView.count(
                  //  physics: const NeverScrollableScrollPhysics(),
                  primary: false,
                  padding: const EdgeInsets.only(
                      top: 2, left: 5, right: 5, bottom: 5),
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 7,
                  crossAxisCount: 2,
                  children: const <Widget>[
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                    ProductViewWidget(
                      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                      date: 'Bid: 0',
                      price: 1500,
                      title: "Product Title",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
