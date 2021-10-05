import 'package:flutter/material.dart';

class AnnouncementsList extends StatelessWidget {
  const AnnouncementsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _entries = <String>[
      'item',
      'item',
      'item',
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
                  margin: EdgeInsets.only(left: 10, right: 10),
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
                                  'Announcement',
                                  style: TextStyle(
                                      color: Color(0xffFFF7AE), fontSize: 20),
                                ),
                              )),
                          Container(
                            width: 200,
                            child: Text(
                              'Dear friends stay tuned for the flutter live session',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xffFFF7AE), fontSize: 13),
                            ),
                          )
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
