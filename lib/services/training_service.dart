import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_coach/models/training_model.dart';

class TrainingService {
  static const String _trainingsKey = 'trainings';

  Future<void> setTrainingIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('trainingIndex', index);
  }

  Future<int> getTrainingIndex() async {
    final pref = await SharedPreferences.getInstance();
    final int ind = pref.getInt('trainingIndex') ?? 0;

    return ind;
  }

  Future<List<TrainingModel>> getTrainings() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? trainingsJson = prefs.getStringList(_trainingsKey) ?? [];
    return trainingsJson
        .map((trainingsJson) =>
            TrainingModel.fromJson(json.decode(trainingsJson)))
        .toList();
  }

  Future<void> addTraining(TrainingModel training) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? trainingsJson = prefs.getStringList(_trainingsKey) ?? [];
    trainingsJson.add(json.encode(training.toJson()));
    await prefs.setStringList(_trainingsKey, trainingsJson);
  }

  Future<void> editTraining(int index, TrainingModel updatedTraining) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? trainingsJson = prefs.getStringList(_trainingsKey) ?? [];
    for (int i = 0; i < trainingsJson.length; i++) {
      TrainingModel training = TrainingModel.fromJson(
        json.decode(trainingsJson[i]),
      );
      if (training.index == index) {
        trainingsJson[i] = json.encode(updatedTraining.toJson());
        break;
      }
    }
    await prefs.setStringList(_trainingsKey, trainingsJson);
  }

  Future<void> deleteTraining(int index) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? trainingsJson = prefs.getStringList(_trainingsKey) ?? [];
    for (int i = 0; i < trainingsJson.length; i++) {
      TrainingModel training = TrainingModel.fromJson(
        json.decode(trainingsJson[i]),
      );
      if (training.index == index) {
        trainingsJson.removeAt(i);
        break;
      }
    }
    await prefs.setStringList(_trainingsKey, trainingsJson);
  }
}
