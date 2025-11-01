import 'package:get/get.dart';
import 'package:coffee_shop/utils/all_data.dart';

class FilterBarController extends GetxController {
  List filterData = filterTypes;

  void select(int index) {
    // ignore: avoid_function_literals_in_foreach_calls
    filterData.forEach((element) {
      element['isSelected'] = false;
    });
    filterData[index]['isSelected'] = !filterTypes[index]['isSelected'];
    update();
  }
}
