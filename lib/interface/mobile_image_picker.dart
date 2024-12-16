import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:convert';

class MobileImagePicker {
  static Future<String?> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final bytes = await File(pickedFile.path).readAsBytes();
      return base64Encode(bytes); // Convert the image to base64
    }

    return null;
  }
}
