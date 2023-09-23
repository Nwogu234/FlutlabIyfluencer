import 'package:iynfluencer/data/models/Jobs/job_model.dart';
import 'package:iynfluencer/widgets/skeletons.dart';

import '../job_details_screen/widgets/job_details_item_widget.dart';
import 'controller/job_details_controller.dart';
import 'models/job_details_item_model.dart';
import 'package:flutter/material.dart';
import 'package:iynfluencer/core/app_export.dart';
import 'package:iynfluencer/widgets/app_bar/appbar_image.dart';
import 'package:iynfluencer/widgets/app_bar/appbar_title.dart';
import 'package:iynfluencer/widgets/app_bar/custom_app_bar.dart';
import 'package:iynfluencer/widgets/custom_button.dart';

class JobDetailsScreen extends GetWidget<JobDetailsController> {
  const JobDetailsScreen({this.selectedJob});

  final Job? selectedJob;

  @override
  Widget build(BuildContext context) {
    // final List<Job> jobDetailsItemList = [
    //   selectedJob,
    // ];
    String? capitalizeFirstLetter(String? text) {
      if (text == null || text.isEmpty) {
        return text;
      }
      return text[0].toUpperCase() + text.substring(1);
    }

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 50,
                leading: AppbarImage(
                    height: getSize(30),
                    width: getSize(30),
                    svgPath: ImageConstant.imgArrowleftGray600,
                    margin: getMargin(left: 20, top: 9, bottom: 9),
                    onTap: () {
                      onTapArrowleft16();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_job_details".tr),
                styleType: Style.bgOutlineIndigo50_1),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 25),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 19),
                                  child: Text("${selectedJob?.title}",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSatoshiBold18)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle5069,
                                  height: getVerticalSize(221),
                                  width: getHorizontalSize(375),
                                  margin: getMargin(top: 22)),
                              Padding(
                                  padding: getPadding(left: 20, top: 27),
                                  child: Text("lbl_description".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSatoshiBold14Gray900)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(324),
                                      margin: getMargin(
                                          left: 20, top: 9, right: 30),
                                      child: Text("${selectedJob?.description}",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtSatoshiLight13Gray900ab))),
                              Padding(
                                  padding: getPadding(left: 20, top: 29),
                                  child: Text("lbl_responsiblities".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSatoshiBold14Gray900)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(334),
                                      margin: getMargin(
                                          left: 20, top: 9, right: 20),
                                      child: Text(
                                          "${selectedJob?.responsibilities}",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtSatoshiLight13Gray900ab))),
                              Padding(
                                  padding: getPadding(left: 20, top: 28),
                                  child: Text("lbl_about_job".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSatoshiBold14Gray900)),
                              //   Padding(
                              //       padding:
                              //           getPadding(left: 20, top: 14, right: 53),
                              //       child: Obx(() => ListView.separated(
                              //           physics: NeverScrollableScrollPhysics(),
                              //           shrinkWrap: true,
                              //           separatorBuilder: (context, index) {
                              //             return SizedBox(
                              //                 height: getVerticalSize(15));
                              //           },
                              //           itemCount: jobDetailsItemList.length,
                              //           itemBuilder: (context, index) {
                              //             Job model = jobDetailsItemList[index];
                              //             if (controller.isTrendLoading.value) {
                              //               return TrendinghorizonItemSkeletonWidget(); // Skeleton widget
                              //             } else {
                              //               return JobDetailsItemWidget(
                              //                   jobDetailsItemModelObj: model,
                              //                   index: index);
                              //             }
                              //           }))),
                              Padding(
                                  padding: getPadding(left: 20, top: 7),
                                  child: Text(
                                      "lbl_total_bids".tr, //duration,budget,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtSatoshiLight135Gray600)),
                              Padding(
                                  padding: getPadding(left: 20, top: 6),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "${selectedJob?.bidsCount}",
                                            style: TextStyle(
                                                color: ColorConstant.gray900,
                                                fontSize: getFontSize(12.5),
                                                fontFamily: 'Satoshi',
                                                fontWeight: FontWeight.w700)),
                                        TextSpan(
                                            text: "lbl_bidders".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray600,
                                                fontSize: getFontSize(13.5),
                                                fontFamily: 'Satoshi',
                                                fontWeight: FontWeight.w300))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Padding(
                                  padding: getPadding(left: 20, top: 30),
                                  child: Text("lbl_about_client".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSatoshiBold14Gray900)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 13, right: 53),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgGroup85229,
                                        height: getSize(40),
                                        width: getSize(40),
                                        radius: BorderRadius.circular(
                                            getSize(20.0))),
                                    Padding(
                                        padding: getPadding(left: 16, top: 4),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "${capitalizeFirstLetter(selectedJob?.user?.firstName)} ${capitalizeFirstLetter(selectedJob?.user?.lastName)}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSatoshiBold13Gray900ab),
                                              Row(children: [
                                                Text(
                                                    "${selectedJob?.user?.country}",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSatoshiLight12),
                                                Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: getMargin(
                                                        left: 10, bottom: 3),
                                                    color:
                                                        ColorConstant.gray20001,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder7),
                                                    child: Container(
                                                        height: getSize(14),
                                                        width: getSize(14),
                                                        decoration: AppDecoration
                                                            .fillGray20001
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder7),
                                                        child: Stack(children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgContrast,
                                                              height:
                                                                  getVerticalSize(
                                                                      13),
                                                              width:
                                                                  getHorizontalSize(
                                                                      14),
                                                              alignment:
                                                                  Alignment
                                                                      .center)
                                                        ])))
                                              ])
                                            ])),
                                    Spacer(),
                                    CustomButton(
                                        height: getVerticalSize(30),
                                        width: getHorizontalSize(86),
                                        text: "lbl_message".tr,
                                        margin: getMargin(top: 5, bottom: 5),
                                        variant: ButtonVariant.FillGray200ab,
                                        padding: ButtonPadding.PaddingAll4,
                                        fontStyle:
                                            ButtonFontStyle.SatoshiBold13)
                                  ])),
                              Padding(
                                  padding: getPadding(left: 20, top: 19),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_13_jobs_posted".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSatoshiBold125Gray900a7),
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "lbl_3_open_jobs"
                                                                    .tr,
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray600,
                                                                fontSize:
                                                                    getFontSize(
                                                                        13.5),
                                                                fontFamily:
                                                                    'Satoshi',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300)),
                                                        TextSpan(
                                                            text: "lbl_view".tr,
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .blue900,
                                                                fontSize:
                                                                    getFontSize(
                                                                        13.5),
                                                                fontFamily:
                                                                    'Satoshi',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300))
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left))
                                            ])),
                                    Padding(
                                        padding:
                                            getPadding(left: 70, bottom: 1),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_member_since".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSatoshiLight135Gray600),
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Text("lbl_mar_2022".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSatoshiBold125Gray900a7))
                                            ]))
                                  ]))
                            ])))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 20, right: 20, bottom: 20),
                decoration: AppDecoration.outlineIndigo507,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(44),
                          text: "lbl_bid".tr,
                          padding: ButtonPadding.PaddingAll12,
                          onTap: () {
                            onTapBid();
                          })
                    ]))));
  }

  /// Navigates to the bidScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the bidScreen.
  onTapBid() {
    Get.toNamed(
      AppRoutes.bidScreen,
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft16() {
    Get.back();
  }
}
