import 'package:banoqabilfinal/login.dart';
import 'package:banoqabilfinal/register.dart';
import 'package:banoqabilfinal/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class menuApp extends StatefulWidget {
  const menuApp({super.key});

  @override
  State<menuApp> createState() => _menuAppState();
}

class _menuAppState extends State<menuApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  flexibleSpace: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.red,
          Colors.blue,
        ],
      ),
    ),
  ),
  /*
  leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ),
  */
  title: Image.asset(
    'assets/images/skywestlogo.png',
    fit: BoxFit.contain,
    height: 50,
  ),
  centerTitle: true,
),
      
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgMenu.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 460),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(width: 135,),
                      Center(child: Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0,top: 15,left: 15),
                    child: Row(
                      
                      children: [
                        GestureDetector(
  onTap: () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => WelcomeApp() ));
  },
  
  child: Container(
    width: 120,
    height: 100,
    
    decoration: BoxDecoration(
       borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0), // Adjust as needed
              ),
      color: Colors.white,
      border: Border.all(
        color: Colors.grey, // Border color
        width: 1, // Border width
      ),
    ),
    child: Center(
      child: Column(children: [
        Image.asset("assets/images/calender.png",height: 70,width: 80,),
        Text("Book",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 3, 97, 173)),)
      ],),
    ),
  ),
),
GestureDetector(
  onTap: () {},
  child: Container(
    width: 120,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.grey, // Border color
        width: 1, // Border width
      ),
    ),
    child: Center(
      child: Column(children: [
        Image.asset("assets/images/seat.png",height: 70,width: 90,),
        Text("Manage",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 3, 97, 173)))
      ],
      ),
    ),
  ),
),
GestureDetector(
  onTap: () {},
  child: Container(
    width: 120,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0), // Adjust as needed
              ),
      color: Colors.white,
      border: Border.all(
        color: Colors.grey, // Border color
        width: 1, // Border width
      ),
    ),
    child: Center(
      child: Column(children: [
        Image.asset("assets/images/ticket.png",height: 70,width: 90,),
        Text("Check in",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 3, 97, 173)))
      ],),
    ),
  ),
),
                      ],
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 15),
                    child: Row(
                        
                        children: [
                          GestureDetector(
  onTap: () {},
  child: Container(
    width: 120,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.grey, // Border color
        width: 1, // Border width
      ),
    ),
    child: Center(
      child:Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Column(children: [
          Image.asset("assets/images/planestatus.png",height: 70,width: 90,),
          Text("Flight Status",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 3, 97, 173))),
        ],),
      ),
    ),
  ),
),
GestureDetector(
  onTap: () {},
  child: Container(
    width: 120,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.grey, // Border color
        width: 1, // Border width
      ),
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Column(children: [
          Image.asset("assets/images/offer.png",height: 70,width: 90,),
          Text("Offer",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 3, 97, 173)))
        ],),
      ),
    ),
  ),
),
GestureDetector(
  onTap: () {},
  child: Container(
    width: 120,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.grey, // Border color
        width: 1, // Border width
      ),
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Column(children: [
          Image.asset("assets/images/pay.png",height: 70,width: 90,),
          Text("Payment",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 3, 97, 173)))
        ],),
      ),
    ),
  ),
),
                        ],
                      ),
                  ),
                ],
              ),
            )
          ),
        ),
      endDrawer: Drawer(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue[100],
        child:   Padding(
          padding: const EdgeInsets.only(top:60.0),
          child: Column(children: [
              Container(
                height: 210,
                width: double.infinity,
                 decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/drawer.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 65,
                          backgroundImage: NetworkImage("https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/man-user-circle-icon.png"),

                        ),
                        Positioned(child: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo,color: Colors.white,)
                        ),
                         bottom: -10,
                         left: 80,
                        )
                        
                      ],
                    ),
                    
                  ),
                  Text("Joe Bidden",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text("abc1@gmail.com",style: TextStyle(fontSize: 18,color: Colors.white),),
                  
                ],
              ),
            ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 10,right: 10,bottom: 10),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  
                  child: GestureDetector(
                    onTap: (){
Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => loginPage() ));
     

                    },
                    child: Center(child: Text("Log in",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0,left: 10,right: 10,bottom: 10),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => registerPage() ));
                    },
                    child: Center(child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)),
                    
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(onPressed: (){}, icon: Image.asset("assets/images/noti.png")),
                      Container(width: 1,height: double.infinity, color: Colors.grey,),
                      IconButton(onPressed: (){}, icon: Image.asset("assets/images/setting.png")),
                    
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child:Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.blue,
                        child: GestureDetector(
                          onTap: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/images/profileEdit.png",),
                              ),
                              Text("Edited Profile",style: TextStyle(fontSize: 18,color: Colors.white),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/images/arrow.png",),
                              ),
                            ],),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.blue,
                          child: GestureDetector(
                            onTap: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/images/whiteCase.png",),
                                ),
                                Text("My Trip",style: TextStyle(fontSize: 18,color: Colors.white),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/images/arrow.png",),
                                ),
                              ],),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.blue,
                          child: GestureDetector(
                            onTap: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.info,color: Colors.white,size: 35,),
                                ),
                                Text("About Us",style: TextStyle(fontSize: 18,color: Colors.white),),
                                
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/images/arrow.png",),
                                ),
                              ],),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.blue,
                          child: GestureDetector(
                            onTap: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/images/help.png",),
                                ),
                                Text("Help",style: TextStyle(fontSize: 18,color: Colors.white),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/images/arrow.png",),
                                ),
                              ],),
                          ),
                        ),
                      )
                    ],
                  ) 
                
                
                ),
              )
            ],),
        )
        ),
      ),
    );
  }
}