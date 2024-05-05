import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:machine_learning_project/Model.dart';






class ApiModel {


  static Future<UserModel> getSources(
      { required String Brand,
        required String Model,
        required String Body,
        required String Color,
        required String Fuel,
        required String Kilometers,
        required String Engine,
        required String Transmission,
        required String Gov,
        required String Year,
      }
      ) async {

    List<Map<String,dynamic>> requst=[
    {"Brand": "Hyundai",
      "Model": "Accent",
      "Body": "Sedan",
      "Color": "Blue",
      "Fuel": "Gasoline",
      "Kilometers": "40000 to 159999",
      "Engine": "1.6L",
      "Transmission": "Automatic",
      "Gov": "Yes",
      "Year": 2018}];
    // call api
    var uri = Uri.parse('https://monazarea.pythonanywhere.com/predict');
    var response = await http.post(uri,body:jsonEncode(requst) );
    print("++++++++++++++++++++++++++++"+jsonEncode(requst));
    print(response.body);
    print("***********************************"+jsonDecode(response.body));

    try {
      var bodyString = response.body;
      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Print the response body (API data)
        var json = jsonDecode(bodyString);
        var sourcesResponse = UserModel.fromJson(json);
        //json['Prediction'] != null ? json['Prediction'].cast<double>() : [];
        print("***********************************"+sourcesResponse.prediction.length.toString());
        return sourcesResponse;

      } else {
        var json = jsonDecode(bodyString);
        var sourcesResponse = json['Prediction'] != null ? json['Prediction'].cast<double>() : [];
        // If the request was unsuccessful, print the error message
        print('Request failed with status: ${response.statusCode}');
        return sourcesResponse;
      }

    } catch (e) {
      throw e;
    }
  }
}