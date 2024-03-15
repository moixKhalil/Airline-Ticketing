import 'package:banoqabilfinal/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeApp extends StatefulWidget {
  const WelcomeApp({Key? key}) : super(key: key);

  @override
  State<WelcomeApp> createState() => _WelcomeAppState();
}

class _WelcomeAppState extends State<WelcomeApp> {
int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }


  void _decreaseCounter() {
    setState(() {
     
      _counter--;
    });
  }


  String _dropDownValue1 = 'Karachi';
  String _dropDownValue2 = 'Karachi'; // Separate variable for the second dropdown
  var _items = ['Karachi', 'Dehli', 'Newyork', 'London'];

 String _dropDownCabin = 'Economy';
var _itemsCabin = ['Economy', 'Business', 'First Class'];
  
  TextEditingController _dateControl = TextEditingController();
  TextEditingController _dateControl1 = TextEditingController();


   int _passengerCounter = 0;

  void _incrementPassengerCounter() {
    setState(() {
      _passengerCounter++;
    });
  }

  void _decreasePassengerCounter() {
    setState(() {
      _passengerCounter--;
    });
  }

  String _departureCity = 'Karachi';
  String _arrivalCity = 'Karachi'; // Separate variable for the arrival city
  var _cities = ['Karachi', 'Dehli', 'New York', 'London'];

  String _selectedCabin = 'Economy';
  var _cabins = ['Economy', 'Business', 'First Class'];

  TextEditingController _departureDateController = TextEditingController();
  TextEditingController _returnDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2, // Number of tabs
        child: content(),
      ),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/planeCloud.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80.0), // Adjust as needed
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: (double.infinity / 2),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => menuApp() ));
                      }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Flight Booking",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        TabBar(
          indicatorColor: Colors.amberAccent,
          indicatorWeight: 4,
          tabs: [
            Tab(text: 'ROUND TRIP'),
            Tab(text: 'ONE WAY'),
            
           
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              Center(child: roundTrip()),
              Center(child:  oneWay()),
              
              
            ],
          ),
        ),
      ],
    );
  }

  Widget roundTrip() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 186,
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FROM:",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.amberAccent.withOpacity(1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: DropdownButton<String>(
                                value: _dropDownValue1,
                                items: _items.map<DropdownMenuItem<String>>((item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item,style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold),),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    _dropDownValue1 = newValue!;
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
                Container(width: 0.5,),
                Container(
                  height: 100,
                  width: 186,
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TO:",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.amberAccent.withOpacity(1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: DropdownButton<String>(
                                value: _dropDownValue2,
                                items: _items.map<DropdownMenuItem<String>>((item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item,style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold),),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    _dropDownValue2 = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
           Row(
              children: [
                Container(
                  height: 100,
                  width: 186,
                  color: Colors.amberAccent,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0,left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DEPARTURE DATE",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 50,
                            width: 155,
                            child: TextField(
                              controller: _dateControl,
                              decoration: InputDecoration(
                                
                              
                              //  labelText: "Date",
                                filled: true,
                                prefixIcon: Icon(Icons.calendar_month),
                                fillColor: Colors.amber[200],
                                
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange)
                              ),
                              
                              ),
                              readOnly: true,
                              onTap: (){
                                _selectDate(context); // Pass the context here
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(width: 0.5,),
               Container(
                  height: 100,
                  width: 186,
                  color: Colors.amberAccent,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0,left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RETURN DATE",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 50,
                            width: 155,
                            child: TextField(
                              controller: _dateControl1,
                              decoration: InputDecoration(
                                
                              
                              //  labelText: "Date",
                                filled: true,
                                prefixIcon: Icon(Icons.calendar_month),
                                fillColor: Colors.amber[200],
                                
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange)
                              ),
                              
                              ),
                              readOnly: true,
                              onTap: (){
                                _selectDate1(context); // Pass the context here
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(height: 0.5,),
            Row(
              children: [
                Container(
  height: 100,
  width: 186,
  color: Colors.amberAccent,
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "CABIN:",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        Center(
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.amber[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: DropdownButton<String>(
                value: _dropDownCabin,
                items: _itemsCabin.map<DropdownMenuItem<String>>((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _dropDownCabin = newValue!;
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

                Container(width: 0.5,),
                              Container(
  height: 100,
  width: 186,
  color: Colors.amberAccent,
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "PASSENGERS:",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        Center(
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: _incrementCounter,
                                ),
                                Text(
                                    '$_counter',
                                    style: Theme.of(context).textTheme.headline4,
                                  ),
                                  IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: _decreaseCounter,
                                ),
                      
                        ],
                      ),
                    ),
                  ),
                   
                ],
              ),
            ),
          ),
        )
      ],
    ),
  ),
),
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              child:GestureDetector(
  onTap: () {},
  child: Container(
    width: 400,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80.0), // Adjust as needed
            ),
      color: Colors.amber,
    ),
    child: Center(child: Text('Search Flight' ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
  ),
)
            ),
          ) 
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
     DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now() ,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (_picked!=null){
      setState(() {
        _dateControl.text=_picked.toString().split(" ")[0];
      });
    }
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
        _dateControl1.text=_picked1.toString().split(" ")[0];
      });
    }
  }

   Widget oneWay() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "FROM:",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          DropdownButton<String>(
                            value: _departureCity,
                            items: _cities.map<DropdownMenuItem<String>>((city) {
                              return DropdownMenuItem<String>(
                                value: city,
                                child: Text(
                                  city,
                                  style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _departureCity = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TO:",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          DropdownButton<String>(
                            value: _arrivalCity,
                            items: _cities.map<DropdownMenuItem<String>>((city) {
                              return DropdownMenuItem<String>(
                                value: city,
                                child: Text(
                                  city,
                                  style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _arrivalCity = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.amberAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DEPARTURE DATE",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          TextField(
                            controller: _departureDateController,
                            decoration: InputDecoration(
                              filled: true,
                              prefixIcon: Icon(Icons.calendar_month),
                              fillColor: Colors.amber[200],
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange),
                              ),
                            ),
                            readOnly: true,
                            onTap: () {
                              _selectDepartureDate(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "RETURN DATE",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          TextField(
                            controller: _returnDateController,
                            decoration: InputDecoration(
                              filled: true,
                              prefixIcon: Icon(Icons.calendar_month),
                              fillColor: Colors.red[200],
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange),
                              ),
                            ),
                            readOnly: true,
                            onTap: () {
                              
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.amberAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CABIN:",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          DropdownButton<String>(
                            value: _selectedCabin,
                            items: _cabins.map<DropdownMenuItem<String>>((cabin) {
                              return DropdownMenuItem<String>(
                                value: cabin,
                                child: Text(
                                  cabin,
                                  style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedCabin = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.amberAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PASSENGERS:",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: _incrementPassengerCounter,
                              ),
                              Text(
                                '$_passengerCounter',
                                style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: _decreasePassengerCounter,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 400,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80.0), // Adjust as needed
                  ),
                  color: Colors.amber,
                ),
                child: Center(child: Text('Search Flight', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDepartureDate(BuildContext context) async {
    DateTime? _pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (_pickedDate != null) {
      setState(() {
        _departureDateController.text = _pickedDate.toString().split(" ")[0];
      });
    }
  }

  Future<void> _selectReturnDate(BuildContext context) async {
    DateTime? _pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (_pickedDate != null) {
      setState(() {
        _returnDateController.text = _pickedDate.toString().split(" ")[0];
      });
    }
  }
}


