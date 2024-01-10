import 'package:flutter/foundation.dart';

class HistoryProvider extends ChangeNotifier {
  bool isSearchSelect = false;
  bool isDeleteEnable = false;

  bool isSelectedAll = false;

  List<int> selectIndexList = [];

  void updateSearch(bool value) {
    isSearchSelect = value;
    notifyListeners();
  }

  void updateDelete(bool value) {
    isDeleteEnable = value;
    notifyListeners();
  }

  void updateList(int index) {
    if (selectIndexList.contains(index)) {
      selectIndexList.remove(index);
      notifyListeners();
    } else {
      selectIndexList.add(index);
      notifyListeners();
    }
  }

  void selectAll(bool value) {
    selectIndexList.clear();
    isSelectedAll = value;
    for (var i = 0; i < 10; i++) {
      selectIndexList.add(i);
    }
    notifyListeners();
  }

  void clear() {
    isSelectedAll = false;

    isSearchSelect = false;
    isDeleteEnable = false;

    selectIndexList = [];
    notifyListeners();
  }
}
