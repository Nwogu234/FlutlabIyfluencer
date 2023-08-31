import 'package:iynfluencer/core/app_export.dart';
import 'package:iynfluencer/presentation/post_page_screen/models/post_page_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PostPageScreen.
///
/// This class manages the state of the PostPageScreen, including the
/// current postPageModelObj
class PostPageController extends GetxController
with SingleGetTickerProviderMixin {PostPageController(this.postPageModelObj);
  TextEditingController inputController = TextEditingController();

  TextEditingController frametwelveController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController priceoneController = TextEditingController();

  TextEditingController frametwelveoneController = TextEditingController();

  TextEditingController frametwelvetwoController = TextEditingController();
late AnimationController animationController;

  // this is for the job category

Rx<SelectionPopupModel> selectedNiche =
    SelectionPopupModel(id: 0, title: "Select Niche").obs;
RxList<SelectionPopupModel> nicheToDisplay = RxList<SelectionPopupModel>();
RxList<SelectionPopupModel> selectedNiches = <SelectionPopupModel>[].obs;

final List<SelectionPopupModel> dropdownItems = [
  SelectionPopupModel(id: 0, title: "Select Niche"),
  SelectionPopupModel(
      id: 1, title: "Fashion & Style", value: "Fashion & Style"),
  SelectionPopupModel(id: 2, title: "Beauty", value: "Beauty"),
  SelectionPopupModel(
      id: 3, title: "Health & Fitness", value: "Health & Fitness"),
  SelectionPopupModel(id: 4, title: "Travel", value: "Travel"),
  SelectionPopupModel(
      id: 5, title: "Food & Cooking", value: "Food & Cooking"),
  SelectionPopupModel(
      id: 6, title: "Parenting & Family", value: "Parenting & Family"),
  SelectionPopupModel(id: 7, title: "Tech & Gaming", value: "Tech & Gaming"),
  SelectionPopupModel(
      id: 8,
      title: "Home & Interior Design",
      value: "Home & Interior Design"),
  SelectionPopupModel(
      id: 9, title: "Finance & Investment", value: "Finance & Investment"),
  SelectionPopupModel(
      id: 10,
      title: "Entertainment & Celebrity",
      value: "Entertainment & Celebrity"),
  SelectionPopupModel(
      id: 11, title: "Art & DIY Craft", value: "Art & DIY Craft"),
  SelectionPopupModel(
      id: 12,
      title: "Sustainability & Eco-friendly",
      value: "Sustainability & Eco-friendly"),
  SelectionPopupModel(
      id: 13, title: "Education & Career", value: "Education & Career"),
  SelectionPopupModel(
      id: 14, title: "Science & Technology", value: "Science & Technology"),
  SelectionPopupModel(id: 15, title: "Others", value: "Others"),
];

//this is to add and remove niches from drop down list

void onDropdownItemChanged(SelectionPopupModel value) {
  selectedNiche.value = value;
  // Check if the item is not already selected
  if (!selectedNiches.contains(value) &&
      value != SelectionPopupModel(id: 0, title: "Select Niche")) {
    selectedNiches.add(value);
  }
  print("onDropdownItemChanged called");
  print("Added value to selectedDropdownItems: ${value.title}");
  print("Current selectedValue: ${selectedNiche.value.title}");
  nicheToDisplay.value =
      dropdownItems.where((item) => !selectedNiches.contains(item)).toList();
  print(nicheToDisplay.map((item) => item.toString()).toList());
  selectedNiche.value = SelectionPopupModel(id: 0, title: "Select Niche");
}

//this is to delete niches clip widget
handleNicheDelete(SelectionPopupModel platform) {
  selectedNiche.value = nicheToDisplay.last;
  update();
  print(selectedNiche.value.id);
  selectedNiches.remove(platform);
  nicheToDisplay.value = dropdownItems
      .where((item) => !selectedNiches.value.contains(item))
      .toList();
  selectedNiche.value = SelectionPopupModel(id: 0, title: "Select Niche");
  print(selectedNiche.value.id);
  update();
}

//this is for adding resposibilities
Rx<bool> isAddingResponsibility = false.obs;
final formKey = GlobalKey<FormState>();
Rx<String> errorText="".obs;
var resposibilities = <String>[].obs;
startAddingResponsibilities(){
  isAddingResponsibility.value = true;
}
addResponsibilities(String responsibility){
  resposibilities.add(responsibility);
  print(responsibility);
  isAddingResponsibility.value=false;
}
  Rx<PostPageModel> postPageModelObj = PostPageModel().obs;

handleDelete(String account){
  resposibilities.remove(account);
  update();
}

@override
void onInit(){
  super.onInit();
  // Initialize animation controller
  animationController = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 500),
  );
  animationController.forward();

  // Define fade-in animation
  // fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
  //   CurvedAnimation(parent: animationController!, curve: Curves.easeIn),
  // );
  nicheToDisplay.value =
      dropdownItems.where((item) => !selectedNiches.contains(item)).toList();
  selectedNiche.value = SelectionPopupModel(id: 0, title: "Select Niche");
}

  @override
  void onClose() {
    super.onClose();
    animationController.dispose();
    inputController.dispose();
    frametwelveController.dispose();
    priceController.dispose();
    priceoneController.dispose();
    frametwelveoneController.dispose();
    frametwelvetwoController.dispose();
  }
}
