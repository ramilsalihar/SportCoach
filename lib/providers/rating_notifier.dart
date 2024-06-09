import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_coach/models/rating_model.dart';
import 'package:sport_coach/services/rating_services.dart';

class RatingNotifier extends ChangeNotifier {
  final RatingService _ratingService = RatingService();
  List<RatingModel> _ratings = [];
  int _ratingIndex = 0;

  List<RatingModel> get ratings => _ratings;

  bool get isEmpty => _ratings.isEmpty;

  int get ratingIndex => _ratingIndex;

  RatingNotifier() {
    _loadRatingIndex();
    loadRatings();
  }

  Future<void> _loadRatingIndex() async {
    final prefs = await SharedPreferences.getInstance();
    _ratingIndex = prefs.getInt('ratingIndex') ?? 0;
    notifyListeners();
  }

  Future<int> getRatingIndex() async {
    final prefs = await SharedPreferences.getInstance();
    _ratingIndex = prefs.getInt('ratingIndex') ?? 0;
    return _ratingIndex;
  }

  Future<void> setRatingIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('ratingIndex', index);
    _ratingIndex = index;
    notifyListeners();
  }

  Future<void> loadRatings() async {
    _ratings = await _ratingService.getRatings();
    notifyListeners();
  }

  Future<void> addRating(RatingModel rating) async {
    await _ratingService.addRating(rating);
    await setRatingIndex(_ratingIndex + 1);
    await loadRatings();
  }

  Future<void> editRating(int index, RatingModel rating) async {
    await _ratingService.editRating(index, rating);
    await loadRatings();
  }

  Future<void> deleteRating(int index) async {
    await _ratingService.deleteRating(index);
    await setRatingIndex(_ratingIndex - 1);
    await loadRatings();
  }

  RatingModel? findByIndex(int index) {
    try {
      return _ratings.firstWhere((rating) => rating.index == index);
    } catch (e) {
      return null;
    }
  }
}
