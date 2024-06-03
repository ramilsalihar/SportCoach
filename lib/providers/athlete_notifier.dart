import 'package:flutter/material.dart';
import 'package:sport_coach/models/athlete_model.dart';
import 'package:sport_coach/services/athlete_service.dart';

class AthleteNotifier extends ChangeNotifier {
  final AthleteService _athleteService = AthleteService();
  List<AthleteModel> _athletes = [];

  List<AthleteModel> get athletes => _athletes;

  bool get isEmpty => _athletes.isEmpty;

  Future<void> loadAthletes() async {
    _athletes = await _athleteService.getAthletes();
    notifyListeners();
  }

  Future<void> addAthlete(AthleteModel athlete) async {
    await _athleteService.addAthlete(athlete);
    await loadAthletes();
  }

  Future<void> editAthlete(int index, AthleteModel athlete) async {
    await _athleteService.editAthlete(index, athlete);
    await loadAthletes();
  }

  Future<void> deleteAthlete(int index) async {
    await _athleteService.deleteAthlete(index);
    await loadAthletes();
  }
}
