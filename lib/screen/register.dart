import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDF2E2E),
        iconTheme: IconThemeData(
          color: Color(0xffFFF7AE), //change your color here
        ),
        title: Text(
          'Register',
          style: TextStyle(color: Color(0xffFFF7AE)),
        ),
      ),
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
                              labelText: 'Full Name',
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
                                    'Go to Login',
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
                                Get.back();
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
                          onPressed: () {},
                          child: Text(
                            'Register',
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
