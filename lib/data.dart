import 'package:asad_sirs_test_project/models/user_model.dart';
import 'package:get/state_manager.dart';

class ShoppingController extends GetxController {
  var users = <UserModel>[].obs;
// class ShoppingController extends GetxController {
//   var products = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }
//   @override
//   void onInit() {
//     super.onInit();
//     fetchProducts();
//   }

  void fetchProducts() async {
    await Future.delayed((const Duration(seconds: 1)));
    var userResult = [
      UserModel(
       
        productDescription: 'some description about product',
        productImage: 'assets/images/ring2.png',
        productName: 'Kids Jewelry',
        priceLevel: 'Kids Jewelry',
      ),
      UserModel(
         
          productDescription: 'some description about product',
          productImage: 'assets/images/ring2.png',
          priceLevel: 'Starting at ',
          productName: 'Womens Jewelry'),
      UserModel(
        
          productDescription: 'some description about product',
          productImage: 'assets/images/necklace2.png',
          priceLevel: 'Starting at ',
          productName: 'Mens Jewelry'),
      UserModel(
         
          productDescription: 'some description about product',
          productImage: 'assets/images/ring2.png',
          priceLevel: 'Starting at ',
          productName: 'Kids Jewelry'),
      UserModel(
        date: ,
        client: 'Facebook',
          name: 'iPhone 12'),
    ];
  }
}
