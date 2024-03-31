import 'package:flutter/material.dart';

class DailyFlashQ1 extends StatefulWidget{
  const DailyFlashQ1({super.key});
  @override 
  State<DailyFlashQ1>createState()=>_DailyFlashQ1State();
}

class _DailyFlashQ1State extends State<DailyFlashQ1>{
  bool passvisible=false;
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
          child: TextFormField(
            obscureText: !passvisible,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              suffixIcon:IconButton(
                onPressed: () {
                  setState(() {
                    passvisible=!passvisible;
                  });
                },
                icon: Icon(
                  passvisible ? Icons.visibility :Icons.visibility_off
                ),
              )
            ),

          ),
        ),
      ),
    );
  }
}