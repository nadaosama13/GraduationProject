import 'package:flutter/material.dart';

class AddCar2 extends StatefulWidget {
  @override
  State<AddCar2> createState() => _AddCar2State();
}

class _AddCar2State extends State<AddCar2> {
  final items = ['Gold', 'Silver', 'Basic'];

  String? value;

  @override
  Widget build(BuildContext context) {
    //int itemCount;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // app bar:will give me the header of the screen elle hn7ot feha el arrow + el logo
        //appBar da parameter mn el AppBar da el class el kber
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
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
          child: ListView(
            children: [
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  //itemCount = 20,
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          'Add Car',
                          style: TextStyle(
                              fontSize: 41,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffe62a0e),
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 60.0, top: 30.0, right: 60.0),
                        child: Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  right: 65.0, bottom: 15.0),
                              child: Text(
                                'Add Number of cars ',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                    color: const Color(0xff0c0c0c),
                                    fontWeight: FontWeight.w500),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10.0,
                              bottom: 10.0,
                            ),
                            child: Container(
                              height: 55,
                              child: TextFormField(
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
                              padding: const EdgeInsets.only(
                                  right: 65.0, bottom: 15.0),
                              child: Text(
                                'Get tracking number ',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                    color: const Color(0xff0c0c0c),
                                    fontWeight: FontWeight.w500),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10.0,
                              bottom: 10.0,
                            ),
                            child: Container(
                              height: 55,
                              child: TextFormField(
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
                              padding: const EdgeInsets.only(
                                  right: 85.0, bottom: 15.0),
                              child: Text(
                                'Choose your offer',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                    color: const Color(0xff0c0c0c),
                                    fontWeight: FontWeight.w500),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                right: 10.0,
                                bottom: 10.0,
                              ),
                              child: Container(
                                width: 600,
                                height: 55,
                                padding: const EdgeInsets.only(
                                  right: 10.0,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: Colors.black38,
                                    )),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    iconSize: 30,
                                    isExpanded: true,
                                    icon: Icon(
                                      Icons.arrow_circle_down,
                                      color: Colors.black38,
                                    ),
                                    value: value,
                                    items: items.map(buildMenuItem).toList(),
                                    onChanged: (value) =>
                                        setState(() => this.value = value),
                                  ),
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  right: 140.0, bottom: 15.0),
                              child: Text(
                                'Destination',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                    color: const Color(0xff0c0c0c),
                                    fontWeight: FontWeight.w500),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                right: 10.0,
                                bottom: 10.0,
                              ),
                              child: Container(
                                width: 600,
                                height: 55,
                                padding: const EdgeInsets.only(
                                  right: 10.0,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: Colors.black38,
                                    )),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    iconSize: 30,
                                    isExpanded: true,
                                    icon: Icon(
                                      Icons.arrow_circle_down,
                                      color: Colors.black38,
                                    ),
                                    value: value,
                                    items: items.map(buildMenuItem).toList(),
                                    onChanged: (value) =>
                                        setState(() => this.value = value),
                                  ),
                                ),
                              ))
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
      ));

  //setState(String? Function() param0) {}
}
