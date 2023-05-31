import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final CarouselController _carouselController = CarouselController();

  final List<String> _images = [
    'https://picsum.photos/seed/picsum/200/300',
    'https://picsum.photos/200/300?grayscale',
    'https://picsum.photos/200/300/?blur',
    'https://picsum.photos/id/870/200/300?grayscale&blur=2',
    'https://picsum.photos/id/237/200/300',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: CarouselSlider(
        items: _images.map((imageURL) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: Image.network(
                  imageURL,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
        carouselController: _carouselController,
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          onPageChanged: (index, reason) {
            setState(() {});
          },
        ),
      ),
    );
  }
}
