import 'package:flutter/material.dart';

class DailyFlashQ2 extends StatefulWidget {
  const DailyFlashQ2({super.key});
  @override
  State<DailyFlashQ2> createState() => _DailyFlashQ2State();
}

class _DailyFlashQ2State extends State<DailyFlashQ2> {
  List weekdays = [];

  void adddays(String weekday) {
    setState(() {
      weekday = weekdaycontroller.text;
      if (weekday.isNotEmpty) {
        weekdays.add(weekday);
      }
      weekdaycontroller.clear();
    });
  }

  TextEditingController weekdaycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            TextField(
              controller: weekdaycontroller,
              onSubmitted: (value) {
                adddays(value);
              },
              decoration: InputDecoration(
                  labelText: 'Enter Weekday',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: weekdays.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(weekdays[index]),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
