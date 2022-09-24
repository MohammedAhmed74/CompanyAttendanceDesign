import 'package:flutter/material.dart';

import 'employees.dart';

class EditEmployees extends StatefulWidget {
  @override
  _EditEmployeesState createState() => _EditEmployeesState();
}

class _EditEmployeesState extends State<EditEmployees> {
  List<String> Items = [
    'Jan',
    'Feb',
    'Mar',
    'Abr',
    'May',
    'June',
    'July',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  String? bonusMonth;
  String? punshMonth;
  final Color dark = Color(0xff060822);
  final Color color1 = Color(0xff4a4d6f);

  bool personalInfoDone = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: dark,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EmployeesScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            Text(
                              'Back',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'asset/edit4.png',
                        width: 400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white.withOpacity(0.9),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Performance',
                              style: TextStyle(
                                  color: dark,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Container(
                                width: 300,
                                child: DropdownButton<String>(
                                  items: Items.map((item) => DropdownMenuItem(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                            color: color1, fontSize: 16),
                                      ))).toList(),
                                  value: bonusMonth,
                                  iconSize: 42,
                                  isExpanded: true,
                                  iconEnabledColor: color1,
                                  menuMaxHeight: 400,
                                  hint: const Text(
                                    'select month',
                                    style: TextStyle(color: Color(0xff4a4d6f)),
                                  ),
                                  onChanged: (item) => setState(
                                      () => bonusMonth = item.toString()),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: TextButton(
                                  onPressed: () {
                                    personalInfoDone = true;
                                  },
                                  child: Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: dark,
                                      ),
                                      width: 300,
                                      height: 40,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Add Bonus',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 26,
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: double.infinity,
                              height: 0.5,
                              color: dark,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Container(
                                width: 300,
                                child: DropdownButton<String>(
                                  items: Items.map((item) => DropdownMenuItem(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                            color: color1, fontSize: 16),
                                      ))).toList(),
                                  value: punshMonth,
                                  iconSize: 42,
                                  isExpanded: true,
                                  iconEnabledColor: color1,
                                  menuMaxHeight: 400,
                                  hint: const Text('select month',
                                      style:
                                          TextStyle(color: Color(0xff4a4d6f))),
                                  onChanged: (item) => setState(
                                      () => punshMonth = item.toString()),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: TextButton(
                                  onPressed: () {
                                    personalInfoDone = true;
                                  },
                                  child: Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: dark,
                                      ),
                                      width: 300,
                                      height: 40,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Add Punshiment',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                            size: 26,
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
