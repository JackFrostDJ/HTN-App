import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'calendar.dart';
import 'package:intl/intl.dart';

class Calendar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our Initial Calendar',
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: SfCalendar(
            view: CalendarView.schedule,
            scheduleViewSettings: ScheduleViewSettings(
              appointmentItemHeight: 70,
              hideEmptyScheduleWeek: true,
            ),
            dataSource: _getCalendarDataSource(),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          label: Text('Approve'),
          icon: Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}

_AppointmentDataSource _getCalendarDataSource() {
  List<Appointment> appointments = <Appointment>[];

  DateTime dateTime = DateFormat('dd-MM-yyyy h:mm:ssa', 'en_US')
      .parseLoose('17-01-2021 9:00:00AM');

  appointments.add(Appointment(
    startTime: dateTime.add(Duration(days: 1)),
    endTime: dateTime.add(Duration(days: 1, hours: 1)),
    subject: 'Yoga on glo.com',
    color: Colors.green,
    startTimeZone: '',
    endTimeZone: '',
  ));

  appointments.add(Appointment(
    startTime: dateTime.add(Duration(days: 1, hours: 1)),
    endTime: dateTime.add(Duration(days: 1, hours: 2)),
    subject: 'Make Omlette Breakfast',
    color: Colors.orange,
    startTimeZone: '',
    endTimeZone: '',
  ));

  appointments.add(Appointment(
    startTime: dateTime.add(Duration(days: 1, hours: 2)),
    endTime: dateTime.add(Duration(days: 1, hours: 5)),
    subject: 'Group Work Session with Friends',
    color: Colors.blue,
    startTimeZone: '',
    endTimeZone: '',
  ));

  appointments.add(Appointment(
    startTime: dateTime.add(Duration(days: 1, hours: 5)),
    endTime: dateTime.add(Duration(days: 1, hours: 6)),
    subject: 'Make Creamy Penne Lunch',
    color: Colors.orange,
    startTimeZone: '',
    endTimeZone: '',
  ));

  appointments.add(Appointment(
    startTime: dateTime.add(Duration(days: 1, hours: 6)),
    endTime: dateTime.add(Duration(days: 1, hours: 9)),
    subject: 'Independent Grind Session',
    color: Colors.blue,
    startTimeZone: '',
    endTimeZone: '',
  ));

  appointments.add(Appointment(
    startTime: dateTime.add(Duration(days: 1, hours: 9)),
    endTime: dateTime.add(Duration(days: 1, hours: 10)),
    subject: 'Online Escape Room on escapeit.com',
    color: Colors.green,
    startTimeZone: '',
    endTimeZone: '',
  ));

  return _AppointmentDataSource(appointments);
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}
