
import 'package:clinic_khojo/widgets/features/appointment_history/appointment_history_tile.dart';
import 'package:clinic_khojo/widgets/global/common_appbar.dart';
import 'package:flutter/material.dart';

class AppointmentHistoryPage extends StatefulWidget {
  const AppointmentHistoryPage({super.key});

  @override
  State<AppointmentHistoryPage> createState() => _AppointmentHistoryPageState();
}

class _AppointmentHistoryPageState extends State<AppointmentHistoryPage> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    List<Map<String,String>>l=
    [
      {
          'title': 'Dr. Satyam\'s Clinic',
          'location': 'xyz, Delhi',
          'time': '21 Aug,11am-11:30am',
          'fee': '500'
      },
      {
          'title': 'Dr. Sharma\'s Care',
          'location': 'abc, Mumbai',
          'time': '10 Sep,2pm-3pm',
          'fee': '600'
      },
      {
          'title': 'Dr. Gupta\'s Clinic',
          'location': 'pqr, Bangalore',
          'time': '5 Oct,9am-10am',
          'fee': '700'
      },
      {
          'title': 'Dr. Patel\'s Center',
          'location': 'lmn, Chennai',
          'time': '15 Nov,3pm-4pm',
          'fee': '800'
      },
      {
          'title': 'Dr. Verma\'s Clinic',
          'location': 'def, Kolkata',
          'time': '20 Dec,10am-11am',
          'fee': '900'
      },
      {
          'title': 'Dr. Singh\'s Clinic',
          'location': 'rst, Hyderabad',
          'time': '3 Jan,11am-12pm',
          'fee': '1000'
      },
      {
          'title': 'Dr. Agarwal\'s Clinic',
          'location': 'uvw, Pune',
          'time': '7 Feb,4pm-5pm',
          'fee': '1100'
      },
      {
          'title': 'Dr. Khan\'s Clinic',
          'location': 'ghi, Ahmedabad',
          'time': '12 Mar,2pm-3pm',
          'fee': '1200'
      },
      {
          'title': 'Dr. Joshi\'s ENT Clinic',
          'location': 'jkl, Jaipur',
          'time': '18 Apr,9am-10am',
          'fee': '1300'
      },
      {
          'title': 'Dr. Mishra\'s Clinic',
          'location': 'nop, Chandigarh',
          'time': '25 May,11am-12pm',
          'fee': '1400'
      },
      {
          'title': 'Dr. Reddy\'s Clinic',
          'location': 'qrs, Lucknow',
          'time': '1 Jun,3pm-4pm',
          'fee': '1500'
      },
      {
          'title': 'Dr. Tiwari\'s Clinic',
          'location': 'xyz, Delhi',
          'time': '21 Aug,11am-11:30am',
          'fee': '500'
      },
      {
          'title': 'Dr. Kapoor\'s Clinic',
          'location': 'abc, Mumbai',
          'time': '10 Sep,2pm-3pm',
          'fee': '600'
      },
      {
          'title': 'Dr. Sharma\'s Clinic',
          'location': 'pqr, Bangalore',
          'time': '5 Oct,9am-10am',
          'fee': '700'
      },
      {
          'title': 'Dr. Gupta\'s Clinic',
          'location': 'lmn, Chennai',
          'time': '15 Nov,3pm-4pm',
          'fee': '800'
      },
      {
          'title': 'Dr. Verma\'s Center',
          'location': 'def, Kolkata',
          'time': '20 Dec,10am-11am',
          'fee': '900'
      },
      {
          'title': 'Dr. Singh\'s Clinic',
          'location': 'rst, Hyderabad',
          'time': '3 Jan,11am-12pm',
          'fee': '1000'
      },
      {
          'title': 'Dr. Agarwal\'s Clinic',
          'location': 'uvw, Pune',
          'time': '7 Feb,4pm-5pm',
          'fee': '1100'
      },
      {
          'title': 'Dr. Khan\'s Care',
          'location': 'ghi, Ahmedabad',
          'time': '12 Mar,2pm-3pm',
          'fee': '1200'
      },
      {
          'title': 'Dr. Joshi\'s Clinic',
          'location': 'jkl, Jaipur',
          'time': '18 Apr,9am-10am',
          'fee': '1300'
      },
      {
          'title': 'Dr. Mishra\'s ENT Clinic',
          'location': 'nop, Chandigarh',
          'time': '25 May,11am-12pm',
          'fee': '1400'
      }
    ];
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width:width,
          child: Column(
            children: [
              const CommonAppBar(title: "Explore Doctor", heading: "Appointment History"),
              const SizedBox(height:20),
              Expanded(
                child: ListView.builder(
                  itemCount: l.length,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        AppointmentHistoryTile(title: l[index]['title']??"", location: l[index]['location']??"", time: l[index]['time']??"", fee: l[index]['fee']??""),
                        const SizedBox(height:10),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height:60)
            ],
          ),
        ),
      )
    );
  }
}
