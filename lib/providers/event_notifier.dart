import 'package:flutter/material.dart';
import 'package:sport_coach/models/event_model.dart';
import 'package:sport_coach/services/event_service.dart';

class EventNotifier extends ChangeNotifier {
  final EventService _eventService = EventService();
  List<EventModel> _events = [];

  List<EventModel> get events => _events;

  bool get isEmpty => _events.isEmpty;

  Future<void> loadEvents() async {
    _events = await _eventService.getEvents();
    notifyListeners();
  }

  Future<void> addEvent(EventModel event) async {
    await _eventService.addEvent(event);
    await loadEvents();
  }

  Future<void> editEvent(int index, EventModel event) async {
    await _eventService.editEvent(index, event);
    await loadEvents();
  }

  Future<void> deleteEvent(int index) async {
    await _eventService.deleteEvent(index);
    await loadEvents();
  }
}
