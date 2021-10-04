import 'package:flutter/material.dart';

class AnnouncementsList extends StatelessWidget {
  const AnnouncementsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _entries = <String>[
      'Action',
      'Adventures',
      'Battle Royal',
      'Sport',
      'RPG',
      'DLC'
    ];

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
          height: 150,
          width: double.infinity,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, idx) {
                return Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xffFFF7AE))),
                  child: Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                child: Text(
                                  'Announcements',
                                  style: TextStyle(
                                      color: Color(0xffFFF7AE), fontSize: 20),
                                ),
                              )),
                              Text(
                                  'This is a sample to see the container width',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Color(0xffFFF7AE), fontSize: 12),
                                ),
                        ],
                      )),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Container(
                    height: 10,
                    width: 10,
                  ),
              itemCount: _entries.length)),
    );
  }
}
