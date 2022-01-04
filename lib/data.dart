import 'package:asad_sirs_test_project/models/user_model.dart';
import 'package:get/state_manager.dart';

class DataController extends GetxController {
  var users = <UserModel>[].obs;

//   var products = <ProductModel>[].obs

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed((const Duration(seconds: 1)));
    var userResult = [
      UserModel(
          thirdLineLabelText: 'Facebook',
          firtsBtnText: 'Completed',
          jobTitle: 'Cloud Architect',
          name: 'John Hensen',
          secondBtnText: 'Feedback',
          time: '9:40 am',
          date: '18',
          firstLineLabel: 'SME:',
          firstLineLabelText: 'Scala Anderson',
          secondLineLabel: 'Candidate:',
          secondLineLabelText: 'Mark Smith',
          thirdLineLabel: 'Client:',
          client: 'Facebook'),
      UserModel(
          thirdLineLabelText: 'Google',
          firtsBtnText: 'Completed',
          jobTitle: 'Cloud Architect',
          name: 'John Hensen',
          secondBtnText: 'Feedback',
          time: '9:40 am',
          date: '18',
          firstLineLabel: 'SME:',
          firstLineLabelText: 'Scala Anderson',
          secondLineLabel: 'Candidate:',
          secondLineLabelText: 'Mark Smith',
          thirdLineLabel: 'Client:',
          client: 'Google'),
      UserModel(
          thirdLineLabelText: 'NimuSoft',
          firtsBtnText: 'Completed',
          jobTitle: 'Civil Architect',
          name: 'John Hensen',
          secondBtnText: 'Feedback',
          time: '9:40 am',
          date: '18',
          firstLineLabel: 'SME:',
          firstLineLabelText: 'Tushar Anderson',
          secondLineLabel: 'Candidate:',
          secondLineLabelText: 'Mark Smith',
          thirdLineLabel: 'Client:',
          client: 'Facebook'),
      UserModel(
          thirdLineLabelText: 'DataLink',
          firtsBtnText: 'Completed',
          jobTitle: 'Software Eng.',
          name: 'John Hensen',
          secondBtnText: 'Feedback',
          time: '9:40 am',
          date: '18',
          firstLineLabel: 'SME:',
          firstLineLabelText: 'Scala Anderson',
          secondLineLabel: 'Candidate:',
          secondLineLabelText: 'Mark Smith',
          thirdLineLabel: 'Client:',
          client: 'Facebook'),
      UserModel(
          thirdLineLabelText: 'NimuSoft',
          firtsBtnText: 'Completed',
          jobTitle: 'Geography Expert',
          name: 'John Hensen',
          secondBtnText: 'Feedback',
          time: '9:40 am',
          date: '18',
          firstLineLabel: 'SME:',
          firstLineLabelText: 'Scala Anderson',
          secondLineLabel: 'Candidate:',
          secondLineLabelText: 'Mark Smith',
          thirdLineLabel: 'Client:',
          client: 'Facebook'),
    ];
    users.value = userResult;
  }
}
