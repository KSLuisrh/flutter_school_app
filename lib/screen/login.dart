import 'package:flutter/material.dart';
import 'package:flutter_school_app/screen/home_instructor.dart';
import 'package:flutter_school_app/screen/home_student.dart';
import 'package:flutter_school_app/screen/register.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xff297F87),
          child: Center(
              child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  child: ClipOval(
                    child: Image.network(
                      'https://api.multiavatar.com/Major%20Machine.png',
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        TextField(
                          style: TextStyle(color: Color(0xffFFF7AE)),
                          decoration: new InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffFFF7AE), width: 2.0),
                              ),
                              border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Color(0xffFFF7AE))),
                              labelText: 'Username',
                              labelStyle: TextStyle(color: Color(0xffFFF7AE)),
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Color(0xffFFF7AE),
                              ),
                              suffixStyle:
                                  const TextStyle(color: Color(0xffFFF7AE))),
                        ),
                        SizedBox(
                          child: Container(
                            height: 30,
                          ),
                        ),
                        TextField(
                          style: TextStyle(color: Color(0xffFFF7AE)),
                          decoration: new InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffFFF7AE), width: 2.0),
                              ),
                              border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Color(0xffFFF7AE))),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Color(0xffFFF7AE)),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Color(0xffFFF7AE),
                              ),
                              suffixStyle:
                                  const TextStyle(color: Color(0xffFFF7AE))),
                        ),
                        SizedBox(
                          child: Container(
                            height: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              child: Row(
                                children: [
                                  Text(
                                    'Create Account',
                                    style: TextStyle(
                                        color: Color(0xffFFF7AE), fontSize: 15),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xffFFF7AE),
                                  )
                                ],
                              ),
                              onTap: () {
                                Get.to(Register());
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          child: Container(
                            height: 20,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffDF2E2E),
                              minimumSize: Size(double.infinity, 50)),
                          onPressed: () {
                            Get.to(HomeInstructor());
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Color(0xffFFF7AE), fontSize: 15),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ))),
    );
  }
}
