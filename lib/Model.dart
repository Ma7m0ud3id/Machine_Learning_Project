
class PredictionModel {
  final List<double> prediction;

  PredictionModel({required this.prediction});

  factory PredictionModel.fromJson(Map<String, dynamic> json) {
    return PredictionModel(
      prediction: List<double>.from(json['Prediction'] ?? []),

    );
  }
}
