import 'package:flutter/material.dart';

class SessionList extends StatelessWidget {
  const SessionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _entries = <String>[
      'item',
      'item',
      'item Royal',
      'item',
      'item',
    ];

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, idx) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xffFFF7AE))),
                child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  child: Text(
                                    'Live Session',
                                    style: TextStyle(
                                        color: Color(0xffFFF7AE), fontSize: 20),
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Flutter live session',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Color(0xffFFF7AE), fontSize: 13),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '06-11-2021 ',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Color(0xffFFF7AE), fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '7:30 - 8:30',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Color(0xffFFF7AE), fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffF6D167)),
                                onPressed: () {},
                                child: Text('Join'))
                          ],
                        )
                      ],
                    )),
              );
            },
            separatorBuilder: (BuildContext context, int index) => Container(
                  height: 10,
                  width: 10,
                ),
            itemCount: _entries.length),
      ),
    );
  }
}
