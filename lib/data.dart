import 'package:asad_sirs_test_project/models/user_model.dart';
import 'package:get/state_manager.dart';

class DataController extends GetxController {
  var users = <UserModel>[].obs;
// class ShoppingController extends GetxController {
//   var products = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();

  }
  // @override
  // void onInit() {
  //   super.onInit();
  //   fetchProducts();
  // }

  void fetchProducts() async {
    await Future.delayed((const Duration(seconds: 1)));
    var userResult = [
    UserModel(client: 'Facebook', firtsBtnText:'Completed', jobTitle: 'Cloud Architect', name: 'John Hensen', secondBtnText: 'Feedback', time: '9:40 am', date: '18'),
      UserModel(client: 'Google', firtsBtnText:'Completed', jobTitle: 'Cloud Architect', name: 'John Hensen', secondBtnText: 'Feedback', time: '9:40 am', date: '18'),
        UserModel(client: 'NimuSoft', firtsBtnText:'Completed', jobTitle: 'Cloud Architect', name: 'John Hensen', secondBtnText: 'Feedback', time: '9:40 am', date: '18'),
      UserModel(client: 'DataLink', firtsBtnText:'Completed', jobTitle: 'Cloud Architect', name: 'John Hensen', secondBtnText: 'Feedback', time: '9:40 am', date: '18')
      ,UserModel(client: 'SoftBagan', firtsBtnText:'Completed', jobTitle: 'Cloud Architect', name: 'John Hensen', secondBtnText: 'Feedback', time: '9:40 am', date: '18')
    ];
    users.value = userResult;
  }
}
