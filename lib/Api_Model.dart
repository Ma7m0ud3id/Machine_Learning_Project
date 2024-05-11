import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:machine_learning_project/Model.dart';
class ApiModel {
  static Future<PredictionModel> getSources(
      { required String Brand, required String Model, required String Body, required String Color, required String Fuel,
        required String Kilometers, required String Engine, required String Transmission, required String Gov, required int Year,}
      )
     async {
    List<Map<String,dynamic>> requst=[
    {"Brand": Brand, "Model": Model, "Body": Body, "Color": Color, "Fuel": Fuel, "Kilometers": Kilometers, "Engine": Engine,
      "Transmission": Transmission, "Gov": Gov, "Year": Year}];
    final json_data = jsonEncode(requst);
    final headers = {
      "Content-Type": "application/json",
      "Accept": "application/json"
    };
    try {
      var uri = Uri.parse('https://monazarea.pythonanywhere.com/predict');
      var response = await http.post(uri,body:json_data,headers: headers );
      print("++++++++++++++++++++++++++++"+jsonEncode(requst));
      var bodyString = response.body;
      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        var result = jsonDecode(bodyString);
        // ... existing code to decode response body ...
        final prediction = PredictionModel.fromJson(result);
        return prediction;
      } else {
        // Handle error scenario
        throw Exception('Failed to fetch prediction'); // Or handle differently
      }

    } catch (e) {
      throw e;
    }
  }
}

//