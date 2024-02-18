import 'dart:convert';
import 'package:mushcamp/model/mushroom_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  String endPoint = "https://9d30-182-1-213-74.ap.ngrok.io/api/";

  Future<JamurModel> getDataKelapa() async{
    try {
      var url = Uri.parse(endPoint + "get-jamur.py");
      var response = await http.post(url);
      final Map<String, dynamic> parsed = jsonDecode(response.body);
      JamurModel jamur = JamurModel.fromJson(parsed);
      return jamur;
    } catch (e) {
      rethrow;
    }
  }
}