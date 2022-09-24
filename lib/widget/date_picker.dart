import 'package:flutter/material.dart';
import 'package:horizontal_center_date_picker/date_item.dart';
import 'package:horizontal_center_date_picker/date_item_state.dart';
import 'package:horizontal_center_date_picker/date_item_widget.dart';
import 'package:horizontal_center_date_picker/datepicker_controller.dart';
import 'package:horizontal_center_date_picker/horizontal_date_picker.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    DateTime startDate = now.subtract(Duration(days: now.day - 1));
    DateTime endDate = now.add(Duration(days: 0));
    print('startDate = $startDate ; endDate = $endDate');
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: HorizontalDatePickerWidget(
        startDate: startDate,
        endDate: endDate,
        selectedDate: now,
        widgetWidth: MediaQuery.of(context).size.width,
        datePickerController: DatePickerController(),
        onValueSelected: (date) {
          print('selected = ${date.toIso8601String()}');
        },
      ),
    );
  }
}
