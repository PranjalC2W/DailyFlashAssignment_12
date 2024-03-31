import 'package:flutter/material.dart';

class DailyFlashQ4 extends StatefulWidget{
  const DailyFlashQ4({super.key});
  @override 
  State<DailyFlashQ4>createState()=>_DailyFlashQ4State();
}

class Info{
   String? name;
   String? college;

  Info({this.name,this.college});
}

class _DailyFlashQ4State extends State<DailyFlashQ4>{

  TextEditingController namecontroller=TextEditingController();
  TextEditingController collegecontroller=TextEditingController();
String errortext='';
  bool issubmit=false;
  List card=[];

String? name;
String? college;

  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: const Text("Daily Flash"),
      backgroundColor:Colors.blue,
    ),
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                labelText: 'Enter your name',
                errorText:  errortext.isNotEmpty && namecontroller.text.isEmpty ?'Enter your name':null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            
            ),
          const SizedBox(height: 15,),
            TextField(
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
              namecontroller.clear();
              collegecontroller.clear();
              },
        
               child: const Text("Submit")
               ),
               const SizedBox(height: 10,),
               if(issubmit==true)
               ListView.builder( 
               
                shrinkWrap: true,
                itemCount: card.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                   height: 50,
                   width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                   border: Border.all(color: Colors.black)
                  ),
                  child: Column(children: [
                    Text("Name: ${card[index].name}"),
                    Text("College Name: ${card[index].college}"),
                   
                  ],),
                     
                  );
                },
               )
        
          ],
        ),
      ),
    ),

    );
    
  }
  void submit(){
    issubmit=true;
    setState(() {
      if(namecontroller.text.isEmpty||collegecontroller.text.isEmpty){
        errortext='Both are empty';

      }else {
        
       card.add(
        Info(name: namecontroller.text,college: collegecontroller.text)
       );
      }

    });
  }
}
