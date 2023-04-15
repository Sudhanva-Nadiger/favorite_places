import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageTaker extends StatefulWidget {
  const ImageTaker({super.key, required this.onPickImage});

  final void Function(File image) onPickImage;

  @override
  State<ImageTaker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImageTaker> {
  File? _selectedImage;

  Future<void> _takePicture() async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo =
        await picker.pickImage(source: ImageSource.camera, maxWidth: 600);
    if (photo == null) {
      return;
    }

    setState(() {
      _selectedImage = File(photo.path);
    });

    widget.onPickImage(_selectedImage!);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary.withOpacity(
                0.2,
              ),
        ),
      ),
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      child: _selectedImage != null
          ? GestureDetector(
              onTap: _takePicture,
              child: Image.file(
                _selectedImage!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            )
          : ElevatedButton.icon(
              onPressed: _takePicture,
              icon: const Icon(Icons.camera),
              label: const Text(
                'Take picture',
              ),
            ),
    );
  }
}
