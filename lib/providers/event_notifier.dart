import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_coach/models/event_model.dart';
import 'package:sport_coach/services/event_service.dart';

class EventNotifier extends ChangeNotifier {
  final EventService _eventService = EventService();
  List<EventModel> _events = [];
  int _eventIndex = 0;

  List<EventModel> get events => _events;

  bool get isEmpty => _events.isEmpty;

  int get eventIndex => _eventIndex;

  EventNotifier() {
    _loadEventIndex();
  }

  Future<void> _loadEventIndex() async {
    final prefs = await SharedPreferences.getInstance();
    _eventIndex = prefs.getInt('eventIndex') ?? 0;
    notifyListeners();
  }

  Future<int> getEventIndex() async {
    final prefs = await SharedPreferences.getInstance();
    _eventIndex = prefs.getInt('eventIndex') ?? 0;
    return _eventIndex;
  }

  Future<void> setEventIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('eventIndex', index);
    _eventIndex = index;
    notifyListeners();
  }

  Future<void> loadEvents() async {
    _events = await _eventService.getEvents();
    notifyListeners();
  }

  Future<void> addEvent(EventModel event) async {
    await _eventService.addEvent(event);
    await setEventIndex(_eventIndex + 1);
    await loadEvents();
  }

  Future<void> editEvent(int index, EventModel event) async {
    await _eventService.editEvent(index, event);
    await loadEvents();
  }

  Future<void> deleteEvent(int index) async {
    await _eventService.deleteEvent(index);
    await setEventIndex(_eventIndex - 1);
    await loadEvents();
  }

  EventModel? findByIndex(int index) {
    try {
      return _events.firstWhere((event) => event.index == index);
    } catch (e) {
      return null;
    }
  }
}
