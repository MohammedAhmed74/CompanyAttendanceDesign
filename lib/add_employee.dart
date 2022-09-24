import 'package:flutter/material.dart';
import 'employees.dart';

class AddEmployee extends StatefulWidget {
  AddEmployee({Key? key}) : super(key: key);

  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'asset/HR.png',
                      width: 300,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmployeesScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          Text(
                            'Back',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
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
                    child: getForm(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget getForm() {
    if (personalInfoDone == false) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Info',
              style: TextStyle(
                  color: dark, fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                style: TextStyle(
                  color: dark,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: dark)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color1)),
                    labelText: 'First Name',
                    labelStyle: TextStyle(
                      color: dark,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextFormField(
                style: TextStyle(
                  color: dark,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: dark)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color1)),
                    labelText: 'Second Name',
                    labelStyle: TextStyle(
                      color: dark,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextFormField(
                style: TextStyle(
                  color: dark,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: dark)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color1)),
                    labelText: 'Department',
                    labelStyle: TextStyle(
                      color: dark,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextFormField(
                style: TextStyle(
                  color: dark,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: dark)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color1)),
                    labelText: 'Phone',
                    labelStyle: TextStyle(
                      color: dark,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextFormField(
                style: TextStyle(
                  color: dark,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: dark)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color1)),
                    labelText: 'Jop Title',
                    labelStyle: TextStyle(
                      color: dark,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextButton(
                  onPressed: () {
                    setState(() {});
                    personalInfoDone = true;
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: dark,
                    ),
                    width: double.infinity,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Jop Info',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Icon(
                          Icons.arrow_right_outlined,
                          color: Colors.white,
                          size: 35,
                        )
                      ],
                    ),
                  )),
            )
          ],
        ),
      );
    } else {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jop Info',
              style: TextStyle(
                  color: dark, fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                style: TextStyle(
                  color: dark,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: dark)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color1)),
                    labelText: 'Salary',
                    labelStyle: TextStyle(
                      color: dark,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextFormField(
                style: TextStyle(
                  color: dark,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: dark)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color1)),
                    labelText: 'Start Time',
                    labelStyle: TextStyle(
                      color: dark,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextFormField(
                style: TextStyle(
                  color: dark,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: dark)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color1)),
                    labelText: 'Duration',
                    labelStyle: TextStyle(
                      color: dark,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextFormField(
                style: TextStyle(
                  color: dark,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: dark)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color1)),
                    labelText: 'Payment Type',
                    labelStyle: TextStyle(
                      color: dark,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: pickImage,
                        child: Container(
                          alignment: AlignmentDirectional.bottomCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: dark,
                          ),
                          height: 50,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_photo_alternate,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Pick Gallery',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed: () {
                          setState(() {});
                          personalInfoDone = false;
                        },
                        child: Container(
                          alignment: AlignmentDirectional.bottomCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: dark,
                          ),
                          height: 50,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Pick Camera',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextButton(
                  onPressed: () {
                    setState(() {});
                    personalInfoDone = false;
                  },
                  child: Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: dark,
                    ),
                    width: double.infinity,
                    height: 50,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_add,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Add Employee',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ],
        ),
      );
    }
  }

  void pickImage() {}
}
