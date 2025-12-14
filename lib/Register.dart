import 'dart:ui';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  File? image;
  final ImagePicker picker = ImagePicker();

  Future pickImage() async {
    final XFile? pickedImage = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                child: Image.asset(
                  "images/RegisterPagePhoto.jpg",
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 314,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: 538,
                      width: 393,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.34),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(135),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 38),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 24),

                            Container(
                              child: Text(
                                "REGISTER",
                                style: TextStyle(
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      blurRadius: 4,
                                      offset: Offset(0, 6),
                                    ),
                                  ],
                                  decoration: TextDecoration.none,
                                  fontFamily: "SemiBold",
                                  fontSize: 48,
                                  color: Color(0xff131925),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "first name",
                                    style: TextStyle(
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.25),
                                          blurRadius: 4,
                                          offset: Offset(0, 6),
                                        ),
                                      ],
                                      decoration: TextDecoration.none,
                                      fontFamily: "Regular",
                                      fontSize: 16,
                                      color: Color(0xff131925),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Container(
                                  height: 20,
                                  width: 62,
                                  child: Form(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xff131925),
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 14),
                                Container(
                                  child: Text(
                                    "last name",
                                    style: TextStyle(
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.25),
                                          blurRadius: 4,
                                          offset: Offset(0, 6),
                                        ),
                                      ],
                                      decoration: TextDecoration.none,
                                      fontFamily: "Regular",
                                      fontSize: 16,
                                      color: Color(0xff131925),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Container(
                                  height: 20,
                                  width: 62,
                                  child: Form(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xff131925),
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Birthday :",
                                    style: TextStyle(
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.25),
                                          blurRadius: 4,
                                          offset: Offset(0, 6),
                                        ),
                                      ],
                                      decoration: TextDecoration.none,
                                      fontFamily: "Regular",
                                      fontSize: 16,
                                      color: Color(0xff131925),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Container(
                                  margin: EdgeInsets.only(left: 34),
                                  child: Text(
                                    "d",
                                    style: TextStyle(
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.25),
                                          blurRadius: 4,
                                          offset: Offset(0, 6),
                                        ),
                                      ],
                                      decoration: TextDecoration.none,
                                      fontFamily: "Regular",
                                      fontSize: 16,
                                      color: Color(0xff131925),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Container(
                                  height: 20,
                                  width: 35,
                                  child: Form(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xff131925),
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 14),
                                Container(
                                  child: Text(
                                    "m",
                                    style: TextStyle(
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.25),
                                          blurRadius: 4,
                                          offset: Offset(0, 6),
                                        ),
                                      ],
                                      decoration: TextDecoration.none,
                                      fontFamily: "Regular",
                                      fontSize: 16,
                                      color: Color(0xff131925),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Container(
                                  height: 20,
                                  width: 35,
                                  child: Form(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xff131925),
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 14),
                                Container(
                                  child: Text(
                                    "y",
                                    style: TextStyle(
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.25),
                                          blurRadius: 4,
                                          offset: Offset(0, 6),
                                        ),
                                      ],
                                      decoration: TextDecoration.none,
                                      fontFamily: "Regular",
                                      fontSize: 16,
                                      color: Color(0xff131925),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Container(
                                  height: 20,
                                  width: 64,
                                  child: Form(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xff131925),
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    "personal&personal ID Images",
                                    style: TextStyle(
                                      color: Color(0xff131925),
                                      fontFamily: "Regular",
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 24,
                                  width: 24,
                                  margin: EdgeInsets.only(left: 14),
                                  decoration: BoxDecoration(
                                    color: Color(0xff131925),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      alignment: Alignment.topLeft,
                                      onPressed: () {},
                                      icon: Icon(
                                        size: 14,
                                        Icons.exit_to_app_sharp,
                                        color: Color(0xffC7B07B),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
