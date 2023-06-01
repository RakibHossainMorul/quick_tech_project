import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';
import '../location/location_screen.dart';
import '../reusable_widget/product_widget.dart';
import 'slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //Adding Scrolling Text
              Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: Text(
                        'Notice:',
                        style: TextStyle(
                            backgroundColor: Colors.blue,
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  Flexible(
                    flex: 4,
                    child: TextScroll(
                      'আসসালামু আলাইকুম। alleverythingbd.com-এ আপনাকে স্বাগতম। সবকিছুই হাতের মুঠোয়। হেল্পলাইন নম্বর 01733 000 373',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                      pauseBetween: Duration(milliseconds: 1000),
                      mode: TextScrollMode.endless,
                    ),
                  ),
                ],
              ),
              //Adding Search Bar
              Padding(
                padding: const EdgeInsets.only(left: 9, top: 5, right: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          border: Border.all(
                            color: Colors.amber, // Set the color of the border
                            width: 2, // Set the width of the border
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SizedBox(
                            //for reduce input field height
                            height: 48,
                            child: TextField(
                              controller: _searchController,
                              decoration: InputDecoration(
                                hintText: 'What are you looking for?',
                                // Add a clear button to the search bar
                                suffixIcon: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors
                                        .amber, // Set the background color
                                    shape: BoxShape
                                        .circle, // Optional: Set the shape of the button
                                  ),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.search,
                                      size: 40,
                                    ),
                                    color: Colors
                                        .white, // Set the color of the icon
                                    onPressed: () {},
                                  ),
                                ),
                                border: InputBorder
                                    .none, // Remove the default border
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Adding Category Secton
              Padding(
                padding: const EdgeInsets.only(right: 40, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LocationScreen()),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ),
                          SizedBox(
                              width:
                                  10), // Add some spacing between the icon and text
                          Text(
                            'Select Location',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Icon(
                            Icons.category,
                            color: Colors.blue,
                          ),
                          SizedBox(
                              width:
                                  10), // Add some spacing between the icon and text
                          Text(
                            'Select Category',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //List of feature added in the below
              Expanded(
                child: ListView(
                  children: [
                    //Adding slider widget
                    const SliderScreen(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Nilam Ad",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 15),
                          Row(
                            children: const [
                              Icon(
                                Icons.list,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                  width:
                                      5), // Add some spacing between the icon and text
                              Text('View More',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 365,
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        primary: false,
                        padding: const EdgeInsets.only(
                            top: 2, left: 5, right: 5, bottom: 5),
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7,
                        crossAxisCount: 2,
                        children: const <Widget>[
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Member Ad",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 15),
                          Row(
                            children: const [
                              Icon(
                                Icons.list,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                  width:
                                      5), // Add some spacing between the icon and text
                              Text('View More',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 365,
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        primary: false,
                        padding: const EdgeInsets.only(
                            top: 2, left: 5, right: 5, bottom: 5),
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7,
                        crossAxisCount: 2,
                        children: const <Widget>[
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "All Restaurant Offer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 15),
                          Row(
                            children: const [
                              Icon(
                                Icons.list,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                  width:
                                      5), // Add some spacing between the icon and text
                              Text('View More',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 365,
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        primary: false,
                        padding: const EdgeInsets.only(
                            top: 2, left: 5, right: 5, bottom: 5),
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7,
                        crossAxisCount: 2,
                        children: const <Widget>[
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "All Shop Discount",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 15),
                          Row(
                            children: const [
                              Icon(
                                Icons.list,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                  width:
                                      5), // Add some spacing between the icon and text
                              Text('View More',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 365,
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        primary: false,
                        padding: const EdgeInsets.only(
                            top: 2, left: 5, right: 5, bottom: 5),
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7,
                        crossAxisCount: 2,
                        children: const <Widget>[
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "New Ad",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 15),
                          Row(
                            children: const [
                              Icon(
                                Icons.list,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                  width:
                                      5), // Add some spacing between the icon and text
                              Text('View More',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 365,
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        primary: false,
                        padding: const EdgeInsets.only(
                            top: 2, left: 5, right: 5, bottom: 5),
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7,
                        crossAxisCount: 2,
                        children: const <Widget>[
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                          ProductViewWidget(
                            imageUrl:
                                'https://picsum.photos/seed/picsum/200/300',
                            date: '22-05-2023',
                            price: 1500,
                            title: "Product Title",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
