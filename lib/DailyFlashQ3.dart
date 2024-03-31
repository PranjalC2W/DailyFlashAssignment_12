import 'package:flutter/material.dart';

class DailyFlashQ3 extends StatefulWidget{
  const DailyFlashQ3({super.key});
  @override 
  State<DailyFlashQ3>createState()=>_DailyFlashQ3State();
}
class _DailyFlashQ3State extends State<DailyFlashQ3>{

  TextEditingController namecontroller=TextEditingController();
  TextEditingController collegecontroller=TextEditingController();
String errortext='';
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: const Text("Daily Flash"),
      backgroundColor:Colors.blue,
    ),
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextFormField(
            
            controller: namecontroller,
            decoration: InputDecoration(
              labelText: 'Enter your name',
              errorText:  errortext.isNotEmpty&&namecontroller.text.isEmpty ?'Enter your name':null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
          
          ),
        const SizedBox(height: 15,),
          TextFormField(
            controller: collegecontroller,
            decoration: InputDecoration(
              labelText: 'Enter college name',
              errorText: errortext.isNotEmpty&& collegecontroller.text.isEmpty ?'Enter college name':null,

    
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                
              )
              
            ),
           
          ),
      
          const SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: const Size(120, 40)),
            onPressed:() {
              submit();
            
            },
      
             child: const Text("Submit")
             )
      
        ],
      ),
    ),

    );
    
  }
  void submit(){
    setState(() {
      if(namecontroller.text.isEmpty||collegecontroller.text.isEmpty){
        errortext='Both are empty';
      }
    });
  }
}
