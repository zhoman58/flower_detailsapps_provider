import 'package:batch_g/model/flower_model.dart';
import 'package:flutter/foundation.dart';
import 'package:batch_g/repo/flower_repo.dart';

class FlowerProvider with ChangeNotifier {
  FlowerRepo flowerRepo = FlowerRepo();
  List<FlowerModel> _flowerModelList = [];
  List<FlowerModel> get flowerModelList => _flowerModelList;

  getFlowerData() {
    _flowerModelList = flowerRepo.flowerModelList;
    notifyListeners();
  }
}
