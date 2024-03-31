import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class DailyFlashQ5 extends StatefulWidget{
  const DailyFlashQ5({super.key});
  @override 
  State<DailyFlashQ5>createState()=>_DailyFlashQ5State();
}

class _DailyFlashQ5State extends State<DailyFlashQ5>{
 TextEditingController datecontroller=TextEditingController();
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
          controller: datecontroller,
            decoration: InputDecoration(
              
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
             
              
              ),
              onTap: () async{
            DateTime?  pickedDate=await showDatePicker(
                context: context, 
                firstDate: DateTime(2024), 
                lastDate: DateTime(2025)             
                   );
               String formatDate=DateFormat.MMMEd().format(pickedDate!);
                 setState(() {
                   datecontroller.text=formatDate;
                 });
              },
            ),

          ),
        ),);
     
   
  }
}