import 'dart:ui';

import 'package:draggablescrollable/employees.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DraggableWidget extends StatefulWidget {
  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  double openH = 20;
  bool isopen = false;
  double initialSize = 0.75;
  late List<StatData> EmpAtt;
  late List<StatData> FinData;
  @override
  void initState() {
    EmpAtt = getAttData();
    FinData = getFinanceData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xff060822),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  EmployeesScreen())); // go to emp_profile
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        height: 90,
                        width: 90,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage('asset/employee1.jpg'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mazen',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            ' mobile developer ',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                backgroundColor: Color(0xff690303),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        DraggableScrollableSheet(
            // Scrollable Sheet
            maxChildSize: topEnding(),
            minChildSize: 0.75,
            initialChildSize: initialSize,
            builder: (context, controler) => SingleChildScrollView(
                  controller: controler,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      //color: Color(0xff4b19c9),

                      color: Color(0xff4a4d6f),
                    ),
                    width: double.infinity,
                    height: screenSize(),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            //color: Color(0xff4b19c9),
                            color: Color(0xff4a4d6f),
                          ),
                          height: 50, // clickable blue
                          width: double.infinity,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isopen == true) {
                                  isopen = false;
                                } else {
                                  isopen = true;
                                }
                                isopen ? initialSize = 0.9 : initialSize = 0.75;
                                isopen ? openH = 200 : openH = 20;
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  //color: Color(0xff4b19c9),
                                  color: Color(0xff4a4d6f),
                                ),
                                padding: EdgeInsets.only(left: 30),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Performance',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        getChart1(),
                        Container(
                          //                                            ***** white
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            color: Colors.white,
                          ),
                          width: double.infinity,
                          height: whiteSpace(),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    // SizedBox(
                                    //   height: 0,
                                    // ),
                                    ExpansionTile(
                                      title: Text('Personal Info',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          )),
                                      leading: Icon(Icons.person),
                                      iconColor: Color(0xff4a4d6f),
                                      collapsedIconColor: Color(0xff060822),
                                      textColor: Color(0xff4a4d6f),
                                      collapsedTextColor: Color(0xff060822),
                                      backgroundColor: Colors.grey[50],
                                      childrenPadding:
                                          EdgeInsets.only(left: 50),
                                      children: [
                                        ListTile(
                                          title: Text('Mazen Mohammed Aly'),
                                        ),
                                        ListTile(
                                          title: Text('ID : 1001'),
                                        ),
                                        ListTile(
                                          title: Text('01283695130'),
                                        ),
                                        ListTile(
                                          title: Text('IT Department'),
                                        ),
                                        ListTile(
                                          title: Text('30/7/2000'),
                                        ),
                                      ],
                                    ),
                                    ExpansionTile(
                                      title: Text('Jop Info',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          )),
                                      leading: Icon(Icons.shopping_bag),
                                      iconColor: Color(0xff4a4d6f),
                                      collapsedIconColor: Color(0xff060822),
                                      textColor: Color(0xff4a4d6f),
                                      collapsedTextColor: Color(0xff060822),
                                      backgroundColor: Colors.grey[50],
                                      childrenPadding:
                                          EdgeInsets.only(left: 50),
                                      children: [
                                        ListTile(
                                          title: Text('Monthly'),
                                        ),
                                        ListTile(
                                          title: Text('8555.50 \$'),
                                        ),
                                        ListTile(
                                          title: Text('8 hours'),
                                        ),
                                        ListTile(
                                          title: Text('from 8 am'),
                                        ),
                                      ],
                                    ),
                                    ExpansionTile(
                                      title: Text('Late',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          )),
                                      leading: Icon(Icons.watch),
                                      iconColor: Color(0xff4a4d6f),
                                      collapsedIconColor: Color(0xff060822),
                                      textColor: Color(0xff4a4d6f),
                                      collapsedTextColor: Color(0xff060822),
                                      backgroundColor: Colors.grey[50],
                                      childrenPadding:
                                          EdgeInsets.only(left: 50),
                                      children: [
                                        ListTile(
                                          title: Text('5/2'),
                                        ),
                                        ListTile(
                                          title: Text('30/7'),
                                        ),
                                      ],
                                    ),
                                    ExpansionTile(
                                      title: Text(
                                        'Absence',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                        ),
                                      ),
                                      leading: Icon(Icons.not_interested),
                                      iconColor: Color(0xff4a4d6f),
                                      collapsedIconColor: Color(0xff060822),
                                      textColor: Color(0xff4a4d6f),
                                      collapsedTextColor: Color(0xff060822),
                                      backgroundColor: Colors.grey[50],
                                      childrenPadding:
                                          EdgeInsets.only(left: 50),
                                      children: [
                                        ListTile(
                                          title: Text('4/3'),
                                        ),
                                        ListTile(
                                          title: Text('5/5'),
                                        ),
                                      ],
                                    ),
                                    ExpansionTile(
                                      title: Text('Bonus',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          )),
                                      leading: Icon(Icons.add),
                                      iconColor: Color(0xff4a4d6f),
                                      collapsedIconColor: Color(0xff060822),
                                      textColor: Color(0xff4a4d6f),
                                      collapsedTextColor: Color(0xff060822),
                                      backgroundColor: Colors.grey[50],
                                      childrenPadding:
                                          EdgeInsets.only(left: 50),
                                      children: [
                                        ListTile(
                                          title: Text('Jan'),
                                        ),
                                        ListTile(
                                          title: Text('July'),
                                        ),
                                      ],
                                    ),
                                    ExpansionTile(
                                      title: Text('Punishment',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          )),
                                      leading: Icon(Icons.remove),
                                      iconColor: Color(0xff4a4d6f),
                                      collapsedIconColor: Color(0xff060822),
                                      textColor: Color(0xff4a4d6f),
                                      collapsedTextColor: Color(0xff060822),
                                      backgroundColor: Colors.grey[50],
                                      childrenPadding:
                                          EdgeInsets.only(left: 50),
                                      children: [
                                        ListTile(
                                          title: Text('May'),
                                        ),
                                        ListTile(
                                          title: Text('Dec'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
      ],
    ));
  }

  double screenSize() {
    double height = MediaQuery.of(context).size.height;
    double barHeight = MediaQuery.of(context).viewPadding.top;
    var safeHeight = height - barHeight;
    return safeHeight;
  }

  double topEnding() {
    double height = MediaQuery.of(context).size.height;
    double barHeight = MediaQuery.of(context).viewPadding.top;
    double h = ((height - barHeight) / height);
    return h;
  }

  double whiteSpace() {
    double height = MediaQuery.of(context).size.height;
    double barHeight = MediaQuery.of(context).viewPadding.top;
    double w;
    if (isopen)
      w = height -
          barHeight -
          50 -
          160; //  50 -> clickable blue + 10 sized box + 150 getChart1
    else
      w = height - barHeight - 50 - 10; //  50 -> clickable blue + 10 sized box
    return w;
  }

  List<StatData> getAttData() {
    final List<StatData> AttData = [
      StatData('Presence', 20),
      StatData('Absence', 4),
      StatData('Late', 3),
    ];
    return AttData;
  }

  List<StatData> getFinanceData() {
    final List<StatData> FinanceData = [
      StatData('Normal', 6),
      StatData('Bonus', 4),
      StatData('Punishment', 2),
    ];
    return FinanceData;
  }

  Widget getChart1() {
    if (isopen == true) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: 150,
                height: 150,
                child: SfCircularChart(
                  palette: [
                    Color(0xff93c8f8),
                    Color(0xff0b5394),
                    Color(0xff3d85c6),
                  ],
                  series: <CircularSeries>[
                    PieSeries<StatData, String>(
                      dataSource: EmpAtt,
                      xValueMapper: (StatData data, _) => data.behavior,
                      yValueMapper: (StatData data, _) => data.times,
                    )
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      color: Color(0xff93c8f8),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'presence',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      color: Color(0xff3d85c6),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Late',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      color: Color(0xff0b5394),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Absence',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                width: 150,
                height: 150,
                child: SfCircularChart(
                  palette: [
                    Color(0xffcdacac),
                    Color(0xffb14e4e),
                    Color(0xff690303),
                  ],
                  series: <CircularSeries>[
                    PieSeries<StatData, String>(
                      dataSource: FinData,
                      xValueMapper: (StatData data, _) => data.behavior,
                      yValueMapper: (StatData data, _) => data.times,
                    )
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      color: Color(0xffcdacac),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Normal',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      color: Color(0xffb14e4e),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Bonus',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      color: Color(0xff690303),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Punishment',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    } else
      return SizedBox(
        height: 0,
      );
  }
}

class StatData {
  StatData(this.behavior, this.times);
  final String behavior;
  final int times;
}
