import 'package:banoqabilfinal/menu.dart';
import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  TextEditingController _dateDoB = TextEditingController();
    String _dropDownValueCountry = 'Select Country'; // Separate variable for the second dropdown
  var _itemsCountry = ['Select Country', 'Pakistan', 'India', 'USA'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
                 decoration: BoxDecoration(
                 image: DecorationImage(
                 image: AssetImage("assets/images/loginBack.png"),
                 fit: BoxFit.cover,
                ),
              ),
      ),
      Container(
        height: double.infinity,
          width: double.infinity,
          color: Colors.black.withOpacity(0.4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:65,left: 10),
                child: Container(
                  height: 101,
                  width: double.infinity,
                  child: Row(
                    
                    children: [
                      Container(child:  Image.asset("assets/images/logowhite.png"),),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          child: Column(
                            
                            children: [
                             Row(
                              
                               children: [
                                 Text("                 LOYALTY             ",style: TextStyle(fontSize: 18,color: Colors.white),),
                                 
                                 IconButton(onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => menuApp() ));
                      }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                               ],
                             ),
                          Text("Join SkyWest: Safety First",style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),),
                          Text("Enter your registration details",style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                            
                            style: TextStyle(color: Colors.white),
                               decoration: new InputDecoration(
                           border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white), // Set border color
                               ),
                               hintText: "Enter your ssername",
                                            
                                              hintStyle: new TextStyle(
                                              color: Colors.white
                           ),))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                            
                            style: TextStyle(color: Colors.white),
                               decoration: new InputDecoration(
                           border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white), // Set border color
                               ),
                               hintText: "Enter your email",
                                            
                                              hintStyle: new TextStyle(
                                              color: Colors.white
                           ),))
                ),
              ),
              Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                             decoration: new InputDecoration(
                         border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Set border color
                             ),
                             hintText: "Enter your password",
                                          
                                            hintStyle: new TextStyle(
                                            color: Colors.white
                         ),
                         
                                          ),
                                            ),
                      ),
                                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                             decoration: new InputDecoration(
                         border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Set border color
                             ),
                             hintText: "Re-enter your password",
                                          
                                            hintStyle: new TextStyle(
                                            color: Colors.white
                         ),
                         
                                          ),
                                            ),
                      ),
                      Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                            
                            style: TextStyle(color: Colors.white),
                               decoration: new InputDecoration(
                           border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white), // Set border color
                               ),
                               hintText: "Enter your phone number",
                                            
                                              hintStyle: new TextStyle(
                                              color: Colors.white
                           ),))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                            
                            style: TextStyle(color: Colors.white),
                               decoration: new InputDecoration(
                           border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white), // Set border color
                               ),
                               hintText: "Enter your passport number",
                                            
                                              hintStyle: new TextStyle(
                                              color: Colors.white
                           ),))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Container(
                              height: 50,
                              width: 200,
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                controller: _dateDoB,
                                decoration: InputDecoration(
                                  
                                
                                 labelText: "Date of Birth",
                                 labelStyle: TextStyle(color: Colors.white),
                                  filled: true,
                                  prefixIcon: Icon(Icons.calendar_month,),
                                  prefixIconColor: Colors.white,
                                  fillColor: Colors.transparent,
                                  
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)
                                ),
                                
                                ),
                              
                                readOnly: true,
                                onTap: (
                                  
                                ){
                                  _selectDate1(context);
                                   // Pass the context here
                                },
                              ),
                            ),
                ),
              ),


              Container(
                  height: 90,
                  width: 200,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Country:",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 40,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: DropdownButton<String>(
                                value: _dropDownValueCountry,
                                items: _itemsCountry.map<DropdownMenuItem<String>>((item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item,style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold),),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    _dropDownValueCountry = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                 Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: double.infinity,
                          height: 80,
                            decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                          // Other decoration properties if needed
                        color: Colors.amber, // Example color
                           // Set border color
                          ),
                          
                          child: GestureDetector(
                            onTap: (){},
                            child: Center(child: Text("Create an account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                          ),
                        ),
                      ),
            ],//column
          ),
      )
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate1(BuildContext context) async {
     DateTime? _picked1 = await showDatePicker(
      context: context,
      initialDate: DateTime.now() ,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (_picked1!=null){
      setState(() {
        _dateDoB.text=_picked1.toString().split(" ")[0];
      });
    }
  }
}