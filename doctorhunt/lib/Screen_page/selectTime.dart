import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectTime extends StatefulWidget {
  final String image;
  final String doctorName;
  final String location;

  const SelectTime({
    Key? key,
    required this.image,
    required this.doctorName,
    required this.location,
  }) : super(key: key);

  @override
  State<SelectTime> createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  late DateTime currentDate;
  late DateTime tomorrowDate;
  late DateTime nextDayDate;
  bool isLiked = false;
  Set<TimeOfDay> selectedTimeSlots = Set<TimeOfDay>();

  @override
  void initState() {
    super.initState();
    currentDate = DateTime.now();
    tomorrowDate = currentDate.add(const Duration(days: 1));
    nextDayDate = currentDate.add(const Duration(days: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'), // Background image path
                fit: BoxFit.fill,
              ),
            ),
          ),
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
          Positioned(
            top: 70,
            left: 20,
            right: 20,
            child: Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50, // Adjust the width of the image container
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(3.0),
                            child: Image.asset(
                              widget.image,
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.doctorName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.location,
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 10,
                                ),
                              ),
                              const SizedBox(height: 3),
                              const Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,size: 10,),
                                  Icon(Icons.star,color: Colors.yellow,size: 10,),
                                  Icon(Icons.star,color: Colors.yellow,size: 10,),
                                  Icon(Icons.star,color: Colors.yellow,size: 10,),
                                  Icon(Icons.star,color: Colors.grey,size: 10,),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                      child: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        size: 15,
                        color: isLiked ? Colors.red : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 0,
            right: 0,
            bottom: 0,
            child: DefaultTabController(
              length: 3, // Number of tabs
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: TabBar(
                      tabs: [
                        Tab(
                          child: Text(
                            'Today, ${currentDate.day} ${DateFormat.MMM().format(currentDate)}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Tomorrow, ${tomorrowDate.day} ${DateFormat.MMM().format(tomorrowDate)}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Next Day, ${nextDayDate.day} ${DateFormat.MMM().format(nextDayDate)}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        // Today Tab Content
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('No slots available'),
                              const SizedBox(height: 8),
                              const Text(
                                  'Next Availability: 7:00 PM, Tomorrow'),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle contact clinic
                                },
                                child: const Text('Contact Clinic'),
                              ),
                            ],
                          ),
                        ),
                        // Morning/Afternoon/Evening Tab Content
                        buildTimeSlotsGrid(),
                        buildTimeSlotsGrid(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTimeSlotsGrid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTimeSlotSection('Afternoon Slots', 13, 16, selectedTimeSlots),
        const SizedBox(height: 10),
        buildTimeSlotSection('Evening Slots', 17, 19, selectedTimeSlots),
      ],
    );
  }

  Widget buildTimeSlotSection(String title, int startHour, int endHour, Set<TimeOfDay> selectedTimeSlots) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          childAspectRatio: 2.0,
          children: List.generate(
            (endHour - startHour + 1) * 2, // Number of time slots (each slot is 30 minutes)
            (index) {
              final hour = startHour + (index ~/ 2);
              final minute = (index % 2) * 30;
              final time = TimeOfDay(hour: hour, minute: minute);
              return buildTimeSlotCard(time, selectedTimeSlots.contains(time));
            },
          ),
        ),
      ],
    );
  }

  Widget buildTimeSlotCard(TimeOfDay time, bool isSelected) {
    return InkWell(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedTimeSlots.remove(time);
          } else {
            selectedTimeSlots.add(time);
          }
        });
      },
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        color: isSelected ? Colors.greenAccent : Colors.white,
        child: Center(
          child: Text(
            '${time.hourOfPeriod}:${time.minute == 0 ? '00' : time.minute} ${time.period == DayPeriod.am ? 'AM' : 'PM'}',
            style: TextStyle(color: isSelected ? Colors.white : Colors.green),
          ),
        ),
      ),
    );
  }
}
