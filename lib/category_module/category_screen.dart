import 'package:flutter/material.dart';
import '../home_module/home_screen.dart';
import '../reusable_widget/category_view_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse by Category'),
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          ),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 140,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: GridView.count(
                //  physics: const NeverScrollableScrollPhysics(),
                primary: false,
                padding:
                    const EdgeInsets.only(top: 2, left: 5, right: 5, bottom: 5),
                crossAxisSpacing: 7,
                mainAxisSpacing: 7,
                crossAxisCount: 3,
                children: const <Widget>[
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                  ProductCategoryCard(
                    imageUrl: 'https://picsum.photos/seed/picsum/200/300',
                    title: "Product Title",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
