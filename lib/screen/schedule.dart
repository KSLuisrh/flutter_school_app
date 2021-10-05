import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final kFirstDay = DateTime(
      DateTime.now().year, DateTime.now().month - 3, DateTime.now().day);
  final kLastDay = DateTime(
      DateTime.now().year, DateTime.now().month + 3, DateTime.now().day);
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff297F87),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(
                        colors: [Color(0xffF6D167), Color(0xffFFF7AE)]),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: new Offset(0.0, 5))
                    ]),
                child: TableCalendar(
                  selectedDayPredicate: (day) {
                    // Use `selectedDayPredicate` to determine which day is currently selected.
                    // If this returns true, then `day` will be marked as selected.

                    // Using `isSameDay` is recommended to disregard
                    // the time-part of compared DateTime objects.
                    return isSameDay(selectedDay, day);
                  },
                  firstDay: kFirstDay,
                  lastDay: kLastDay,
                  focusedDay: focusedDay,
                  calendarFormat: CalendarFormat.month,
                  calendarStyle: CalendarStyle(
                      canMarkersOverflow: true,
                      // markerDecoration: Colors.white,
                      // weekdayStyle: TextStyle(color: Colors.white),
                      todayDecoration: BoxDecoration(color: Colors.white54),
                      todayTextStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      selectedTextStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      selectedDecoration: BoxDecoration(color: Colors.amber)
                      // outsideWeekendStyle: TextStyle(color: Colors.white60),
                      // outsideStyle: TextStyle(color: Colors.white60),
                      // weekendStyle: TextStyle(color: Colors.white),
                      // renderDaysOfWeek: false,
                      ),
                  // onDaySelected: _onDaySelected,
                  // calendarController: _calendarController,
                  // events: _events,
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      print('asdsadasd');
                      selectedDay = selectedDay;
                      focusedDay = focusedDay;
                    });
                  },
                  headerStyle: HeaderStyle(
                      leftChevronIcon: Icon(Icons.arrow_back_ios,
                          size: 15, color: Colors.white),
                      rightChevronIcon: Icon(Icons.arrow_forward_ios,
                          size: 15, color: Colors.white),
                      // titleTextStyle:
                      //     GoogleFonts.montserrat(color: Colors.white, fontSize: 16),
                      formatButtonDecoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // formatButtonTextStyle: GoogleFonts.montserrat(
                      //     color: Colors.red, fontSize: 13, fontWeight: FontWeight.bold),
                      formatButtonVisible: false),
                  onPageChanged: (focusedDay) {
                    // No need to call `setState()` here
                    focusedDay = focusedDay;
                  },
                )),
            ElevatedButton(onPressed: () {}, child: Text('Create Session'))
          ],
        ));
  }
}
