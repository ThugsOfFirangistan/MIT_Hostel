import 'dart:async' show Future;
import 'package:http/http.dart' as http;
import 'dart:convert';

const String URL='192.168.1.1';

class StudentLogin {
  String id;
  String password;

  StudentLogin({
    this.id,
    this.password
  });

  factory StudentLogin.fromJson(Map<String, dynamic> json) {
    return StudentLogin(
        id: json['id'],
        password: json['name']
      );  
  }
}

Future<StudentLogin> fetchStudentById(http.Client client, int id) async {
  print(URL+id.toString());
  final response = await client.get(URL+id.toString());
  if(response.statusCode == 200) {
    Map<String, dynamic> mapResource = json.decode(response.body);
    print(mapResource);
    if(mapResource["status"] == 'success') {
     Map<String, dynamic> student = mapResource['data'][0];
     return StudentLogin.fromJson(student);
    }else {
      return new StudentLogin();
    }
  }else {
    throw Exception(response.body);
  }
}