import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_coach/models/training_model.dart';
import 'package:sport_coach/services/training_service.dart';

class TrainingNotifier extends ChangeNotifier {
  final TrainingService _trainingService = TrainingService();
  List<TrainingModel> _trainings = [];
  int _trainingIndex = 0;

  List<TrainingModel> get trainings => _trainings;

  bool get isEmpty => _trainings.isEmpty;

  int get trainingIndex => _trainingIndex;

  TrainingNotifier() {
    _loadTrainingIndex();
  }

  Future<void> _loadTrainingIndex() async {
    final prefs = await SharedPreferences.getInstance();
    _trainingIndex = prefs.getInt('trainingIndex') ?? 0;
    notifyListeners();
  }

  Future<int> getTrainingIndex() async {
    final prefs = await SharedPreferences.getInstance();
    _trainingIndex = prefs.getInt('trainingIndex') ?? 0;
    return _trainingIndex;
  }

  Future<void> setTrainingIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('trainingIndex', index);
    _trainingIndex = index;
    notifyListeners();
  }

  Future<void> loadTrainings() async {
    _trainings = await _trainingService.getTrainings();
    notifyListeners();
  }

  Future<void> addTraining(TrainingModel training) async {
    await _trainingService.addTraining(training);
    await setTrainingIndex(_trainingIndex + 1);
    await loadTrainings();
  }

  Future<void> editTraining(int index, TrainingModel training) async {
    await _trainingService.editTraining(index, training);
    await loadTrainings();
  }

  Future<void> deleteTraining(int index) async {
    await _trainingService.deleteTraining(index);
    await setTrainingIndex(_trainingIndex - 1);
    await loadTrainings();
  }

  TrainingModel? findByIndex(int index) {
    try {
      return _trainings.firstWhere((training) => training.index == index);
    } catch (e) {
      return null;
    }
  }
}
