import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_coach/models/athlete_model.dart';

class AthleteService {
  static const String _athletesKey = 'athletes';
  static const String _playersKey = 'players';
  static const String _totalSalaryKey = 'totalSalary';

  Future<void> setAthleteIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('athleteIndex', index);
  }

  Future<int> getAthleteIndex() async {
    final pref = await SharedPreferences.getInstance();
    final int ind = pref.getInt('athleteIndex') ?? 0;

    return ind;
  }

  Future<void> updateStats(String players, String totalSalary) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_playersKey, players);
    await prefs.setString(_totalSalaryKey, totalSalary);
  }

  Future<Map<String, String>> getStats() async {
    final prefs = await SharedPreferences.getInstance();
    String? players = prefs.getString(_playersKey) ?? '0';
    String? totalSalary = prefs.getString(_totalSalaryKey) ?? '0';
    return {
      'players': players,
      'totalSalary': totalSalary,
    };
  }

  Future<void> saveAthlete(AthleteModel athlete) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? athletesJson = prefs.getStringList(_athletesKey) ?? [];
    athletesJson.add(json.encode(athlete.toJson()));
    await prefs.setStringList(_athletesKey, athletesJson);
  }

  Future<void> editAthlete(int index, AthleteModel updatedAthlete) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? athletesJson = prefs.getStringList(_athletesKey) ?? [];
    for (int i = 0; i < athletesJson.length; i++) {
      AthleteModel athlete = AthleteModel.fromJson(
        json.decode(athletesJson[i]),
      );
      if (athlete.index == index) {
        athletesJson[i] = json.encode(updatedAthlete.toJson());
        break;
      }
    }
    await prefs.setStringList(_athletesKey, athletesJson);
  }

  Future<void> deleteAthlete(int index) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? athletesJson = prefs.getStringList(_athletesKey) ?? [];
    for (int i = 0; i < athletesJson.length; i++) {
      AthleteModel athlete = AthleteModel.fromJson(
        json.decode(athletesJson[i]),
      );
      if (athlete.index == index) {
        athletesJson.removeAt(i);
        break;
      }
    }
    await prefs.setStringList(_athletesKey, athletesJson);
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
