import 'dart:html';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/project.dart';

class ProjectDetails1Page extends StatelessWidget {
  final Project project;

  const ProjectDetails1Page({Key? key, required this.project})
      : super(key: key); //ต้องใส่ required ข้างหน้า เพราะตัวแปร final

  @override
  Widget build(BuildContext context) {
    var percenText = ((project.receiveAmount / project.targetAmount) * 100)
        .toStringAsFixed(0);
    var percent = int.tryParse(percenText);
    return Scaffold(
      appBar: AppBar(
        title: Text(project.title),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(0.2),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        project.title,
                        style: TextStyle(fontSize: 40.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Image.asset(
                      project.imageURL,
                      width: 500.0,
                      height: 200.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        project.descriptionlong,
                        style: TextStyle(fontSize: 15.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 250.0),
                      child: Text(project.time),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 250.0),
                      child: Text(project.place),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 200.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'ยอดบริจาคขณะนี้ \n' +
                                project.receiveAmount.toString() +
                                ' บาท\n',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 200.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //เอาตัวแรกกับตัวท้ายไปไว้หัวกับท้ายบรรทัด
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // ค่า default คือ center
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //ค่า default คือ .center
                            children: [
                              Text(
                                'เป้าหมาย',
                              ),
                              Text(
                                project.targetAmount.toString() + ' บาท',
                              ),
                            ],
                          ),
                          // แปลงจากตัวแปรชนิด int ให้เป็น string
                          //Text('${duration.toString()} วัน',style: descriptionStyle,),
                          Text(
                            ((project.receiveAmount / project.targetAmount) *
                                        100)
                                    .toStringAsFixed(0) +
                                ' %',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 200.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: percent!,
                            child: Container(
                              height: 10.0,
                              width: 100.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              //margin ระยะห่าง มี horizontal / vertical
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            flex: 100 - percent!,
                            child: Container(
                              height: 10.0,
                              width: 200.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              //margin ระยะห่าง มี horizontal / vertical
                              color: Colors.grey, //Color(0xFF)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 200.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //เอาตัวแรกกับตัวท้ายไปไว้หัวกับท้ายบรรทัด
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // ค่า default คือ center
                        children: [
                          Text(
                            project.duration.toString() + ' วัน',
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.person_outline_outlined,
                                size: 14,
                              ),
                              Text(
                                '${project.donateCount} คน',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.redAccent,
                        child: Column(
                          children: [
                            Icon(Icons.favorite),
                            TextButton(
                              onPressed: () {},
                              child: Text('ร่วมบริจาค'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.redAccent,
                        child: Column(
                          children: [
                            Icon(Icons.add_shopping_cart),
                            TextButton(
                              onPressed: () {},
                              child: Text('เพิ่มลงในตะกร้า'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(height: 1,color: Colors.black54,),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('แชร์ให้เพื่อน'),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(FontAwesomeIcons.line),Icon(FontAwesomeIcons.facebook),Icon(FontAwesomeIcons.twitter)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
