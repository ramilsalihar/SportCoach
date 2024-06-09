import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_coach/models/rating_model.dart';

class RatingService {
  static const String _ratingsKey = 'ratings';

  Future<void> setRatingIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('ratingIndex', index);
  }

  Future<int> getRatingIndex() async {
    final prefs = await SharedPreferences.getInstance();
    final int index = prefs.getInt('ratingIndex') ?? 0;
    return index;
  }

  Future<List<RatingModel>> getRatings() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? ratingsJson = prefs.getStringList(_ratingsKey) ?? [];
    return ratingsJson
        .map((ratingJson) => RatingModel.fromJson(json.decode(ratingJson)))
        .toList();
  }

  Future<void> addRating(RatingModel rating) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? ratingsJson = prefs.getStringList(_ratingsKey) ?? [];
    ratingsJson.add(json.encode(rating.toJson()));
    await prefs.setStringList(_ratingsKey, ratingsJson);
  }

  Future<void> editRating(int index, RatingModel updatedRating) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? ratingsJson = prefs.getStringList(_ratingsKey) ?? [];
    for (int i = 0; i < ratingsJson.length; i++) {
      RatingModel rating = RatingModel.fromJson(
        json.decode(ratingsJson[i]),
      );
      if (rating.index == index) {
        ratingsJson[i] = json.encode(updatedRating.toJson());
        break;
      }
    }
    await prefs.setStringList(_ratingsKey, ratingsJson);
  }

  Future<void> deleteRating(int index) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? ratingsJson = prefs.getStringList(_ratingsKey) ?? [];
    for (int i = 0; i < ratingsJson.length; i++) {
      RatingModel rating = RatingModel.fromJson(
        json.decode(ratingsJson[i]),
      );
      if (rating.index == index) {
        ratingsJson.removeAt(i);
        break;
      }
    }
    await prefs.setStringList(_ratingsKey, ratingsJson);
  }
}
