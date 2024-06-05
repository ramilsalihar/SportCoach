import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_coach/models/athlete_model.dart';
import 'package:sport_coach/models/statistics_model.dart';
import 'package:sport_coach/services/athlete_service.dart';

class AthleteNotifier extends ChangeNotifier {
  final AthleteService _athleteService = AthleteService();
  List<AthleteModel> _athletes = [];
  int _athleteIndex = 0;

  StatisticsModel _currentStats =
      const StatisticsModel(players: '0', totalSalary: '0');

  List<AthleteModel> get athletes => _athletes;

  bool get isEmpty => _athletes.isEmpty;

  String get players => _currentStats.players;

  String get totalSalary => _currentStats.totalSalary;

  int get athleteIndex => _athleteIndex;

  AthleteNotifier() {
    _loadAthleteIndex();
  }

  Future<void> _loadAthleteIndex() async {
    final prefs = await SharedPreferences.getInstance();
    _athleteIndex = prefs.getInt('athleteIndex') ?? 0;
    notifyListeners();
  }

  Future<int> getAthleteIndex() async {
    final prefs = await SharedPreferences.getInstance();
    _athleteIndex = prefs.getInt('athleteIndex') ?? 0;
    return _athleteIndex;
  }

  Future<void> setAthleteIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('athleteIndex', index);
    _athleteIndex = index;
    notifyListeners();
  }

  Future<void> updateStats(StatisticsModel stats) async {
    await _athleteService.updateStats(stats.players, stats.totalSalary);
    notifyListeners();
  }

  Future<Map<String, String>> getStats() async {
    var stats = await _athleteService.getStats();
    if (stats.isNotEmpty) {
      _currentStats = StatisticsModel(
        players: stats['players']!,
        totalSalary: stats['totalSalary']!,
      );
    }
    return stats;
  }

  Future<void> loadAthletes() async {
    _athletes = await _athleteService.getAthletes();
    notifyListeners();
  }

  Future<void> addAthlete(AthleteModel athlete) async {
    await _athleteService.addAthlete(athlete);
    await setAthleteIndex(_athleteIndex + 1);
    await loadAthletes();
  }

  Future<void> editAthlete(int index, AthleteModel athlete) async {
    await _athleteService.editAthlete(index, athlete);
    await loadAthletes();
  }

  Future<void> deleteAthlete(int index) async {
    await _athleteService.deleteAthlete(index);
    await setAthleteIndex(_athleteIndex - 1);
    await loadAthletes();
  }

  AthleteModel? findByIndex(int index) {
    try {
      return _athletes.firstWhere((athlete) => athlete.index == index);
    } catch (e) {
      return null;
    }
  }
}
