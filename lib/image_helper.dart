import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageHelper {
  ImageHelper({required this.imageCropper, required this.imagePicker});

  final ImageCropper imageCropper;
  final ImagePicker imagePicker;

  Future<XFile> pickImage(
      {ImageSource source = ImageSource.gallery,
      int ImageQuality = 100}) async {
    final file =
        await imagePicker.pickImage(source: source, imageQuality: ImageQuality);
    return file!;
  }

  Future<CroppedFile?> crop(
      {required XFile file, CropStyle cropStyle = CropStyle.rectangle}) async {
    final croppedImage = await imageCropper.cropImage(
        cropStyle: cropStyle,
        sourcePath: file.path,
        compressQuality: 100,
        uiSettings: [AndroidUiSettings(), IOSUiSettings()]);
    return croppedImage;
  }
}
