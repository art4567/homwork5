class Project {
  final String title; //ชื่อโครงการขอรับบริจาค
  final String description; //คำอธิบายโครงการ
  final int targetAmount; //ยอดเงินขอรับบริจาค
  final int duration; //ระยะเวลาโครงการ
  final int receiveAmount; //ยอดเงินรับบริจา่ค
  final int donateCount; //จำนวนคนที่บริจาคเงินเข้ามา
  final String imageURL; //URL ของภาพ cover
  final String descriptionlong; // คำอธิบายยาว
  final String time; //ระยะเวลา
  final String place; //พื้นที่จัด
  Project( {
    required this.title,
    required this.description,
    required this.targetAmount,
    required this.duration,
    required this.receiveAmount,
    required this.donateCount,
    required this.imageURL,
    required this.descriptionlong,
    required this.time,
    required this.place,
  });
}
//ctrl+alt+l = reformat code
//var p = Project();
//ctrl+p จะขึ้นมาว่าในวงเล็บเราจะใส่ค่าพารามิเตอร์ค่าไหนบ้าง
//ไม่ควรมีค่าว่างในการใส่ข้อมูลมาแต่ละครั้ง การแก้ก็คือ กำหนดค่าเริ่มต้นให้แต่ละตัวแปรเป็นค่าเริ่มต้น หรือ required นำหน้าแต่ละตัวแปลใน con
//การสร้าง generate constructor ---> เลือก code ---> generate (alt+insert)
