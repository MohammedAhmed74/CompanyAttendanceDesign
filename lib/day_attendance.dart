import 'package:draggablescrollable/widget/date_picker.dart';
import 'package:draggablescrollable/employees.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'widget/stacked_widgets.dart';

class DayAttendance extends StatelessWidget {
  double widthOfScreen = 250;
  Color dark = Color(0xff060822);
  Color containerColor = Color(0xffC8F7D5);
  Color color1 = Color(0xff4a4d6f);
  static const defultImages = [
    'asset/employee1.jpg',
    'asset/employee2.jpg',
    'asset/employee3.jpg',
  ];
  final images8 = [
    'asset/employee1.jpg',
    'asset/employee2.jpg',
    'asset/employee3.jpg',
    'asset/employee4.jpg',
    'asset/emp5.jpg',
    'asset/emp6.jpg',
    'asset/employee1.jpg',
    'asset/employee2.jpg',
    'asset/employee3.jpg',
    'asset/employee4.jpg',
    'asset/emp5.jpg',
    'asset/emp6.jpg',
    'asset/employee1.jpg',
    'asset/employee2.jpg',
    'asset/employee3.jpg',
    'asset/employee4.jpg',
    'asset/emp5.jpg',
    'asset/emp6.jpg',
  ];
  final images9 = [
    'asset/employee2.jpg',
    'asset/employee3.jpg',
    'asset/emp5.jpg',
    'asset/emp6.jpg',
    'asset/employee1.jpg',
    'asset/employee2.jpg',
    'asset/employee3.jpg',
    'asset/employee4.jpg',
    'asset/emp5.jpg',
    'asset/emp6.jpg',
  ];
  final images9_5 = [
    'asset/emp5.jpg',
    'asset/emp6.jpg',
    'asset/employee1.jpg',
    'asset/employee2.jpg',
    'asset/employee3.jpg',
    'asset/employee4.jpg',
  ];
  final images10 = [
    'asset/employee1.jpg',
    'asset/employee2.jpg',
  ];
  final imagesL = [
    'asset/employee3.jpg',
    'asset/employee4.jpg',
    'asset/employee1.jpg',
    'asset/employee2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    widthOfScreen = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: dark,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: Container(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today Attendance',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      Text(
                        '10 employees Presenced',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          DatePicker(), //                   DatePicker**********************
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: TimelineTile(
                                    alignment: TimelineAlign.manual,
                                    lineXY: 0.25,
                                    hasIndicator: false,
                                    afterLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    beforeLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    startChild: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '08:00 AM',
                                        style: TextStyle(
                                            color: dark,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    endChild: Row(
                                      children: [
                                        buildExpandedBox(
                                          color: Color(0xff87E0EA),
                                          childrenNum: images8.length,
                                          children: [
                                            buildStackedImages(
                                                betweenColor: Color(0xff87E0EA),
                                                images: images8),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, right: 10),
                                  child: TimelineTile(
                                    alignment: TimelineAlign.manual,
                                    lineXY: 0.25,
                                    hasIndicator: false,
                                    afterLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    beforeLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    startChild: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '08:30 AM',
                                        style: TextStyle(
                                            color: dark,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    endChild: Row(
                                      children: [
                                        buildExpandedBox(
                                          color: Color(0xffFFC9BB),
                                          childrenNum: 0,
                                          children: [
                                            buildStackedImages(
                                                betweenColor: Color(0xffFFC9BB),
                                                images: images8),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, right: 10),
                                  child: TimelineTile(
                                    alignment: TimelineAlign.manual,
                                    lineXY: 0.25,
                                    hasIndicator: false,
                                    afterLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    beforeLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    startChild: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '09:00 AM',
                                        style: TextStyle(
                                            color: dark,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    endChild: Row(
                                      children: [
                                        buildExpandedBox(
                                          color: Color(0xffC8D0F7),
                                          childrenNum: images9.length,
                                          children: [
                                            buildStackedImages(
                                                betweenColor: Color(0xffC8D0F7),
                                                images: images9),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, right: 10),
                                  child: TimelineTile(
                                    alignment: TimelineAlign.manual,
                                    lineXY: 0.25,
                                    hasIndicator: false,
                                    afterLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    beforeLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    startChild: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '09:30 AM',
                                        style: TextStyle(
                                            color: dark,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    endChild: Row(
                                      children: [
                                        buildExpandedBox(
                                          color: Color(0xffF7F3C8),
                                          childrenNum: images9_5.length,
                                          children: [
                                            buildStackedImages(
                                              images: images9_5,
                                              betweenColor: Color(0xffF7F3C8),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, right: 10),
                                  child: TimelineTile(
                                    alignment: TimelineAlign.manual,
                                    lineXY: 0.25,
                                    hasIndicator: false,
                                    afterLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    beforeLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    startChild: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '10:00 AM',
                                        style: TextStyle(
                                            color: dark,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    endChild: Row(
                                      children: [
                                        buildExpandedBox(
                                          color: Color(0xffC8F7D5),
                                          childrenNum: images10.length,
                                          children: [
                                            buildStackedImages(
                                                betweenColor: Color(0xffC8F7D5),
                                                images: images10),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, right: 10),
                                  child: TimelineTile(
                                    alignment: TimelineAlign.manual,
                                    lineXY: 0.25,
                                    hasIndicator: false,
                                    afterLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    beforeLineStyle: LineStyle(
                                        color: Colors.white, thickness: 0),
                                    startChild: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Center(
                                        child: Text(
                                          'Late',
                                          style: TextStyle(
                                              color: dark,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ), // photos are here ***********************************************************
                                    endChild: Row(
                                      children: [
                                        buildExpandedBox(
                                          color: Color(0xffFFC9BB),
                                          childrenNum: imagesL.length,
                                          children: [
                                            buildStackedImages(
                                                betweenColor: Color(0xffFFC9BB),
                                                images: imagesL),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    EmployeesScreen()));
                                      },
                                      child: Container(
                                        alignment:
                                            AlignmentDirectional.bottomCenter,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: dark,
                                        ),
                                        width: double.infinity,
                                        height: 50,
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.group,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Employees',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildExpandedBox({
    required List<Widget> children,
    required Color color,
    int childrenNum = 0,
  }) =>
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        width: (childrenNum < 5)
            ? (55 + ((childrenNum.toDouble() - 1) * 40))
            : (((40 * childrenNum.toDouble())) > 260)
                ? widthOfScreen - 120
                : ((40 * childrenNum.toDouble())),
        child: Container(
          margin: EdgeInsets.only(right: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: children,
            ),
          ),
        ),
      );

  Widget buildStackedImages({
    TextDirection direction = TextDirection.ltr,
    Color betweenColor = Colors.white,
    List<String> images = defultImages,
  }) {
    final double size = 50;
    final double xShift = 15;
    final urlImages = images;

    final items = urlImages
        .map((urlImage) => buildImage(urlImage, betweenColor))
        .toList();

    return StackedWidgets(
      direction: direction,
      items: items,
      size: size,
      xShift: xShift,
    );
  }

  Widget buildImage(String urlImage, Color c1) {
    final double borderSize = 5;

    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(borderSize),
        color: c1,
        child: ClipOval(
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
