import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Profile',
                    style: TextStyle(color: Color(0xffF6D167), fontSize: 18),
                  ),
                ),
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
                              labelText: 'Student ID',
                              labelStyle: TextStyle(color: Color(0xffFFF7AE)),
                              prefixIcon: const Icon(
                                Icons.credit_card,
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
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffF6D167),
                              minimumSize: Size(double.infinity, 50)),
                          onPressed: () {},
                          child: Text(
                            'Save Changes',
                            style: TextStyle(fontSize: 15),
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
