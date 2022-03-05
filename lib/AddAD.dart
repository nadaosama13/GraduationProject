import 'package:flutter/material.dart';

class AddAD extends StatelessWidget {
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
            /* actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ],*/
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
                    'Add Ad',
                    style: TextStyle(
                        fontSize: 41,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff44b7e2),
                        fontFamily: 'Poppins'),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 55, top: 17),
                    child: Text(
                      'Add ad attachment',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: const Color(0xff0c0c0c),
                          fontWeight: FontWeight.w500),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 65, top: 17, right: 65),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black38,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 220),
                      child: IconButton(
                        icon: Icon(Icons.attachment_outlined),
                        iconSize: 34,
                        color: const Color(0xffe62a0e),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 55, top: 17),
                    child: Text(
                      'Add Duration',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: const Color(0xff0c0c0c),
                          fontWeight: FontWeight.w500),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 65, top: 17, right: 65),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black38,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 220),
                      child: IconButton(
                        icon: Icon(Icons.calendar_today_outlined),
                        iconSize: 25,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 55, top: 17),
                    child: Text(
                      'View Payment',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: const Color(0xff0c0c0c),
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
          ),
        ));
  }
}
