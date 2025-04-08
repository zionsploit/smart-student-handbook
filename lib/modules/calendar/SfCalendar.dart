// ignore_for_file: non_constant_identifier_names, constant_identifier_names
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarEvents extends StatefulWidget {
  const CalendarEvents({super.key});

  @override
  State<CalendarEvents> createState() => _CalendarEventsState();
}

class _CalendarEventsState extends State<CalendarEvents> {
  late Future<List<Events>> events;

  @override
  void initState() {
    super.initState();
    events = getEvents();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Events>>(
      future: events,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Error: ${snapshot.error}'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      events = getEvents();
                    });
                  },
                  child: Text('Retry'),
                ),
              ],
            ),
          );
        }

        final eventsList = snapshot.data!;

        if (eventsList.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No events found'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      events = getEvents();
                    });
                  },
                  child: Text('Refresh'),
                ),
              ],
            ),
          );
        }

        return SfCalendar(
          headerStyle: CalendarHeaderStyle(
            textStyle: TextStyle(fontWeight: FontWeight.bold),
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          ),
          viewHeaderStyle: ViewHeaderStyle(
            dayTextStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
          showTodayButton: true,
          showCurrentTimeIndicator: true,
          showDatePickerButton: true,
          showNavigationArrow: true,
          dataSource: EventsDataSource(eventsList),
          view: CalendarView.month,
          monthViewSettings: MonthViewSettings(
            showAgenda: true,
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
            monthCellStyle: MonthCellStyle(
              textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            agendaViewHeight: 150,
            agendaItemHeight: 50,
          ),
          cellBorderColor: const Color.fromARGB(0, 255, 255, 255),
          appointmentBuilder: (context, details) {
            final event = details.appointments.first as Events;
            return Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: const Color(0xFF0F8644),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                event.event_name,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
        );
      },
    );
  }
}

class EventsDataSource extends CalendarDataSource {
  EventsDataSource(List<Events> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    final event = _getEventData(index);
    return event.event_date;
  }

  @override
  DateTime getEndTime(int index) {
    final event = _getEventData(index);
    return event.event_date.add(const Duration(hours: 2));
  }

  @override
  String getSubject(int index) {
    return _getEventData(index).event_name;
  }

  @override
  Color getColor(int index) {
    return const Color(0xFF0F8644);
  }

  @override
  bool isAllDay(int index) {
    return false;
  }

  Events _getEventData(int index) {
    final dynamic event = appointments![index];
    late final Events eventData;
    if (event is Events) {
      eventData = event;
    }
    return eventData;
  }
}

class Events {
  final int id;
  final String event_name;
  final DateTime event_date;

  const Events({
    required this.id,
    required this.event_name,
    required this.event_date,
  });

  factory Events.fromJson(Map<String, dynamic> json) {
    // Parse the date string and set time to 9:00 AM
    final dateStr = json['event_date'] as String;
    final dateParts = dateStr.split('-');
    final year = int.parse(dateParts[0]);
    final month = int.parse(dateParts[1]);
    final day = int.parse(dateParts[2]);

    return Events(
      id: json['id'] ?? 0,
      event_name: json['event_name'] as String,
      event_date: DateTime(year, month, day, 9), // Set time to 9:00 AM
    );
  }
}

Future<List<Events>> getEvents() async {
  try {
    final response = await http.get(
      Uri.parse('http://10.0.2.2:8000/api/get-all-events'),
    );

    if (response.statusCode == 200) {
      final dynamic decodedJson = jsonDecode(response.body);

      if (decodedJson is List) {
        if (decodedJson.isEmpty) {
          return [];
        }
        return decodedJson
            .map((json) => Events.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw FormatException('Expected a list of events');
      }
    } else {
      throw Exception(
        'Failed to load events. Status code: ${response.statusCode}',
      );
    }
  } catch (e) {
    rethrow;
  }
}
