///THIS IS THE FILE HOUSING THE SKELETON WIDGETS USED THROUGH OUT THE APP
//**Skeleton for Trending Influencers Widget**
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class TrendinghorizonItemSkeletonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: IntrinsicWidth(
        child: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 45.r, // Half of the height and width
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 14.h,
                        width: 14.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          color: Colors.grey.shade300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: Container(
                          width: 100.w, // Adjust as needed
                          height: 15.h, // Adjust as needed
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

//** This is the Skeleton for Recommended Influencers
class Listrectangle50ItemSkeletonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.grey.shade300,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 267.h,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: EdgeInsets.all(16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100.w, // Adjust as needed
                      height: 15.h, // Adjust as needed
                      color: Colors.grey.shade300,
                    ),
                    Container(
                      width: 100.w, // Adjust as needed
                      height: 15.h, // Adjust as needed
                      color: Colors.grey.shade300,
                    ),
                    Container(
                      width: 100.w, // Adjust as needed
                      height: 15.h, // Adjust as needed
                      color: Colors.grey.shade300,
                    ),
                    Container(
                      width: 100.w, // Adjust as needed
                      height: 15.h, // Adjust as needed
                      color: Colors.grey.shade300,
                    ),


                    // Add more skeleton shapes as needed
                  ],
                ),
              ),
              // Add more skeleton shapes as needed
            ],
          ),
        ),
      ),
    );
  }
}

// Skeleton for the list of Jobs
class InfluencerHomeItemSkeletonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 13.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.grey.shade300,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 14.h,
                width: 200.w,
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, right: 13.w),
                child: Container(
                  height: 14.h,
                  width: 321.w,
                  color: Colors.grey.shade300,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 14.h, right: 67.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(height: 13.h, width: 100.w, color: Colors.grey.shade300),
                        Container(height: 12.h, width: 100.w, color: Colors.grey.shade300),
                      ],
                    ),
                    Column(
                      children: [
                        Container(height: 13.h, width: 100.w, color: Colors.grey.shade300),
                        Container(height: 12.h, width: 100.w, color: Colors.grey.shade300),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 180.h,
                width: 335.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.r),
                  color: Colors.grey.shade300,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 8.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Colors.grey.shade300,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: Container(
                        height: 14.h,
                        width: 100.w,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Container(
                        height: 12.h,
                        width: 80.w,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


