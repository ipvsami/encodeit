import 'package:encodit/app/modules/home/views/decode.dart';
import 'package:encodit/app/modules/home/views/encode.dart';
import 'package:encodit/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0.w),
          child: IconButton(
            onPressed: () {
              Get.defaultDialog(
                title: 'درباره اپلیکیشن',
                titlePadding: EdgeInsets.only(top: 10.h),
                titleStyle: TextStyle(
                  color: AppColors.textColor.withAlpha(200),
                ),
                confirm: Padding(
                  padding: EdgeInsets.only(bottom: 10.0.h),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'بستن',
                        style: TextTheme.of(context).titleLarge!.copyWith(
                          color: AppColors.backgroundColor,
                        ),
                      ),
                    ),
                  ),
                ),
                content: Padding(
                  padding: EdgeInsets.only(top: 9.0.r, left: 9.w, right: 9.w),
                  child: Text(
                    '''
انتخاب تصویر
ابتدا تصویر موردنظر خود را از گالری انتخاب کنید.
و روی تب «انکد‌تصویر» کلیک کنید.

وارد کردن کلید رمزنگاری
یک کلید دلخواه وارد نمایید. این کلید برای رمزنگاری و رمزگشایی تصویر استفاده می‌شود.

رمزنگاری تصویر
با انتخاب گزینه «شروع‌انکد»، تصویر به‌صورت پیکسل‌به‌پیکسل رمزنگاری می‌شود.

ارسال یا ذخیره تصویر رمزنگاری‌شده
در صورتی که قصد ارسال تصویر رمزنگاری‌شده را دارید، حتماً تصویر را به‌صورت فایل (File/Document) ارسال کنید.
ارسال تصویر به‌صورت عکس (Image)، با فشرده‌سازی، کاهش حجم یا تغییر فرمت، باعث خراب شدن رمزنگاری و غیرقابل‌بازیابی شدن تصویر خواهد شد.

رمزگشایی تصویر (Decode)
برای بازیابی تصویر، وارد بخش «دیکدتصویر» شده، فایل رمزنگاری‌شده را بدون هیچ‌گونه تغییر انتخاب کرده و دقیقاً همان کلید اولیه را وارد نمایید.''',
                    textAlign: .justify,
                    textDirection: .rtl,
                    style: TextTheme.of(context).bodyMedium!.copyWith(
                      color: AppColors.textColor.withAlpha(160),
                    ),
                  ),
                ),
              );
            },
            icon: Icon(
              Icons.question_mark_outlined,
              color: AppColors.primaryColor,
              size: 30.sp,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0.w),
            child: IconButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'درباره اپلیکیشن',
                  titlePadding: EdgeInsets.only(top: 10.h),
                  titleStyle: TextStyle(
                    color: AppColors.textColor.withAlpha(200),
                  ),
                  confirm: Padding(
                    padding: EdgeInsets.only(bottom: 10.0.h),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'بستن',
                          style: TextTheme.of(context).titleLarge!.copyWith(
                            color: AppColors.backgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  content: Padding(
                    padding: EdgeInsets.only(top: 9.0.r, left: 9.w, right: 9.w),
                    child: Text(
                      '''Encodit یک اپلیکیشن تخصصی برای رمزنگاری امن تصاویر است.
                  در این برنامه، تصاویر با استفاده از یک کلید اختصاصی و به‌صورت پیکسل‌به‌پیکسل رمزنگاری می‌شوند و بدون کلید صحیح قابل بازیابی نخواهند بود.
                  تمام فرآیندها به‌صورت کاملاً آفلاین انجام می‌شود و هیچ‌گونه داده‌ای از دستگاه شما ارسال یا ذخیره نمی‌گردد.
                  مسئولیت نگهداری کلید رمزنگاری بر عهده کاربر است؛ در صورت فراموشی کلید، امکان بازیابی تصویر وجود ندارد.
                  Encodit با هدف حفظ حریم خصوصی و امنیت اطلاعات شما طراحی شده است.''',
                      textAlign: .justify,
                      textDirection: .rtl,
                      style: TextTheme.of(context).bodyLarge!.copyWith(
                        color: AppColors.textColor.withAlpha(160),
                      ),
                    ),
                  ),
                );
              },
              icon: Icon(
                Icons.info_outline_rounded,
                color: AppColors.primaryColor,
                size: 30.sp,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Encode It',
          style: GoogleFonts.lato(
            color: AppColors.textColor.withAlpha(200),
            fontWeight: FontWeight.w500,
            fontSize: 30.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Obx(() {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0.h),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.changeTab(1);
                      },
                      child: Container(
                        width: Get.width / 3,
                        height: 70.h,
                        decoration: BoxDecoration(
                          color: controller.selectedTab.value == 1
                              ? AppColors.primaryColor
                              : AppColors.primaryColor.withAlpha(100),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.r),
                            bottomLeft: Radius.circular(12.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'دیکد تصویر',
                            style: TextTheme.of(context).titleLarge!.copyWith(
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.changeTab(0);
                      },
                      child: Container(
                        width: Get.width / 3,
                        height: 70.h,
                        decoration: BoxDecoration(
                          color: controller.selectedTab.value == 0
                              ? AppColors.primaryColor
                              : AppColors.primaryColor.withAlpha(100),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12.r),
                            bottomRight: Radius.circular(12.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'انکد تصویر',
                            style: TextTheme.of(context).titleLarge!.copyWith(
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
            Padding(
              padding: EdgeInsets.only(top: 30.0.h),
              child: Obx(() {
                return controller.selectedTab.value == 0 ? Encode() : Decode();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
