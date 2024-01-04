import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum StorageKey {
  accessToken('ACCESS_TOKEN'),
  fcmToken('FCM_TOKEN');

  final String key;
  const StorageKey(this.key);
}

class SecureStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<void> saveAccessToken(String val) async {
    await _storage.write(key: StorageKey.accessToken.key, value: val);
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: StorageKey.accessToken.key);
  }

  Future<void> saveFcmToken(String val) async {
    await _storage.write(key: StorageKey.fcmToken.key, value: val);
  }

  Future<String?> getFcmToken() async {
    return await _storage.read(key: StorageKey.fcmToken.key);
  }

  Future<void> deleteTokens() async {
    await _storage.delete(key: StorageKey.accessToken.key);
    await _storage.delete(key: StorageKey.fcmToken.key);
  }
}
