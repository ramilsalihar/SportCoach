import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_coach/models/athlete_model.dart';
import 'package:sport_coach/models/statistics_model.dart';

class AthleteService {
  static const String _athletesKey = 'athletes';

  Future<void> saveStats(StatisticsModel stats) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? statsJson = prefs.getStringList(_athletesKey) ?? [];
    statsJson.add(json.encode(stats.toJson()));
    await prefs.setStringList(_athletesKey, statsJson);
  }

  Future<void> saveAthlete(AthleteModel athlete) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? athletesJson = prefs.getStringList(_athletesKey) ?? [];
    athletesJson.add(json.encode(athlete.toJson()));
    await prefs.setStringList(_athletesKey, athletesJson);
  }

  Future<void> editAthlete(int index, AthleteModel athlete) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? athletesJson = prefs.getStringList(_athletesKey) ?? [];
    if (index >= 0 && index < athletesJson.length) {
      athletesJson[index] = json.encode(athlete.toJson());
      await prefs.setStringList(_athletesKey, athletesJson);
    }
  }

  Future<void> deleteAthlete(int index) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? athletesJson = prefs.getStringList(_athletesKey) ?? [];
    if (index >= 0 && index < athletesJson.length) {
      athletesJson.removeAt(index);
      await prefs.setStringList(_athletesKey, athletesJson);
    }
  }

  Future<List<AthleteModel>> getAthletes() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? athletesJson = prefs.getStringList(_athletesKey) ?? [];
    return athletesJson
        .map((athleteJson) => AthleteModel.fromJson(json.decode(athleteJson)))
        .toList();
  }

  Future<void> addAthlete(AthleteModel athlete) async {
    await saveAthlete(athlete);
  }
}
