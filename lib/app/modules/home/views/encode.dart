import 'package:encodit/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class Encode extends GetView<HomeController> {
  const Encode({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.pickImageToEncode();
      },
      child: Column(
        children: [
          Obx(() {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    bottom: 20.h,
                  ),
                  child: TextField(
                    controller: controller.keyController,
                    textDirection: .ltr,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.secondaryColor,
                      hint: Text(
                        'پسورد موردنظر خود برای انکد کردن را وارد نمایید',
                        textDirection: TextDirection.rtl,
                        style: TextTheme.of(context).bodyLarge!.copyWith(
                          color: AppColors.textColor.withAlpha(120),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide(
                          width: 1.2.w,
                          color: AppColors.primaryColor.withAlpha(100),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide(
                          width: 1.2.w,
                          color: AppColors.primaryColor.withAlpha(100),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide(
                          width: 2.w,
                          color: AppColors.primaryColor.withAlpha(100),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: Get.width - 40.w,
                  height: Get.height / 2,
                  decoration: BoxDecoration(
                    color: controller.selectedImageToEncode.value == null
                        ? AppColors.secondaryColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(22.r),
                  ),
                  child: controller.selectedImageToEncode.value == null
                      ? Column(
                          mainAxisAlignment: .center,
                          children: [
                            Icon(
                              Icons.file_upload,
                              color: AppColors.primaryColor.withAlpha(100),
                              size: 90.sp,
                            ),
                            Text(
                              'تصویر موردنظر خودرا اپلود کنید',
                              style: TextTheme.of(context).headlineSmall!
                                  .copyWith(
                                    fontWeight: .w600,
                                    color: AppColors.primaryColor.withAlpha(
                                      100,
                                    ),
                                  ),
                            ),
                          ],
                        )
                      : Stack(
                          alignment: .center,
                          children: [
                            SizedBox(
                              width: Get.width / 2,
                              child: Image.file(
                                controller.selectedImageToEncode.value!,
                              ),
                            ),
                            Positioned(
                              top: 15.h,
                              left: 45.w,
                              child: InkWell(
                                onTap: () {
                                  controller.clearImageToEncode();
                                  controller.keyController.clear();
                                },
                                child: Card(
                                  color: AppColors.secondaryColor,
                                  elevation: 0,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0.r),
                                    child: Text(
                                      'حذف عکس',
                                      style: TextTheme.of(context).bodyLarge,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              ],
            );
          }),
          Padding(
            padding: EdgeInsets.only(
              top: 20.h,
              left: 20.w,
              right: 20.w,
              bottom: 10.h,
            ),
            child: SizedBox(
              width: Get.width,
              height: 70.h,
              child: ElevatedButton(
                onPressed: () {
                  controller.encodeImage(
                    controller.selectedImageToEncode.value!,
                    controller.keyController.text,
                  );
                  Get.showSnackbar(
                    GetSnackBar(
                      backgroundColor: AppColors.secondaryColor,
                      titleText: Text(
                        'عملیات موفقیت آمیز بود!',
                        textDirection: .rtl,
                        style: TextTheme.of(context).titleLarge!.copyWith(),
                      ),
                      borderRadius: 12.r,
                      duration: Duration(seconds: 2),
                      messageText: Text(
                        'تصویر با موفقیت انکد شد.',
                        textDirection: .rtl,
                      ),
                    ),
                  );
                },
                style: Theme.of(context).elevatedButtonTheme.style,
                child: Obx(() {
                  return controller.isLoadingEncode.value
                      ? CircularProgressIndicator()
                      : Text(
                          'شروع انکد',
                          style: TextTheme.of(context).titleLarge!.copyWith(
                            color: AppColors.backgroundColor,
                            fontWeight: .w600,
                          ),
                        );
                }),
              ),
            ),
          ),
          Obx(() {
            return controller.isEncoded.value
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.saveToGalleryButtonColor
                          .withAlpha(120),
                    ),
                    onPressed: () {
                      controller.isLoadingEncode.value = true;
                      controller.saveEncodedImage();
                      Get.back();

                      Get.showSnackbar(
                        GetSnackBar(
                          messageText: Text(
                            'تصویر انکد شده در گالری ذخیره شد.',
                            textDirection: .rtl,
                            style: TextTheme.of(context).titleMedium,
                          ),
                          titleText: Text(
                            'ذخیره شد.',
                            textDirection: .rtl,
                            style: TextTheme.of(context).titleLarge,
                          ),
                          duration: Duration(seconds: 2),
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: AppColors.secondaryColor,
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10.0.r),
                      child: Text(
                        'ذخیره در گالری',
                        style: TextTheme.of(
                          context,
                        ).titleLarge!.copyWith(color: AppColors.secondaryColor),
                      ),
                    ),
                  )
                : SizedBox();
          }),
        ],
      ),
    );
  }
}
