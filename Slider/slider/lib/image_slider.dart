import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Image_Slider extends StatefulWidget {
  const Image_Slider({Key? key}) : super(key: key);

  @override
  _Image_SliderState createState() => _Image_SliderState();
}

class _Image_SliderState extends State<Image_Slider> {
  final List<String> imageList = [
    "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Slider"),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: CarouselSlider.builder(
          itemCount: imageList.length,
          options: CarouselOptions(
            height: 300,
            aspectRatio: 5.0,
            reverse: false,
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 1),
            autoPlayAnimationDuration: const Duration(seconds: 3),
          ),
          itemBuilder: (context, i, id) {
            return GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.yellow)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    imageList[i],
                    width: 500,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                print("Mizan");
              },
            );
          },
        ),
      ),
    );
  }
}
