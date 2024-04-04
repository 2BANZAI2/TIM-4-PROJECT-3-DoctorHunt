import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'home_screen.dart'; // Import the home screen file

class AppointmentSetting extends StatefulWidget {
  const AppointmentSetting({Key? key}) : super(key: key);

  @override
  State<AppointmentSetting> createState() => _AppointmentSettingState();
}

class _AppointmentSettingState extends State<AppointmentSetting> {
  Color? selectedAvailableColor;
  String? selectedAvailableText;
  Color? selectedReminderColor;
  String? selectedReminderText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'), // Background image path
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Back Button
          Positioned(
            top: 30,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          // Title Text
          const Positioned(
            top: 25,
            left: 55,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Appointment',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          // Calendar inside white container with rounded corners
          Positioned(
            top: 80,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).size.height / 2.3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9), // Rounded corners
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: SafeArea(
                child: SfCalendar(
                  view: CalendarView.month,
                  dataSource: _getCalendarDataSource(),
                ),
              ),
            ),
          ),
          // Container below the calendar
          Positioned(
            bottom: 0, // Adjust position as needed
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.4,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20),
                    child: Text(
                      'Available Time',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        6,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedAvailableColor =
                                  Colors.greenAccent.shade100;
                              selectedAvailableText = '${(index + 10)}:00 AM';
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor:
                                selectedAvailableText == '${(index + 10)}:00 AM'
                                    ? Colors.green
                                    : Colors.greenAccent.shade100,
                            radius: 20,
                            child: Text(
                              '${(index + 10)}:00 AM',
                              style: TextStyle(
                                  color: selectedAvailableText ==
                                          '${(index + 10)}:00 AM'
                                      ? Colors.white
                                      : Colors.green,
                                  fontSize: 8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 2),
                    child: Text(
                      'Reminder Before Me',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        6,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedReminderColor =
                                  Colors.greenAccent.shade100;
                              selectedReminderText = '${(index + 1) * 15} min.';
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: selectedReminderText ==
                                    '${(index + 1) * 15} min.'
                                ? Colors.green
                                : Colors.greenAccent.shade100,
                            radius: 20,
                            child: Text(
                              '${(index + 1) * 15} min.',
                              style: TextStyle(
                                  color: selectedReminderText ==
                                          '${(index + 1) * 15} min.'
                                      ? Colors.white
                                      : Colors.green,
                                  fontSize: 8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Confirm Button
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Center(
                        child: Container(
                          width: 270,
                          height: 40,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xFF0EBE7F),
                          ),
                          child: TextButton(
                            child: const Text(
                              'Confirm',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _DataSource _getCalendarDataSource() {
    List<Appointment> appointments = <Appointment>[];

    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    appointments.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'Meeting',
      color: Colors.blue,
    ));

    return _DataSource(appointments);
  }
}

class _DataSource extends CalendarDataSource {
  _DataSource(List<Appointment> source) {
    appointments = source;
  }
}
