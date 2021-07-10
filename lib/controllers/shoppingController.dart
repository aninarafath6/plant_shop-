import 'package:get/get.dart';
import 'package:getx/models/plant_model.dart';

class ShoppingController extends GetxController {
  var plants = [].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPlants();
  }

  void fetchPlants() async {
    await Future.delayed(
      Duration(seconds: 1),
    );
    var serverResponse = [
      Plant(
        id: 1,
        plantName: 'Spathiphullum plant',
        plantImage: 'assets/images/plant-1.png',
        price: 90.0,
        descreption: 'this is alovera natural planat',
      ),
      Plant(
        id: 2,
        plantName: 'go4plants Aglaonema Plant',
        plantImage: 'assets/images/plant-2.png',
        price: 199,
        descreption: 'this is alovera natural planat',
      ),
      Plant(
        id: 3,
        plantName: 'borealis Aglaonema Plant',
        plantImage: 'assets/images/plant-3.png',
        price: 170,
        descreption: 'this is alovera natural planat',
      ),
      Plant(
        id: 4,
        plantName: 'borealis Aglaonema Plant',
        plantImage: 'assets/images/plant-4.png',
        price: 400,
        descreption: 'this is alovera natural planat',
      ),
      Plant(
        id: 5,
        plantName: 'saraswati traders Snake Plant',
        plantImage: 'assets/images/plant-5.png',
        price: 170,
        descreption: 'this is alovera natural planat',
      ),
      Plant(
        id: 6,
        plantName: 'Spathiphullum plant',
        plantImage: 'assets/images/plant-6.png',
        price: 400,
        descreption: 'this is alovera natural planat',
      ),
      Plant(
        id: 7,
        plantName: 'alovera buty ++',
        plantImage: 'assets/images/plant-7.png',
        price: 400,
        descreption: 'this is alovera natural planat',
      ),
      Plant(
        id: 8,
        plantName: 'alovera buty ++',
        plantImage: 'assets/images/plant-8.png',
        price: 400,
        descreption: 'this is alovera natural planat',
      ),
    ];
    plants.value = serverResponse;
  }
}
