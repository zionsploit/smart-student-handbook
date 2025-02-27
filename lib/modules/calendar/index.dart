import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarModules extends StatelessWidget {
  const CalendarModules({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Event",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
          ),
        ),
        SizedBox(
          height: 500,
          child: Card.outlined(
            child: SfCalendar(
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
              view: CalendarView.month,
              monthViewSettings: MonthViewSettings(
                showAgenda: true,
                agendaViewHeight: 100,
              ),
              cellBorderColor: const Color.fromARGB(0, 255, 255, 255),
            ),
          ),
        ),
      ],
    );
  }
}
