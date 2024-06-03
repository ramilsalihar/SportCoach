import 'package:flutter/material.dart';
import 'package:sport_coach/models/training_model.dart';
import 'package:sport_coach/services/training_service.dart';

class TrainingNotifier extends ChangeNotifier {
  final TrainingService _trainingService = TrainingService();
  List<TrainingModel> _trainings = [];

  List<TrainingModel> get trainings => _trainings;

  bool get isEmpty => _trainings.isEmpty;

  Future<void> loadTrainings() async {
    _trainings = await _trainingService.getTrainings();
    notifyListeners();
  }

  Future<void> addTraining(TrainingModel training) async {
    await _trainingService.addTraining(training);
    await loadTrainings();
  }

  Future<void> editTraining(int index, TrainingModel training) async {
    await _trainingService.editTraining(index, training);
    await loadTrainings();
  }

  Future<void> deleteTraining(int index) async {
    await _trainingService.deleteTraining(index);
    await loadTrainings();
  }
}
