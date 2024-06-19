import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay? selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child ?? Container(),
        );
      },
    );

    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = TimeOfDay(
          hour: pickedTime.hour,
          minute: 0, // Set minutes to 0 to get full hours
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _selectTime(context),
              child: Text(selectedTime?.format(context) ?? 'Select Start Time'),
            ),
            const SizedBox(height: 16),
            Text(
              'Selected Time: ${selectedTime?.format(context) ?? 'Not selected'}',
              style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:Constants.themeSubheadingGrey),
            ),
          ],
        ),
      );
  }
}