
 import 'package:flutter/material.dart';
 import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'history.dart';
import 'listitem.dart';


class MyApp extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jehad',
      debugShowCheckedModeBanner: false,
      home:  Home(),
    );
  }
}
class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List name=[
    'হাসপাতাল','ক্লিনিক','ডায়গনস্টিক','বিশেষজ্ঞ ডাক্তার','হোমিও ডাক্তার','পশু চিকিৎসক','উপজেলা ডাক্তার','এম্বুলেন্স সেবা','ফার্মেসিসমূহ','ব্লাড ডোনার','ব্লাড সংগঠন','সোশ্যাল গ্রুপ',

    'থানা পুলিশ','ফায়ার সার্ভিস','আইনজীবী','সাংবাদিক','জরুরী সেবা','সরকারি তথ্য','জরুরী নাম্বার','বিদ্যুৎ অফিস','ব্যাংকিং সেবা'

  ];
  List picture=[
    'assets/hospital.png', 'assets/clinik.png', 'assets/dayabedx.png',
    'assets/doctor.png','assets/homios.png','assets/posodr.png',
   'assets/upojelaa.png', 'assets/ambulence.png', 'assets/farmesi.png',
    'assets/donar.png', 'assets/bdgrp.png', 'assets/socialgp.png',
    'assets/pulice.png', 'assets/fireservis.png', 'assets/aingb.png',
    'assets/sangbadik.png', 'assets/joruruseba.png', 'assets/sorkaritotto.png',
    'assets/jorurenumber.png','assets/biddut.png','assets/banking.png',
  ];
  final myitems =[
    Image.asset('assets/bhurungamari.jpeg'),
    Image.asset('assets/bhurungamari2.jpeg'),
    Image.asset('assets/bhurungamari4.jpeg'),
    Image.asset('assets/bhurungamari5.jpeg'),
    Image.asset('assets/bhurungamari6.jpeg'),
    Image.asset('assets/bhurungamari7.jpeg'),
    Image.asset('assets/bhurungamari8.jpeg'),
    Image.asset('assets/bhurungamari9.jpeg'),
    Image.asset('assets/bhurungamari10.jpeg'),

  ];
  int myCorectindex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ভুরুঙ্গামারি অনলাইন সেবা',style: TextStyle(fontSize:25,color: Colors.white,fontWeight:FontWeight.bold,),),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider(options: CarouselOptions(
                  autoPlay: true,
                  height:200,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  aspectRatio:2.0,
                  onPageChanged: (index,reason){
                    setState(() {
                      myCorectindex =index;
                    });
                  }
                ),
                items: myitems,),
                AnimatedSmoothIndicator(activeIndex: myCorectindex,
                count:  myitems.length,
                  effect:WormEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    spacing: 7,
                    dotColor: Colors.green,
                    activeDotColor: Colors.black,
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ],
            ),
          ),SizedBox(
            height: 40,
            child: Container(
              width: double.infinity,
              height: 10,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListTile(
                  title: Text('অনলাইন সেবা সমূহ',style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold),),
                  leading: Icon(Icons.arrow_circle_right_sharp,size: 35,color: Colors.blue,),
                ),
              ),
            ),
          ),


          SizedBox(
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1),
                itemCount: picture.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 20,
                      child: Container(
                        width: 20,
                        height:20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 6,

                            ),
                          ],


                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(picture[index],width: 50,),
                            Text(name[index],style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          ],
                        ),


                      ),
                    ),
                  );
                },
              ),
            ),
          ),

        ],
      ),
      backgroundColor: Colors.white,

    );
  }
}

