// ignore_for_file: unnecessary_string_interpolations, non_constant_identifier_names, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Cat extends StatefulWidget {
  const Cat({super.key});

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(),
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        item('سيارات', 'assets/img/car.png'),
                        item('دبابات', 'assets/img/moto.png'),
                        item('لوحات مميزه', 'assets/img/plate.png'),
                        item('سطحه', 'assets/img/wench.png'),
                        item('سيارات مصدومة', 'assets/img/accident.png'),
                        item('تعليم قيادة', 'assets/img/car.learn1.png'),
                        item('جوالات', 'assets/img/phone.png'),
                        item('لابتوب', 'assets/img/laptop.png'),
                        item('ارقام مميزة', 'assets/img/sim.png'),
                        item('حيوانات و طيور', 'assets/img/ani.png'),
                        item('العاب إلكترونيه', 'assets/img/game.png'),
                        item('وظائف', 'assets/img/jobs.png'),
                        // item('',''),
                        // item('',''),
                        // item(),
                        // item(),
                        // item(),
                        // item(),
                        // item(),
                      ],
                    )
                  ],
                ),
              ),
            ),
            cats(),
          ],
        ),
      ),
    );
  }

  item(String title, img) {
    return Container(
      // color: Colors.grey.shade200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Text(
          '$title ',
          style: TextStyle(color: Colors.black),
        ),
        Container(
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        )
      ]),
    );
  }

  Expanded cats() {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.grey.shade300,
        child: ListView(
          children: [
            text_button('موصي به'),
            text_button('سيارات'),
            text_button('عقارات'),
            text_button('اجهزه'),
            text_button('حيوانات و مواشي و طيور'),
            text_button('اثاث'),
            text_button('مستلزمات شخصيه'),
            text_button('خدمات'),
            text_button('وظائف'),
            text_button('العاب و ترفيه'),
            text_button('اطعمه و مشروبات'),
            text_button('مكتبه و فنون'),
            text_button('صيد و رحلات'),
            text_button('حفلات و مناسبات'),
          ],
        ),
      ),
    );
  }

  text_button(String text) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          '$text',
          textAlign: TextAlign.end,
          style: const TextStyle(
              color: Colors.black,
              // fontSize: 13,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
    // return InkWell(
    //   onTap: () {},
    //   child: Container(
    //       // color: Colors.black,
    //       width: double.infinity,
    //       margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
    //       child: Text(
    //         '$text',
    //         textAlign: TextAlign.end,
    //         style: const TextStyle(
    //             color: Colors.black,
    //             // fontSize: 13,
    //             fontWeight: FontWeight.bold),
    //       )),
    // );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.blue.shade600,
      centerTitle: true,
      title: const Text(
        'الاقسام الرئيسيه',
        textAlign: TextAlign.end,
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_forward, color: Colors.white),
        )
      ],
    );
  }
}
