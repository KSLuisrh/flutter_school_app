import 'package:flutter/material.dart';
import 'package:flutter_school_app/widgets/announcements_list.dart';

class Sessions extends StatelessWidget {
  const Sessions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff297F87),
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
            AnnouncementsList()
          ],
        ),
      ),
    );
  }
}
