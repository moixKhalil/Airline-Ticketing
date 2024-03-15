import 'package:banoqabilfinal/menu.dart';
import 'package:banoqabilfinal/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String _eemail='';
  String _ppassword='';
  bool? checkInBox=false;
  String _warning='';
  Color _warn=Colors.green;
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
          child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                   IconButton(onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => menuApp() ));
                      }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0,left: 100),
                    child: Container(
                      height: 100,
                      width: 100,
                      
                      child: Image.asset("assets/images/logowhite.png")),
                  ),
                ],
              ),
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Text("SAFETY FIRST",style: TextStyle(fontSize: 18,color: Colors.white),),
                      Text("Login",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),),
                      Text("Enter the details for login",style: TextStyle(fontSize: 16,color: Colors.white),),
                      Container(height: 15,),
                      Container(child: Padding(
                        padding: const EdgeInsets.only(left: 150.0),
                        child: Text(_warning, style: TextStyle(fontSize: 15,color:_warn),),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          
                          style: TextStyle(color: Colors.white),
                             decoration: new InputDecoration(
                         border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Set border color
                             ),
                             hintText: "Enter your email",
                                          
                                            hintStyle: new TextStyle(
                                            color: Colors.white
                         ),
                         
                                          ),
                        onChanged: (value1) {
                          setState(() {
                            _eemail=value1;
                          });
                        },
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
                               onChanged: (value) {
                                 setState(() {
                                   _ppassword=value;
                                 });
                               },          
                                            ),
                      ),
                      Container(child: Padding(
                        padding: const EdgeInsets.only(left: 150.0),
                        child: TextButton(onPressed: (){}, child: Text("Forgot Username/Password" , style: TextStyle(fontSize: 15,color: Colors.red[800]),),),
                      )),
                      Row(
                        children: [
                          Container(
                            
                            child: Checkbox(value: checkInBox,activeColor: Colors.blue, onChanged: (newBool){
                              setState(() {
                                checkInBox=newBool;
                              });
                            }),
                          ),
                          Container(child: Text("Keep me logged in this device" , style: TextStyle(fontSize: 15,color: Colors.white),),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
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
                            onTap: (){
                              if (_eemail=='moizkhalil1@gmail.com' && _ppassword=="1234"){
                                setState(() {
                                  _warning='Successfully Login';
                                  _warn=Colors.green;
                                });
                              }
                              else{
                                setState(() {
                                  _warning='Unsuccesful Login Try Again';
                                  _warn=Colors.red;
                                });
                              }
                            },
                            child: Center(child: Text("Log in",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,left: 10,right: 10,bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(child: Text("Not a member?",style: TextStyle(fontSize: 15,color: Colors.white),),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: double.infinity,
                          height: 80,
                            decoration: BoxDecoration(
                            border: Border.all(
      color: Colors.white, // Change the color to whatever you want
      width: 2, // Change the width if needed
    ),
                          // Other decoration properties if needed
                        color: Colors.transparent, // Example color
                           // Set border color
                          ),
                          
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => registerPage() ));
                            },
                            child: Center(child: Text("Join now",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        )    
          ],
        ),


       
      ),
    );
  }
}