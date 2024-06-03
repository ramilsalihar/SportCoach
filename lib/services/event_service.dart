import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_coach/models/event_model.dart';

class EventService {
  static const String _eventsKey = 'events';

  Future<List<EventModel>> getEvents() async {
    final prefs = await SharedPreferences.getInstance();
    final eventsString = prefs.getString(_eventsKey);
    if (eventsString == null) {
      return [];
    }
    final List<dynamic> eventsJson = json.decode(eventsString);
    return eventsJson.map((json) => EventModel.fromJson(json)).toList();
  }

  Future<void> addEvent(EventModel event) async {
    final prefs = await SharedPreferences.getInstance();
    final events = await getEvents();
    events.add(event);
    prefs.setString(
        _eventsKey, json.encode(events.map((e) => e.toJson()).toList()));
  }

  Future<void> editEvent(int index, EventModel event) async {
    final prefs = await SharedPreferences.getInstance();
    final events = await getEvents();
    if (index >= 0 && index < events.length) {
      events[index] = event;
      prefs.setString(
          _eventsKey, json.encode(events.map((e) => e.toJson()).toList()));
    }
  }

  Future<void> deleteEvent(int index) async {
    final prefs = await SharedPreferences.getInstance();
    final events = await getEvents();
    if (index >= 0 && index < events.length) {
      events.removeAt(index);
      prefs.setString(
          _eventsKey, json.encode(events.map((e) => e.toJson()).toList()));
    }
  }
}
