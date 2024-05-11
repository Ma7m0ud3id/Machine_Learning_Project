import 'dart:math';

import 'package:flutter/material.dart';
import 'package:machine_learning_project/Api_Model.dart';
import 'package:machine_learning_project/Model.dart';

class Home_Leyout extends StatefulWidget {
  static const String routName ='HOME';




  @override
  State<Home_Leyout> createState() => _Home_LeyoutState();
}

class _Home_LeyoutState extends State<Home_Leyout> {

  List<String> dropOne = ['Chevrolet', 'Fiat', 'Hyundai'];
  List<String> dropTwo= [
    'Accent',
    'Avante',
    'I10',
    'Elantra',
    'Execl',
    'Matrix',
    'Tucson',
    'Verna',
    'Cruze',
    'Aveo',
    'Lanos',
    'Optra',
    '128',
    '131',
    'Punto',
    'Shahin',
    'Tipo',
    'Uno'
  ];
  List<String> dropThree= ['Hatchback', 'Sedan', 'SUV'];
  List<String> dropFour= [
    'Black',
    'Silver',
    'Gray',
    'Blue - Navy Blue',
    'Green',
    'Red',
    'Gold',
    'Other Color',
    'Burgundy',
    'White',
    'Yellow',
    'Brown',
    'Orange',
    'Beige',
  ];
  List<int> dropFive=[
    for (var year = 1970; year <= 2024; year++) year
  ];
  List<String> dropSix= ['Benzine', 'Natural Gas'];
  List<String> dropSeven=  ['Automatic', 'Manual'];
  List<String> dropEight=  [
    '140000 to 159999',
    '180000 to 199999',
    '10000 to 19999',
    'More than 200000',
    '90000 to 99999',
    '100000 to 119999',
    '160000 to 179999',
    '120000 to 139999',
    '0 to 9999',
    '20000 to 29999',
    '30000 to 39999',
    '80000 to 89999',
    '60000 to 69999',
    '70000 to 79999',
    '40000 to 49999',
    '50000 to 59999',
  ];
  List<String> dropNine=  [
    '1600 CC',
    '1000 - 1300 CC',
    '1400 - 1500 CC',
  ];
  List<String> dropTen=  [
    'Giza',
    'Qena',
    'Cairo',
    'Minya',
    'Alexandria',
    'Dakahlia',
    'Suez',
    'Sharqia',
    'Kafr al-sheikh',
    'Beheira',
    'Ismailia',
    'Sohag',
    'Monufia',
    'Qalyubia',
    'Beni Suef',
    'Asyut',
    'Fayoum',
    'Gharbia',
    'Matruh',
    'Damietta',
    'Red Sea',
    'Port Said',
    'Luxor',
    'South Sinai',
    'New Valley',
    'Aswan'
  ];

  var post;
  bool flag=false;
  String? _dropDownValue1='Chevrolet';
  String? _dropDownValue2='Accent';
  String? _dropDownValue3='Hatchback';
  String? _dropDownValue4='Black';
  String? _dropDownValue5='Benzine';
  String? _dropDownValue8='Automatic';
  String? _dropDownValue6='140000 to 159999';
  String? _dropDownValue7='1600 CC';
  String? _dropDownValue9='Giza';
  int? _dropDownValue10=1970;

  String selecte = '';


  @override
  Widget build(BuildContext context) {


    //دي العناصر الى هتتعرض فى drop button
    //بقي غيرها على حسب الداتا بتاعتك

    return Scaffold(

      appBar: AppBar(
        title: const Text('Mahmoud Eid',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500), textAlign: TextAlign.center),
        backgroundColor: Color(0xffb01e39),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff831086),
              Color(0xffa42717),
              Color(0xff8c0921)
            ])
        ),
        child:  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Brand',style: TextStyle(color: Colors.limeAccent,fontSize: 15,),),
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 16.0),
                     width: MediaQuery.of(context).size.width * 0.46,
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.grey),
                       borderRadius: BorderRadius.circular(8.0),
                     ),
                     child: Center(
                       child: DropdownButton<String>(
                          value:_dropDownValue1 ,

                           style: TextStyle(color: Colors.blue),

                         items: dropOne.map((String value) {
                           return DropdownMenuItem<String>(
                             value: value,
                             child: Text(value),
                           );
                         }).toList(),
                         onChanged: (_) {
                           setState(() {
                             _dropDownValue1 = _;
                             print("***********************************"+_dropDownValue1!);
                             },
                           );

                         },
                       ),
                     ),
                   )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Model',style: TextStyle(
                        color: Colors.limeAccent,fontSize: 15),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: DropdownButton<String>(

                            value:_dropDownValue2,
                            style: TextStyle(color: Colors.blue),

                          items: dropTwo.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              _dropDownValue2 = val!;
                            },
                            );

                          },
                        ),
                      ),
                    )
                    //customDropDownButton(selectedItem:selecte, items:dropOne ),
                  ],)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Body',style: TextStyle(color: Colors.limeAccent,fontSize: 15),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: DropdownButton<String>(

                            value: _dropDownValue3,
                            style: TextStyle(color: Colors.blue),

                          items: dropThree.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              _dropDownValue3 = val!;
                            },
                            );

                          },
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Color',style: TextStyle(color: Colors.limeAccent,fontSize: 15),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: DropdownButton<String>(

                            value:_dropDownValue4,
                            style: TextStyle(color: Colors.blue),

                          items: dropFour.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              _dropDownValue4 = val!;
                            },
                            );

                          },
                        ),
                      ),
                    )
                  ],)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Fuel',style: TextStyle(color: Colors.limeAccent,fontSize: 15),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: DropdownButton<String>(

                            value:_dropDownValue5,
                            style: TextStyle(color: Colors.blue),

                          items: dropSix.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              _dropDownValue5 = val!;
                            },
                            );

                          },
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Kilometers',style: TextStyle(color: Colors.limeAccent,fontSize: 15),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: DropdownButton<String>(

                            value:_dropDownValue6,
                            style: TextStyle(color: Colors.blue),

                          items: dropEight.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (val) {
                            _dropDownValue6 = val!;
                            setState(() {

                            });


                          },
                        ),
                      ),
                    )
                  ],)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                        width: 170,
                        child: Text('Engine ',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(color: Colors.limeAccent,fontSize: 15),)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: DropdownButton<String>(

                            value:_dropDownValue7,
                            style: TextStyle(color: Colors.blue),

                          items: dropNine.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              _dropDownValue7 = val!;
                            },
                            );

                          },
                        ),
                      ),
                    )

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                        width: 160,
                        child: Text('Transmission ',
                          overflow: TextOverflow.visible,
                          maxLines: 3,
                          style: TextStyle(color: Colors.limeAccent,fontSize: 15),)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: DropdownButton<String>(

                            value:_dropDownValue8,
                            style: TextStyle(color: Colors.blue),

                          items: dropSeven.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              _dropDownValue8 = val!;
                            },
                            );

                          },
                        ),
                      ),
                    )
                  ],)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Gov',style: TextStyle(color: Colors.limeAccent,fontSize: 15),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: DropdownButton<String>(

                            value:_dropDownValue9,
                            style: TextStyle(color: Colors.blue),

                          items: dropTen.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              _dropDownValue9 = val!;
                            },
                            );

                          },
                        ),
                      ),
                    )

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Year',style: TextStyle(color: Colors.limeAccent,fontSize: 15),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: DropdownButton<int>(

                            value:_dropDownValue10,
                            style: TextStyle(color: Colors.blue),

                          items: dropFive.map((int value) {
                            return DropdownMenuItem<int>(
                              value: value,
                              child: Text("${value}"),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              _dropDownValue10 = val;
                            },
                            );

                          },
                        ),
                      ),
                    )
                  ],)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(

                    onPressed: (){

                      flag=true;
                      setState(() {

                      });
                      print("///////////////////////////////////////////////////////////////${flag}");

                      /*post=ApiModel.getSources(Brand: _dropDownValue1!, Model: _dropDownValue2!, Body: _dropDownValue3!,
                          Color: _dropDownValue4!, Fuel: _dropDownValue5!, Kilometers: _dropDownValue6!,
                          Engine: _dropDownValue7!, Transmission: _dropDownValue8!, Gov: _dropDownValue9!, Year: _dropDownValue10!);
                      setState(() {

                      });*/
                      //      API     API     API   API     ///


                    },
                    minWidth: 180,
                    height: 50,
                    color: Color(0xffb01e39),
                    child: const Text('Predict',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                )
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                flag==true?
                  Expanded(
                      flex: 1,
                    child:FutureBuilder<PredictionModel>(
                      future: ApiModel.getSources(Brand: _dropDownValue1! ,
                          Model: _dropDownValue2!, Body: _dropDownValue3!,
                          Color: _dropDownValue4!, Fuel: _dropDownValue5!,
                          Kilometers: _dropDownValue6!,
                          Engine: _dropDownValue7!, Transmission: _dropDownValue8!,
                          Gov: _dropDownValue9!, Year: _dropDownValue10!),

                            builder: (_,snapShot) {
                         if (snapShot.connectionState ==
                             ConnectionState.waiting) {
                           return Center(child: CircularProgressIndicator(
                             color: Colors.black,));
                         }
                         if (snapShot.hasError) {
                           print('........................................................${snapShot.error}');
                           return Column(
                             children: [
                               Text('Something went wrong'),
                               ElevatedButton(
                                   onPressed: () {}, child: Text('Try Again')),
                             ],
                           );
                         } else if (snapShot.hasData) {
                                 flag=false;
                                return Center(
                                  child: Text(
                                    'Prediction: ${snapShot.data!.prediction}',
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                                  ),
                                );
                         } else {
                               flag=false;
                                return Center(child: Text('No data available'));
                              }

                              /*
                         print("///////////////////////////////////////////////////////////////${flag}");
                          var Prediction=snapShot.data?.prediction.first??'';
                         print("///////////////////////////////////////////////////////////////${snapShot.data?.prediction.first}");

                             //snapShot.data?.prediction;

                         return  Text('${Prediction}');*/
                       }
                    )
                  )
                  /*Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('No Api',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                  )*/:Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('No Api',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),)


              ],)

          ],
        ),
      ),
    );
  }
  /////////////////////////////////




  Widget customDropDownButton( {required List<String> items,required String? selectedItem}){
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child:  Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child:  DropdownButton<String>(
            isExpanded: true,
            value: null,
            hint: Text('Select an item'),
            onChanged: (newValue) {
              setState(() {
                selectedItem = newValue!;
              });
            },
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
          ),
        ),


     /* SizedBox(height: 16.0),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          onChanged: (String value) {
            setState(() {
              selectedItem = value;
            });
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Search',
          ),
        ),
      ),*/
    );
  }

////////////////
}
/// State Management  ///
/*final number1=StateProvider<String>((ref) => 'chevorlet');
final number2=StateProvider<String>((ref) => 'Accent');
final number3=StateProvider<String>((ref) => 'Hatchback');
final number4=StateProvider<String>((ref) => 'Black');
final number5=StateProvider<String>((ref) => '1970');
final number6=StateProvider<String>((ref) => 'Benzine');
final number7=StateProvider<String>((ref) => 'Automatic');
final number8=StateProvider<String>((ref) => '140000');
final number9=StateProvider<String>((ref) => '1600 cc');
final number10=StateProvider<String>((ref) => 'Giza');
*/


/*
 DropdownButton(
          hint: _dropDownValue == null
              ? Text('Dropdown')
              : Text(
            _dropDownValue,
            style: TextStyle(color: Colors.blue),
          ),
          isExpanded: true,
          iconSize: 30.0,
          style: TextStyle(color: Colors.blue),
          items: ['One', 'Two', 'Three'].map(
                (val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val),
              );
            },
          ).toList(),
          onChanged: (val) {
            setState(
                  () {
                _dropDownValue = val;
              },
            );
          },
        )
 */