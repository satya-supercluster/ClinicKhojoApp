import 'package:clinic_khojo/widgets/features/appointment/appointment_tiles/emergency_tiles.dart';
import 'package:clinic_khojo/widgets/features/appointment/appointment_tiles/normal_expanded_tiles.dart';
import 'package:flutter/cupertino.dart';
class EmergencyAppointmentList extends StatefulWidget {
  const EmergencyAppointmentList({super.key});

  @override
  State<EmergencyAppointmentList> createState() => _EmergencyAppointmentListState();
}

class _EmergencyAppointmentListState extends State<EmergencyAppointmentList> {
  @override
  Widget build(BuildContext context) {
    List<Map<String,String>>list=[
    {
      "name":"Satyam","day":"31","month":"Mar","year":"2024","age":"19","place":"lucknow","start":"11:00am","end":"11:30am","gender":"male"
    },
    {
       "name":"John","day":"15","month":"Jan","year":"2000","age":"22","place":"New York","start":"09:30am","end":"10:00am","gender":"male"
    },
    {
       "name":"Emily","day":"10","month":"Feb","year":"1998","age":"26","place":"Los Angeles","start":"02:00pm","end":"02:30pm","gender":"male"
    },
    {
       "name":"Michael","day":"22","month":"May","year":"2002","age":"20","place":"Chicago","start":"10:45am","end":"11:15am","gender":"male"
    },
    {
       "name":"Sophia","day":"5","month":"Jul","year":"2001","age":"23","place":"San Francisco","start":"03:15pm","end":"03:45pm","gender":"male"
    },
    {
       "name":"Daniel","day":"18","month":"Sep","year":"1999","age":"25","place":"Houston","start":"01:30pm","end":"02:00pm","gender":"male"
    },
    {
       "name":"Olivia","day":"9","month":"Nov","year":"2003","age":"21","place":"Miami","start":"11:45am","end":"12:15pm","gender":"male"
    },
    {
       "name":"William","day":"12","month":"Mar","year":"1997","age":"27","place":"Seattle","start":"04:30pm","end":"05:00pm","gender":"male"
    },
    {
       "name":"Ava","day":"25","month":"Apr","year":"2000","age":"24","place":"Boston","start":"09:00am","end":"09:30am","gender":"male"
    },
    {
       "name":"Ethan","day":"8","month":"Jun","year":"2004","age":"20","place":"Denver","start":"12:00pm","end":"12:30pm","gender":"male"
    },
    {
       "name":"Isabella","day":"14","month":"Aug","year":"2002","age":"22","place":"Dallas","start":"02:45pm","end":"03:15pm","gender":"male"
    },
    {
       "name":"Isabella","day":"14","month":"Aug","year":"2002","age":"22","place":"Dallas","start":"02:45pm","end":"03:15pm","gender":"male"
    },
    {
       "name":"Isabella","day":"14","month":"Aug","year":"2002","age":"22","place":"Dallas","start":"02:45pm","end":"03:15pm","gender":"male"
    },
    {
       "name":"Isabella","day":"14","month":"Aug","year":"2002","age":"22","place":"Dallas","start":"02:45pm","end":"03:15pm","gender":"male"
    },
    {
       "name":"Isabella","day":"14","month":"Aug","year":"2002","age":"22","place":"Dallas","start":"02:45pm","end":"03:15pm","gender":"male"
    },
    {
       "name":"Isabella","day":"14","month":"Aug","year":"2002","age":"22","place":"Dallas","start":"02:45pm","end":"03:15pm","gender":"male"
    }
    ];
    return ListView.builder(
      itemCount: list.length,
      shrinkWrap: true,
      // scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => 
        Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: EmergencyAppointmentTile(
          name: list[index]['name'] ?? '',
          day: list[index]['day'] ?? '',
          month: list[index]['month'] ?? '',
          year: list[index]['year'] ?? '',
          age: list[index]['age'] ?? '',
          place: list[index]['place'] ?? '',
          start: list[index]['start'] ?? '',
          end: list[index]['end'] ?? '',
          gender: list[index]['gender'] ?? '',
        ),
      )
    );
  }
}