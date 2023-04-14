import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageTaker extends StatefulWidget {
  const ImageTaker({super.key});

  @override
  State<ImageTaker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImageTaker> {
  Future<void> _takePicture() async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo =
        await picker.pickImage(source: ImageSource.camera, maxWidth: 600);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      child: ElevatedButton.icon(
        onPressed: _takePicture,
        icon: const Icon(Icons.camera),
        label: const Text(
          'Take picture',
        ),
      ),
    );
  }
}
