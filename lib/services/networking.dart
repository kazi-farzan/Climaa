import 'package:http/http.dart' as http;
import 'dart:convert';

//https://api.openweathermap.org/data/2.5/weather?lat=19.07&lon=72.87&appid=86387435b9f2b562bb08c34f3d819a92

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
