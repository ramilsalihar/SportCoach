import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_coach/models/event_model.dart';

class EventService {
  static const String _eventsKey = 'events';

  Future<void> setEventIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('eventIndex', index);
  }

  Future<int> getEventIndex() async {
    final pref = await SharedPreferences.getInstance();
    final int ind = pref.getInt('eventIndex') ?? 0;

    return ind;
  }

  Future<List<EventModel>> getEvents() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? eventsJson = prefs.getStringList(_eventsKey) ?? [];
    return eventsJson
        .map((eventsJson) => EventModel.fromJson(json.decode(eventsJson)))
        .toList();
  }

  Future<void> addEvent(EventModel event) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? eventsJson = prefs.getStringList(_eventsKey) ?? [];
    eventsJson.add(json.encode(event.toJson()));
    await prefs.setStringList(_eventsKey, eventsJson);
  }

  Future<void> editEvent(int index, EventModel updatedEvent) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? eventsJson = prefs.getStringList(_eventsKey) ?? [];
    for (int i = 0; i < eventsJson.length; i++) {
      EventModel event = EventModel.fromJson(
        json.decode(eventsJson[i]),
      );
      if (event.index == index) {
        eventsJson[i] = json.encode(updatedEvent.toJson());
        break;
      }
    }
    await prefs.setStringList(_eventsKey, eventsJson);
  }

  Future<void> deleteEvent(int index) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? eventsJson = prefs.getStringList(_eventsKey) ?? [];
    for (int i = 0; i < eventsJson.length; i++) {
      EventModel event = EventModel.fromJson(
        json.decode(eventsJson[i]),
      );
      if (event.index == index) {
        eventsJson.removeAt(i);
        break;
      }
    }
    await prefs.setStringList(_eventsKey, eventsJson);
  }
}
