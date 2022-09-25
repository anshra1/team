import 'package:flutter/material.dart';
import 'package:team_colab/main.dart';

class AnshWorkSpace extends StatelessWidget {
  const AnshWorkSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This Button is Now Working Try'),
          leading: GestureDetector(child: Icon(Icons.arrow_back),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },),
          backgroundColor: Colors.teal.shade500,
        ),
        backgroundColor: Colors.white,
        body: Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upcoming',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                CardWidget(
                  main_title: 'TalentHack 2.0',
                  exam_time: 'Tue, Sep 13, 2022 12:00 AM',
                  result_time: 'Sat Sep 24, 2022 2:00 PM',
                  no_of_students: '5',
                  time_left: '9d:22h:38m:11s left',
                ),
                SizedBox(
                  height: 15,
                ),
                CardWidget(
                  main_title: 'TalentHack',
                  exam_time: 'Tue, Sep 13, 2022 12:00 AM',
                  result_time: 'Sat Sep 15, 2022 1:01 PM',
                  no_of_students: '5',
                  time_left: '21h:39m:44s left',
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Released',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                CardWidget2(
                  main_title: 'Contest 201',
                  exam_time: 'Wed, Sep 7, 2022 12:00 AM',
                  result_time: 'Thu, Sep 15, 2022 1:01 PM',
                  no_of_students: '5',
                  time_left: '21h:39m:44s left',
                ),
                SizedBox(
                  height: 15,
                ),
                CardWidget2(
                  main_title: 'Weekly 404',
                  exam_time: 'Wed Sep 7, 2022 12:00 AM',
                  result_time: 'Thu, Sep 8, 2022 3:23 AM',
                  no_of_students: '5',
                  time_left: '21h:39m:44s left',
                ),
              ],
            )),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  CardWidget(
      {required this.main_title,
      required this.exam_time,
      required this.result_time,
      required this.no_of_students,
      required this.time_left});

  String main_title;
  String exam_time = '';
  String result_time = '';
  String no_of_students = '';
  String time_left = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 10.0, bottom: 15),
                    child: Text(
                      main_title,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      time_left,
                      style: TextStyle(
                          backgroundColor: Colors.red, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Exam time: $exam_time',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'Result time: $result_time',
                  style: TextStyle(fontSize: 12),
                )),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10.0, bottom: 4),
                    child: Text(
                      'Students : $no_of_students',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.yellow.shade900),
                    ),
                  ),
                ),
                Text(
                  'View',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFF70a675),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.open_in_browser,
                    color: Color(0xFF70a675),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget2 extends StatelessWidget {
  CardWidget2(
      {required this.main_title,
      required this.exam_time,
      required this.result_time,
      required this.no_of_students,
      required this.time_left});

  String main_title;
  String exam_time = '';
  String result_time = '';
  String no_of_students = '';
  String time_left = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 10.0, bottom: 15),
                    child: Text(
                      main_title,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Exam time: $exam_time',
                  style: TextStyle(fontSize: 12),
                )),
            Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'Result time: $exam_time',
                  style: TextStyle(fontSize: 12),
                )),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 2),
                    child: Text(
                      'Students : $no_of_students',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.yellow.shade900),
                    ),
                  ),
                ),
                Text(
                  'View',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFF70a675),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.open_in_browser,
                    color: Color(0xFF70a675),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
