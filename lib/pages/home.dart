import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:travelui/data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CarouselController imageCarouselController = CarouselController();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(
              left: Get.width * .05,
              right: Get.width * .05,
              top: Get.height * .018),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Travela',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Skip',
                      style: TextStyle(color: Colors.black, fontSize: 12))
                ],
              ),
              SizedBox(height: Get.height * .06),
              Text(
                'Travel \nOver the World',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.5),
              ),
              SizedBox(height: Get.height * .06),
              Container(
                height: Get.height * .45,
                child: CarouselSlider.builder(
                  carouselController: imageCarouselController,
                  itemCount: imageList.length,
                  options: CarouselOptions(
                    height: Get.height * .5,
                    viewportFraction: .7,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    scrollPhysics: BouncingScrollPhysics(),
                  ),
                  itemBuilder: (context, index, i) {
                    return FadeInImage.memoryNetwork(
                      width: Get.width,
                      placeholder: kTransparentImage,
                      image: imageList[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),

                SizedBox(height: Get.height * .02),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Get.height * .04, right: Get.height * .04),
                  child: Text(
                    'Great experience tour from our recommendation places',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  ),
                ),
              ),
              SizedBox(height: Get.height * .06),
              Container(
                width: Get.width,
                height: Get.height * .05,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.grey[800],
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  child: Text(
                    'Find Places',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
