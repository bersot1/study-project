import 'package:study_mobx_2/app/shared/repository/hive/local_storage_interface.dart';

class LocalStorageMock implements ILocalStorageHive {
  List<String> storage = [];

  @override
  Future delete(String key) {
    return null;
  }

  @override
  Future<List<String>> get(String key) async {
    return storage;
  }

  @override
  Future put(String key, List<String> value) async {
    storage = value;
  }
}
