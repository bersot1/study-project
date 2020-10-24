import 'dart:async';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:study_mobx_2/app/shared/repository/hive/local_storage_interface.dart';

class LocalStorageHive implements ILocalStorageHive {
  // use o Completer quando voce estiver em um método que tem mais de 1 await
  // ele garantirá que o codigo continue somente depois do ultimo await
  // ele cria um future contendo os await
  Completer<Box> _completer = Completer<Box>();

  _init() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    var box = await Hive.openBox('db');
    _completer.complete(box);
  }

  LocalStorageHive() {
    _init();
  }

  @override
  Future delete(String key) async {
    var box = await _completer.future;
    box.delete(key);
  }

  @override
  Future<List<String>> get(String key) async {
    var box = await _completer.future;
    return box.get(key);
  }

  @override
  Future put(String key, List<String> value) async {
    var box = await _completer.future;
    box.put(key, value);
  }
}
