import 'dart:io';
import 'package:flutter/widgets.dart';

import '../../../services/processor.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  final selectedTab = 0.obs;
  final ImagePicker _picker = ImagePicker();
  final TextEditingController keyController = TextEditingController();
  Rx<File?> selectedImageToEncode = Rx<File?>(null);
  Rx<File?> selectedImageToDecode = Rx<File?>(null);
  RxBool isEncoded = false.obs;
  RxBool isDecoded = false.obs;

  RxBool isLoadingEncode = false.obs;
  RxBool isLoadingDecode = false.obs;

  void changeTab(int index) {
    selectedTab.value = index;
  }

  Future<void> pickImageToEncode() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      selectedImageToEncode.value = File(image.path);
    }
  }

  Future<void> pickImageToDecode() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      selectedImageToDecode.value = File(image.path);
    }
  }

  void clearImageToEncode() {
    selectedImageToEncode.value = null;
    isEncoded.value = false;
  }

  void clearImageToDecode() {
    selectedImageToDecode.value = null;
    isDecoded.value = false;
  }

  void encodeImage(File file, String key) async {
    File encoded = await encodeFile(file, key);

    selectedImageToEncode.value = encoded;
    isEncoded.value = true;

    isLoadingEncode.value = false;
  }

  Future<void> decodeImage(File file, String key) async {
    File decoded = await decodeFile(file, key);
    selectedImageToDecode.value = decoded;
    isDecoded.value = true;

    isLoadingDecode.value = false;
  }

  void saveEncodedImage() {
    saveToGallery(selectedImageToEncode.value!);
  }

  void saveDecodedImage() {
    saveToGallery(selectedImageToDecode.value!);
  }
}
