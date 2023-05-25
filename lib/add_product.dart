


import 'dart:io';

import 'package:aklati_2/Home.dart';
import 'package:aklati_2/profile/nav.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {

    File? _imageFile;
  final picker = ImagePicker();

  Future<void> _selectImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
title: Text(
            "New Product",
            style: TextStyle(
                color: Colors.white, fontFamily: "Mulish-VariableFont"),
          ),
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
              
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20,
            ),
          ),
          centerTitle: true,      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: _selectImage,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: _imageFile != null
                    ? Image.file(
                        _imageFile!,
                        fit: BoxFit.cover,
                      )
                    : Icon(
                        Icons.add_photo_alternate,
                        color: Colors.grey[800],
                        size: 64.0,
                      ),
              ),
            ),
            SizedBox(height: 16.0),
           
               Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          margin: EdgeInsets.only(bottom: 30, top: 10),
                          child: Column(children: [
                            Text(
                              " add a new product!!",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mulish-VariableFont',
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(
                                  top: 15,
                                  left: 30,
                                  right: 30,
                                ),
                                child: Form(
                                    child: Column(children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.add_circle,
                                        color: Colors.blue
                                      ),
                                      hintText: " Product Name",
                                      labelText: " Name",
                                      labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontFamily: "Mulish-VariableFont"),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blue,
                                              width: 2.0)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.blue,
                                      )),
                                    ),
                                    keyboardType: TextInputType.name,
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.attach_money_outlined,
                                        color: Colors.blue
                                      ),
                                      hintText: "Price",
                                      labelText: "Price",
                                      labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontFamily: "Mulish-VariableFont"),
                                      border: OutlineInputBorder(
                                          // borderSide: BorderSide(width: 10,
                                          //color:Color.fromARGB(255, 66, 85, 54)
                                          // ),
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Colors.blue,
                                            width: 2.0),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.blue,
                                      )),
                                      
                                    ),
                                    //keyboardType: TextInputType.none,
                                    obscureText: true,
                                  ),
                                  SizedBox(height: 5),
                                
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      hintText: "Location",
                                      labelText: "Location",
                                      labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontFamily: "Mulish-VariableFont"),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blue,
                                              width: 2.0)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.blue,
                                      )),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.animation_outlined,
                                        color: Colors.blue,

                                      ),
                                      hintText: "Amount",
                                      labelText: "Amount",
                                      labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontFamily: "Mulish-VariableFont"),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                   color:Colors.blue,

                                              width: 2.0)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                   color:Colors.blue,
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  
                                  
                                  ElevatedButton(
                                    onPressed: () {
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        padding: EdgeInsets.all(15),
                                        minimumSize: Size(150.0, 30.0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        textStyle: TextStyle(
                                          fontFamily: 'Mulish-VariableFont',
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    child: Text(
                                      "Save",
                                    ),
                                  ),
                                ])))
                          ]))
          ],
        ),
      ),
    );
  }
}