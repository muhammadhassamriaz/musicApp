import '../../package/route.dart';

class DataProvider with ChangeNotifier {
  int _index = 0;
  int get index {
    return _index;
  }

  setIndexValue(int _value) {
    _index = _value;
    notifyListeners();
  }

  int _homeTypeIndex = 0;
  int get homeTypeIndex {
    return _homeTypeIndex;
  }

  setHomeTypeIndex(int _value) {
    _homeTypeIndex = _value;
    notifyListeners();
  }
}
