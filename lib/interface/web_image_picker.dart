// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class WebImagePicker {
  static Future<String?> pickImage() async {
    final html.FileUploadInputElement uploadInput = html.FileUploadInputElement();
    uploadInput.accept = 'image/*';
    uploadInput.click();

    return await uploadInput.onChange.first.then((e) async {
      final reader = html.FileReader();
      reader.readAsDataUrl(uploadInput.files![0]);
      await reader.onLoadEnd.first;
      final base64String = reader.result as String;
      return base64String.split(',').last; // Extract base64 part of data URL
    });
  }
}
