abstract class ILocalStorageHive {
  Future<List<String>> get(String key);
  Future put(String key, List<String> value);
  Future delete(String key);
}
