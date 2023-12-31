import '../jobs_jobs_influencer_page/widgets/listclient_item_widget.dart';
import 'controller/jobs_jobs_influencer_controller.dart';
import 'models/jobs_jobs_influencer_model.dart';
import 'models/listclient_item_model.dart';
import 'package:flutter/material.dart';
import 'package:iynfluencer/core/app_export.dart';
import 'package:iynfluencer/widgets/custom_button.dart';

class JobsJobsInfluencerPage extends StatelessWidget {
  JobsJobsInfluencerPage({Key? key})
      : super(
          key: key,
        );

  JobsJobsInfluencerController controller =
      Get.put(JobsJobsInfluencerController(JobsJobsInfluencerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: Padding(
            padding: getPadding(
              left: 20,
              top: 14,
              right: 19,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 1,
                    right: 1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 9,
                          bottom: 6,
                        ),
                        child: Text(
                          "lbl_all_jobs".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSatoshiBold14Gray900,
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          35,
                        ),
                        width: getHorizontalSize(
                          83,
                        ),
                        text: "lbl_filter".tr,
                        variant: ButtonVariant.OutlineIndigo50,
                        padding: ButtonPadding.PaddingT8,
                        fontStyle: ButtonFontStyle.SatoshiBold135,
                        prefixWidget: Container(
                          child: CustomImageView(
                            svgPath: ImageConstant.imgSignalBlack900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: getPadding(
                      top: 18,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: getVerticalSize(
                              23,
                            ),
                          );
                        },
                        itemCount: controller.jobsJobsInfluencerModelObj
                            .value.listclientItemList.value.length,
                        itemBuilder: (context, index) {
                          ListclientItemModel model = controller
                              .jobsJobsInfluencerModelObj
                              .value
                              .listclientItemList
                              .value[index];
                          return ListclientItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
