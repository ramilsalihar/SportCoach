import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

class RemoteConfigService {
  RemoteConfigService._() : _remoteConfig = FirebaseRemoteConfig.instance;

  static RemoteConfigService? _instance;
  factory RemoteConfigService() => _instance ??= RemoteConfigService._();

  final FirebaseRemoteConfig _remoteConfig;

  String getString(String key) => _remoteConfig.getString(key);
  bool getBool(String key) => _remoteConfig.getBool(key);
  int getInt(String key) => _remoteConfig.getInt(key);
  double getDouble(String key) => _remoteConfig.getDouble(key);

  bool get isChangeAllURL => _remoteConfig.getBool('isChangeAllURL');
  bool get isDead => _remoteConfig.getBool('isDead');
  bool get isTelegram => _remoteConfig.getBool('isTelegram');
  String get lastDate => _remoteConfig.getString('lastDate');
  String get urlLink => _remoteConfig.getString('url_link');
  String get urlTelegram => _remoteConfig.getString('url_telegram');

  Future<void> fetchAndActivate() async {
    bool updated = await _remoteConfig.fetchAndActivate();

    if (updated) {
      debugPrint('The config has been updated.');
    } else {
      debugPrint('The config is not updated..');
    }
  }

  Future<void> initialize() async {
    await _setConfigSettings();
    await _setDefaults();
    await fetchAndActivate();
  }

  Future<void> _setConfigSettings() async => _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(minutes: 1),
          minimumFetchInterval: const Duration(hours: 12),
        ),
      );

  Future<void> _setDefaults() async => _remoteConfig.setDefaults(
        const {
          'isChangeAllURL': false,
          'isDead': false,
          'isTelegram': false,
          'lastDate': '',
          'url_link': 'https://google.com/',
          'url_telegram': 'https://t.me/',
        },
      );
}
