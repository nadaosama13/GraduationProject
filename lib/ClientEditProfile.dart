import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ClientEditProfile extends StatelessWidget{
  Color firstColor = const Color(0xFFE8F1F0);
  Color secondColor =const Color(0xFFD7D715);
  Color ThirdColor =const Color(0xFF312E2E);
  Color FourthColor =const Color(0xFF5A9DB6);
  get checkedValue => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white ,


        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Container(
            height: 35,
            padding: const EdgeInsets.all(200),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Epanel-logo-white.gif')),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              width: double.infinity,
              height: 100.00,
              decoration: BoxDecoration(
                  color: const Color(0xffEEEEEE),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: const EdgeInsets.only(left: 1.0, bottom: 0.0),
                    child: Container(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.check,
                            color: Colors.black,
                          ),
                          onPressed: (){},
                        )

                    ) ,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 10.0,),
                          const Text('Edit Profile',
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color:const Color(0xFF5A9DB6),
                            ),
                          ),
                          //---------------------------------------------------------------------------------------------------------
                          //photo
                          const SizedBox(height:15.0,),
                          Padding(padding: const EdgeInsets.only(left: 13.0,),
                            child: Container(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: FourthColor,
                              ),
                            ) ,
                          ),
                          //---------------------------------------------------------------------------------------------------------
                          const  SizedBox(height: 20.0,),
                          const Center(
                            child: Text("change profile photo",
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 20,
                              ),),
                          ),
                          //---------------------------------------------------------------------------------------------------------

                          const SizedBox(height:30.0,),
                          Material(borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            child:  TextFormField(keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Name',
                                labelStyle: TextStyle(
                                  color: FourthColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                            ) ,

                          ),
                          // ----------------------------------------------------------------------------------
                          //Username
                          const SizedBox(height:23.0,),
                          Material(borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            child:  TextFormField(keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                labelStyle: TextStyle(
                                  color:FourthColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                            ) ,

                          ),
                          //-----------------------------------------------------------------------------------
                          //Username
                          const SizedBox(height:23.0,),
                          Material(borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            child:  TextFormField(keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Governate',
                                labelStyle: TextStyle(
                                  color: FourthColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                            ) ,

                          ),
                          //-----------------------------------------------------------------------------------
                          //Username
                          const SizedBox(height:23.0,),
                          Material(borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            child:  TextFormField(keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Station',
                                labelStyle: TextStyle(
                                  color: FourthColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                            ) ,

                          ),
                          //-----------------------------------------------------------------------------------
                          //Username
                          const SizedBox(height:23.0,),
                          Material(borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            child:  TextFormField(keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Product Type',
                                labelStyle: TextStyle(
                                  color: FourthColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                            ) ,

                          ),
                          //----------------------------------------------------------------------------------
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
    );

  }



}

