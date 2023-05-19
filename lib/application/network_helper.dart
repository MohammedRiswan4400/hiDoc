import 'package:http/http.dart' as http;

import 'model.dart';

class NetworkHelper {
  static Future<HiDoc> fetchDataFromNetwork() async {
    const api = "http://devapi.hidoc.co:8080/HidocWebApp/api/getArticlesByUid";
    final url = Uri.parse(api);
    final response = await http.post(url);
    final json = hiDocFromJson(response.body);
    return json;
    // // log(json.toString());
    // if (response.statusCode == 200) {
    //   // log(response.body);
    //   return json;
    // }
  }
}
