import 'package:flutter/material.dart';
import 'package:flutter_school_app/widgets/announcements_list.dart';
import 'package:flutter_school_app/widgets/sessions_list.dart';

class Sessions extends StatelessWidget {
  const Sessions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xff297F87),
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      'Announcements',
                      style: TextStyle(color: Color(0xffF6D167), fontSize: 20),
                    ),
                  )),
              AnnouncementsList(),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Sessions',
                      style: TextStyle(color: Color(0xffF6D167), fontSize: 20),
                    ),
                  )),
              SessionList()
            ],
          ),
        ),
      ),
    );
  }
}
