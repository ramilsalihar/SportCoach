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
    loadEvents();
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

  Future<void> addEvent(EventDetail eventDetail) async {
    final date = DateTime.now().toIso8601String();
    final event = EventModel(
      date: date,
      events: [eventDetail],
    );

    await _eventService.addEvent(event);
    await setEventIndex(_eventIndex + 1);
    await loadEvents();
  }

  Future<void> editEvent(int index, EventDetail eventDetail) async {
    final eventIndex = _events.indexWhere((event) =>
        event.events.any((detail) => detail.index == eventDetail.index));

    if (eventIndex != -1) {
      final event = _events[eventIndex];
      final updatedDetails = event.events.map((detail) {
        return detail.index == eventDetail.index ? eventDetail : detail;
      }).toList();

      final updatedEvent = event.copyWith(events: updatedDetails);
      await _eventService.editEvent(index, updatedEvent);
      await loadEvents();
    }
  }

  Future<void> deleteEvent(int index) async {
    await _eventService.deleteEvent(index);
    await setEventIndex(_eventIndex - 1);
    await loadEvents();
  }

  EventDetail? findByIndex(int index) {
    try {
      for (final event in _events) {
        for (final detail in event.events) {
          if (detail.index == index) {
            return detail;
          }
        }
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
