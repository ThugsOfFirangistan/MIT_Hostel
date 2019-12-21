import 'dart:async' show Future;
import 'package:http/http.dart' as http;
import 'dart:convert';

const String URL='192.168.1.1';

class Student {
  int id;
  String name;

  Student({
    this.id,
    this.name,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
        id: json['id'],
        name: json['name'],
      );  
  }
}

Future<Student> fetchStudentById(http.Client client, int id) async {
  print(URL+id.toString());
  final response = await client.get(URL+id.toString());
  if(response.statusCode == 200) {
    Map<String, dynamic> mapResource = json.decode(response.body);
    print(mapResource);
    if(mapResource["status"] == 'success') {
     Map<String, dynamic> student = mapResource['data'][0];
     return Student.fromJson(student);
    }else {
      return new Student();
    }
  }else {
    throw Exception(response.body);
  }
}