import 'package:get/get.dart';

class countMa extends GetxController{
  RxInt count = 0.obs;

  void IncCount()
  {
    count++;
    print(count);
  }

  void decCount()
  {
    count--;
    print(count);
  }
}