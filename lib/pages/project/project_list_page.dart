import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:intl/intl.dart';
import 'package:taejai/pages/project/project1_detail_pages.dart';

class ProjectListPage extends StatefulWidget {
  const ProjectListPage({Key? key}) : super(key: key);

  @override
  State<ProjectListPage> createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  List<Project> projects = [
    Project(
      title:'อิ่มท้องน้องพิเศษ',
      description: 'ชวนมอบมื้ออาหารกลางวันให้เด็กพิเศษ 240 คน',
      targetAmount: 119350,
      duration: 22,
      receiveAmount: 10000,
      donateCount: 13,
      imageURL: 'assets/images/project01.jpg',
      descriptionlong: 'ชวนมอบมื้ออาหารกลางวันให้เด็กพิเศษ 240 คนในมูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ ที่ต้องเผชิญค่าใช้จ่ายด้านอาหารกลางวันหลักแสนต่อเดือน เงินจำนวน 3,500 บาท สามารถเลี้ยงอาหารทุกคนได้ 1 มื้อ \n\n',
      time: 'ระยะเวลาโครงการ:06 ก.พ. 2566 ถึง 06 มี.ค. 2566 พื้นที่ดำเนินโครงการ',
      place: 'ระบุพื้นที่: ตำบลพลูตาหลวง อำเภอสัตหีบ จังหวัดชลบุรี (มูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ)',
    ),
    Project(
      title:'I’m ABLE “โอกาสจากพี่ ช่วยหนูได้เรียนร่วม"',
      description:
          'ระดมทุนการศึกษา 1 ปีให้กับเด็กนักเรียนพิการจำนวน 150 คนๆละ 4000บาท',
      targetAmount: 825000,
      duration: 138,
      receiveAmount: 400000,
      donateCount: 13,
      imageURL: 'assets/images/project02.jpg',
      descriptionlong: 'ระดมทุนการศึกษา 1 ปีให้กับเด็กนักเรียนพิการจำนวน 150 คนๆ ละ 4,000 บาท ให้กับเด็กนักเรียนพิการที่กำลังศึกษาอยู่ในระดับชั้นประถมศึกษาถึงมัธยมศึกษาในจังหวัดต่างๆ \nของภาคตะวันออกเฉียงเหนือ ภาคตะวันตกและภาคใต้ที่มีความพิการทางร่างกายหรือพัฒนาการช้าแต่สามารถสื่อสารและเรียนหนังสือได้ \nเพื่อส่งเสริมเด็กนักเรียนพิการเหล่านั้นได้เรียนร่วมในโรงเรียนปกติกับนักเรียนทั่วไป \nเสริมสร้างพัฒนาการทางร่างกาย สติปัญญา ส่งเสริมการเรียนรู้การเข้าสังคมและช่วยเหลือตนเองในสถานการณ์ต่างๆโดยไม่รู้สึกว่าตนเองเป็นภาระของครูและเพื่อนๆในโรงเรียน',
      time: '\nระยะเวลาโครงการ:01 ก.พ. 2566 ถึง 30 มิ.ย. 2566พื้นที่ดำเนินโครงการ',
      place: '\nระบุพื้นที่: ภาคตะวันออกเฉียงเหนือ ภาคตะวันตกและภาคใต้ของประเทศไทย',
    ),
    Project(
      title:'พาพญาแร้งที่สูญพันธุ์จากธรรมชาติกลับคืนป่าเมืองไทย',
      description:
          'เกือบ 30 ปี ที่พญาแร้งหายไปจากป่าเมืองไทย ในวันนี้พวกเราพยายามวางแผนเพาะพันธุ์พญาแร้งที่เหลืออยู่ในกรงเลี้ยงจำนวน 6 ตัว',
      targetAmount: 299200,
      duration: 322,
      receiveAmount: 200000,
      donateCount: 13,
      imageURL: 'assets/images/project03.jpg',
      descriptionlong:'เกือบ 30 ปี ที่พญาแร้งหายไปจากป่าเมืองไทย ในวันนี้พวกเราพยายามวางแผนเพาะพันธุ์พญาแร้งที่เหลืออยู่ในกรงเลี้ยงจำนวน 6 ตัว \nเพื่อหวังว่าสักวันในผืนป่าประเทศไทยจะมีพญาแร้งโผบินอีกครั้ง \nแต่โจทย์นี้ไม่ง่าย เพราะการจะทำให้สัตว์ที่สูญพันธุ์จากธรรมชาติกลับคืนมา ยากกว่าการทำให้มันหายไป  พื้นที่ดำเนินโครงการ',
      time: '\nระยะเวลาโครงการ:01 ก.พ. 2566 ถึง 31 ม.ค. 2567',
      place: '\nระบุพื้นที่: ตำบลลานสัก อำเภอลานสัก จังหวัดอุทัยธานี (เขตรักษาพันธุ์สัตว์ป่าห้วยขาแข้งและพื้นที่โดยรอบ),ตำบลไชยมงคล อำเภอเมืองนครราชสีมา จังหวัดนครราชสีมา (สวนสัตว์นครราชสีมา)',
    ),
  ]; //ตัวแปลเก็บข้อมูลหลายๆโปรเจค

  /*var p1 = Project(title: 'xx', description: 'xx', targetAmount: 123, duration: 456);
  var p2 = Project(title: 'xx', description: 'xx', targetAmount: 123, duration: 456);*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เทใจ'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        //.builder เป็น name con ชื่อไม่ต้องเหมือนชื่อ class
        itemCount: projects.length, //นับขนาดของจำนวนใน list ที่อยากโชว์ออกมา
        itemBuilder: (BuildContext context, int index) {
          var project = projects[index]; //ตัวแปรมีค่าเท่ากับ projects ตัวที่ index ใน List
          var title = project.title;
          var des = project.description;
          var amount = project.targetAmount;
          var duration = project.duration;
          var descriptionStyle =
              const TextStyle(fontSize: 12.0, color: Colors.black54);
          var myAmountStyle = const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black54);

          var formatter = NumberFormat('#,###,000'); //เอาไว้สำหรับจัดการฟอแมทของเลขที่ต้องมี , คั้นระหว่างตัวเลข
          var target = formatter.format(project.targetAmount);
          var percenText =((project.receiveAmount / project.targetAmount) * 100).toStringAsFixed(0); //กำหนดทศนิยมจากค่า int
          var percent = int.tryParse(percenText); //ปรับจาก String ---> int โดยปัดทศนิยมทิ้ง
          var deslong = project.descriptionlong;
          return Card(
            child: InkWell(
              onTap: (){
                _handleClickProjectItem(projects[index]); //เรียกใช้ฟังก์ชันที่จะเรียกใช่หลังจากกดไปแล้ว
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(project.imageURL,width: 60.0,height: 60.0,
                        fit: BoxFit.cover,
                        ),
                        //Image.network(project.imageURL,width:60.0,height:60.0,),
                        /*Container(
                          width: 60.0,
                          height: 60.0,
                          color: Colors.red,
                        ),*/
                        const SizedBox(width: 10.0,),
                        Column(
                          children: [
                            Text(title),
                            const SizedBox(height: 8.0,), //เว้นระยะห่างระหว่างข้อความ
                            Text(des, style: TextStyle(fontSize: 12.0, color: Colors.black54,))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Row(
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
                              style: descriptionStyle,
                            ),
                            Text(
                              target + ' บาท',
                              style: myAmountStyle,
                            ),
                          ],
                        ),
                        // แปลงจากตัวแปรชนิด int ให้เป็น string
                        //Text('${duration.toString()} วัน',style: descriptionStyle,),
                        Text(
                          '$percenText %',
                          style: descriptionStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: percent!,
                          child: Container(
                            height: 10.0,
                            width: 100.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 0.0),//margin ระยะห่าง มี horizontal / vertical
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                          flex: 100 - percent!,
                          child: Container(
                            height: 10.0,
                            width: 200.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 0.0),//margin ระยะห่าง มี horizontal / vertical
                            color: Colors.grey, //Color(0xFF)
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //เอาตัวแรกกับตัวท้ายไปไว้หัวกับท้ายบรรทัด
                      crossAxisAlignment: CrossAxisAlignment.end,
                      // ค่า default คือ center
                      children: [
                        Text(
                          '${duration.toString()} วัน',
                          style: descriptionStyle,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.person_outline_outlined,
                              size: 14,
                            ),
                            Text(
                              '${project.donateCount} คน',
                              style: descriptionStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }, //เป็นฟังก์ชันที่เราจะส่งให้มันกลับมา callback function ---> ส่งค่าอะไรกลับไปหลังจากที่มีการส่งค่า index มา ---> call ตามจำนวน length ของ List
      ),
    );
  }

  void _handleClickProjectItem(Project p){ //(int index)
    //var p = projects[index];
    print(p.targetAmount.toString());

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProjectDetails1Page (project: p,)), //เอา const ข้างหน้าออกถ้าไมไ่ด้ส่งค่าแบบ literal ลงไป
    );
  }
}

//ใน itemBuilder
//return Text(projects[index].title); //ค่าของแต่ละ index ใน List
//if (index==0) return Text('Hello'); --> อันที่0
//return Text('World'); --> อันที่0

//การติดตั้ง library เพิ่ม ให้กดที่ไฟล์ pubspec.yaml แล้วไปที่ dependencies แล้วก็ก็อปข้อความลง

//การแทนที่ทุกๆคำในการแก้ไขครั้งเดี่ยวคือ ctrl + f6

//การเพิ่มไฟล์ ให้กดที่ไฟล์ pubspec.yaml แล้วไปที่ assets แล้วก็ก็อปที่อยู่ไฟล์รูปภาพลงมา
