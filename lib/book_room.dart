import 'dart:async' show Future;
import 'package:http/http.dart' as http;
import 'dart:convert';

const Map<String, String> header = {
  'Content-type' : 'application/json', 
  'Accept': 'application/json',
  };

const String URL='192.168.1.1';

class BookRoom {
  String id;
  String occupancy;
  String luxury;

  BookRoom({
    this.id,
    this.occupancy,
    this.luxury
  });

  factory BookRoom.fromJson(Map<String, dynamic> json) {
    return BookRoom(
        id: json['id'],
        occupancy: json['name'],
        luxury: json['luxury']
      );  
  }
}

Future<BookRoom> fetchStudentById(http.Client client, Map<String, dynamic> param) async {
  var p = json.encode(param);
  final response = await client.post(URL, headers: header, body:p);
  if(response.statusCode == 200) {
    Map<String, dynamic> mapResource = json.decode(response.body);
    print(mapResource);
    if(mapResource["status"] == 'success') {
     Map<String, dynamic> student = mapResource['data'][0];
     return BookRoom.fromJson(student);
    }else {
      return new BookRoom();
    }
  }else {
    throw Exception(response.body);
  }
}