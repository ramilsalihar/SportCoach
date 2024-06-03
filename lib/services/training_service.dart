import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_coach/models/training_model.dart';

class TrainingService {
  static const String _trainingsKey = 'trainings';

  Future<List<TrainingModel>> getTrainings() async {
    final prefs = await SharedPreferences.getInstance();
    final trainingsString = prefs.getString(_trainingsKey);
    if (trainingsString == null) {
      return [];
    }
    final List<dynamic> trainingsJson = json.decode(trainingsString);
    return trainingsJson.map((json) => TrainingModel.fromJson(json)).toList();
  }

  Future<void> addTraining(TrainingModel training) async {
    final prefs = await SharedPreferences.getInstance();
    final trainings = await getTrainings();
    trainings.add(training);
    prefs.setString(
        _trainingsKey, json.encode(trainings.map((e) => e.toJson()).toList()));
  }

  Future<void> editTraining(int index, TrainingModel training) async {
    final prefs = await SharedPreferences.getInstance();
    final trainings = await getTrainings();
    if (index >= 0 && index < trainings.length) {
      trainings[index] = training;
      prefs.setString(_trainingsKey,
          json.encode(trainings.map((e) => e.toJson()).toList()));
    }
  }

  Future<void> deleteTraining(int index) async {
    final prefs = await SharedPreferences.getInstance();
    final trainings = await getTrainings();
    if (index >= 0 && index < trainings.length) {
      trainings.removeAt(index);
      prefs.setString(_trainingsKey,
          json.encode(trainings.map((e) => e.toJson()).toList()));
    }
  }
}
