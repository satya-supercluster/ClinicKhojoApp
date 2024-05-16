import 'dart:convert';
// import 'package:clinickhojodoc/commonFunction.dart';
import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

Future<List<Map<String, dynamic>>> fetchDoctorsWithClinic() async {
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // String email = prefs.getString('mailId') ?? 'mail';

  // var headers = {
  //   'Content-Type': 'application/json'
  // };
  var request = http.Request('GET', Uri.parse("http://complete-server-clinickhojo.onrender.com" + '/api/user/getAllDoctors/withClinic'));
  // request.body = json.encode({
  //   "doctorEmail": email
  // });
  // request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var responseBody = await response.stream.bytesToString();
    List<dynamic> responseData = json.decode(responseBody);
    List<Map<String, dynamic>> doctors = responseData.cast<Map<String, dynamic>>();
    return doctors;
  }
  else {
    print(response.reasonPhrase);
    // Return an empty list in case of an error
    return [];
  }
}
