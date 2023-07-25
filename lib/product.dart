// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: _appbar(),
        body: Container(
          color: Colors.grey.shade200,
          margin: EdgeInsets.all(2),
          padding: EdgeInsets.all(2),
          child: ListView(
            children: [
              item(
                context,
                img: 'assets/img/farh.jpeg',
                city: 'أبها',
                commentCount: '2',
                data: 'زل ملكي كنب ملكي زل ملكي أجار للأجار و جلسات أرضيه',
                name: 'saeeeed115',
                time: 'الآن',
                userImg: 'assets/img/user.png',
              ),
              item(
                context,
                img: 'assets/img/car.png',
                city: 'المدينة',
                commentCount: '20',
                data: 'كامري ٢٠٠٩',
                name: 'المدينة ال',
                time: 'الآن',
                userImg: 'assets/img/user.png',
              ),
              item(
                context,
                img: 'assets/img/fostan.jpeg',
                city: 'الطايف',
                commentCount: '2',
                data: 'فستان جديد لم يلبس',
                name: 'ixxllo',
                time: 'الآن',
                userImg: 'assets/img/user.png',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // AppBar _appbar() => AppBar();
}

Widget item(_,
    {required String img, data, commentCount, name, time, city, userImg}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 4),
    width: double.infinity,
    height: 170,
    color: Colors.white,
    child: SizedBox(
      height: MediaQuery.of(_).size.height / 4,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        part1(img),
        part2(data, commentCount, name, userImg, time, city),
      ]),
    ),
  );
}

Expanded part1(String img) {
  return Expanded(
    flex: 1,
    child: Container(
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Image.asset(
        img,
      ),
    ),
  );
}

Expanded part2(data, commentConunt, name, userImg, time, city) {
  return Expanded(
    flex: 2,
    child: Container(
        padding: EdgeInsets.all(4),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _align(data),
            _column1(commentConunt, time, city, name, userImg)
          ],
        )),
  );
}

Align _align(data) {
  return Align(
    alignment: Alignment.topRight,
    child: Text(
      data,
      style: TextStyle(
          color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),
      textAlign: TextAlign.right,
    ),
  );
}

Column _column1(commentConunt, time, city, name, userImg) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          _row0(commentConunt),
          SizedBox(
            height: 3,
          ),
          _row1(time, city, name, userImg)
        ],
      )
    ],
  );
}

Row _row1(time, city, name, userImg) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _row2(time, city),
      _row3(name, userImg),
    ],
  );
}

Row _row3(name, userImg) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(
          name,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      ),
      SizedBox(
        width: 6,
      ),
      SizedBox(
        height: 35,
        width: 35,
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade100,
          child: Image.asset(userImg),
        ),
      )
    ],
  );
}

Row _row2(time, city) {
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            city,
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.start,
          ),
        ],
      ),
      SizedBox(
        width: 8,
      ),
      Column(
        children: [
          Icon(
            Icons.replay_circle_filled,
            color: Colors.grey,
          ),
          SizedBox(
            height: 4,
          ),
          Icon(Icons.pin_drop, color: Colors.grey),
        ],
      ),
    ],
  );
}

Row _row0(String commentConunt) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      InkWell(
        onTap: () {},
        child: Container(
            margin: EdgeInsets.only(left: 2),
            child: Icon(
              Icons.comment,
              color: Colors.green,
            )),
      ),
      InkWell(
        onTap: () {},
        child: Container(
            margin: EdgeInsets.only(left: 2, right: 2),
            child: Icon(
              Icons.comment,
            )),
      ),
      Text(
        commentConunt,
        style: TextStyle(fontSize: 16, color: Colors.grey),
      )
    ],
  );
}
