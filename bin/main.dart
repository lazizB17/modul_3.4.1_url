import 'dart:convert';
import 'package:http/http.dart';
import 'models/airlines_class_url.dart';
import 'models/user_model.dart';
////////////////////////////////////////////////////////////////////////////////
// Airlines 1
/*
void main() async{
  // get url: https://api.instantwebtools.net/v1/airlines/8

  Airlines? airlines;

  // domain
  String baseUrl = "api.instantwebtools.net";

  // api => path variable
  String api = "/v1/airlines/8";

  // airlines
  String? result = await GET(baseUrl, api);
    if(result != null){
      airlines = parseOneAirlines(result);
    }
    print(airlines!.toString());
}

Future <String?> GET(String baseUrl, String api) async{
  Uri url = Uri.http(baseUrl, api);
  Response response = await get(url);
  if(response.statusCode == 200){
    return response.body;
  } else {
    return null;
  }
}
// airlines
Airlines parseOneAirlines(String response){
  Map<String, dynamic> json = jsonDecode(response);
  Airlines airlines = Airlines.fromJson(json);
  return airlines;
}
*/
////////////////////////////////////////////////////////////////////////////////
// Airlines 2
/*
void main() async{
  // get url:   https://api.instantwebtools.net/v1/airlines

  Airlines? airlines;
  List <Airlines> list = [];

  // domain
  String baseUrl = "api.instantwebtools.net";

  // api => path variable
  String apiAllAirlines = "/v1/airlines";

  // airlines
  String? result = await GET(baseUrl, apiAllAirlines);
  if(result != null){
    list = parseAllAirlines(result);
  }
  for(Airlines item in list){
    print(item.toString());
  }
}

Future <String?> GET(String baseUrl, String api) async{
  Uri url = Uri.http(baseUrl, api);
  Response response = await get(url);
  if(response.statusCode == 200){
    return response.body;
  } else {
    return null;
  }
}
// airlines parse
List <Airlines> parseAllAirlines(String response){
  List list = jsonDecode(response);
  List <Airlines> result = list.map((map) => Airlines.fromJson(map)).toList();
  return result;
}
*/
////////////////////////////////////////////////////////////////////////////////
// User 1
/*
void main() async {
// get data from server
// StringJson(ServerData) => {jsonDecode} => Map(Json) => {fromJson} => Object

// get url: https://jsonplaceholder.typicode.com/users/5
  User? user;

// domain
  String baseUrl = "jsonplaceholder.typicode.com";

// api => path variable
  String apiOnePost = "/users/5";

// post
  String? result = await GET(baseUrl, apiOnePost);
  if(result != null){
    user = parseOneUser(result);
  }
  print(user!.address.geo.lat);
  print(user.company.name);
  print(user.address.toJson());
  print(user.phone);
  print(user.username);

}

Future <String?> GET(String baseUrl, String api) async {
  Uri url = Uri.http(baseUrl, api);
  Response response = await get(url);
  if(response.statusCode == 200){
    return response.body;
  } else {
    return null;
  }
}

// parse
User parseOneUser(String response){
  Map<String, dynamic> json = jsonDecode(response);
  User user = User.fromJson(json);
  return user;
}
*/
////////////////////////////////////////////////////////////////////////////////
// User 2

void main() async {
// get data from server
// StringJson(ServerData) => {jsonDecode} => Map(Json) => {fromJson} => Object

// get url:   https://jsonplaceholder.typicode.com/users
  User? user;
  List list = [];

  // domain
  String baseUrl = "jsonplaceholder.typicode.com";

// api => path variable
  String apiOnePost = "/users";

// post
  String? result = await GET(baseUrl, apiOnePost);
  if(result != null){
    list = parseAllUser(result);
  }
    print(result.toString());

}

Future <String?> GET(String baseUrl, String api) async {
  Uri url = Uri.http(baseUrl, api);
  Response response = await get(url);
  if(response.statusCode == 200){
    return response.body;
  } else {
    return null;
  }
}

// parse
List <User> parseAllUser(String response){
  List list = jsonDecode(response);
  List <User> result = list.map((map) => User.fromJson(map)).toList();
  return result;
}




































