import 'dart:ui';

import 'package:flutter/material.dart';

class AddCategory extends StatefulWidget {
  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  final items = ['Black', 'Grey', 'Red', 'Blue'];

  final variable = ['Mercedes', 'BMW', 'Suzuki', 'Peugeot'];

  final carCategory = ['Taxi', 'Your own car'];

  String selectedItem = 'Black';

  String selectedVar = 'Mercedes';

  String selectedCategory = 'Taxi';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              leading: /*Container(
                child: Image.asset('assets/images/Epanel.png'),*/
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              //Container(child: Image.asset('assets/images/Epanel.png'),),
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Container(
                  height: 35,
                  padding: const EdgeInsets.all(200),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Epanel.png')),
                  ),
                ),
              ),
              foregroundColor: Colors.black,
              actions: [
                //IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              ],
              //Alt +Enter to change icon to button icon
              backgroundColor: Colors.white,
              centerTitle: true,
              elevation: 0,
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xffEEEEEE),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: ListView(shrinkWrap: true, children: [
                Padding(
                  padding: const EdgeInsets.only(left: 340, top: 12),
                  child: IconButton(
                    icon: Icon(Icons.check_rounded),
                    iconSize: 34,
                    onPressed: () {
                      print('The Material is saved');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Add Category',
                    style: TextStyle(
                        fontSize: 41,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffe62a0e),
                        fontFamily: 'Poppins'),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 50, top: 17),
                    child: Text(
                      'Car Color',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: const Color(0xff0c0c0c),
                          fontWeight: FontWeight.w500),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 70.0,
                    left: 65,
                    top: 15.0,
                  ),
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.only(
                      right: 16.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.black38,
                        )),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedItem,
                        isExpanded: true,
                        items: items.map(buildMenuItem).toList(),
                        onChanged: (newValueOne) {
                          setState(() {
                            selectedItem = newValueOne.toString();
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 50, top: 17),
                    child: Text(
                      'Car Model',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: const Color(0xff0c0c0c),
                          fontWeight: FontWeight.w500),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 70.0,
                    left: 65,
                    top: 15.0,
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                      right: 16.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.black38,
                        )),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedVar,
                        isExpanded: true,
                        hint: Text('Mercedes'),
                        items: variable.map(buildMenuItem).toList(),
                        onChanged: (newValueTwo) {
                          setState(() {
                            selectedVar = newValueTwo.toString();
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 50, top: 17),
                    child: Text(
                      'Manufactoring Year',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: const Color(0xff0c0c0c),
                          fontWeight: FontWeight.w500),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 65, top: 17, right: 70),
                  child: Container(
                    height: 48,
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        // errorText: 'Required',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 50, top: 17),
                    child: Text(
                      'Car Category',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: const Color(0xff0c0c0c),
                          fontWeight: FontWeight.w500),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 70.0,
                    left: 65,
                    top: 15.0,
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                      right: 16.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.black38,
                        )),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedCategory,
                        isExpanded: true,
                        items: carCategory.map(buildMenuItem).toList(),
                        onChanged: (newValueThree) {
                          setState(() {
                            selectedCategory = newValueThree.toString();
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ]),
            )));
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
      value: item,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
        ),
      ),
    );
  }
}
