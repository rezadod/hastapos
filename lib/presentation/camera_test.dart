// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:google_ml_kit/google_ml_kit.dart';
// import 'dart:async';

// class AITEst extends StatefulWidget {
//   const AITEst({super.key});

//   @override
//   State<AITEst> createState() => _AITEstState();
// }

// class _AITEstState extends State<AITEst> {
//   @override
//   Widget build(BuildContext context) {
//     late String result;
//     File? _image;
//     InputImage? inputImage;
//     final picker = ImagePicker();

//     Future imageToText(inputImage) async {
//       result = '';

//       final textDetector = GoogleMlKit.vision.textRecognizer();
//       final RecognizedText recognisedText =
//           await textDetector.processImage(inputImage);

//       setState(() {
//         String text = recognisedText.text;
//         for (TextBlock block in recognisedText.blocks) {
//           //each block of text/section of text
//           final String text = block.text;
//           print("block of text: ");
//           print(text);
//           for (TextLine line in block.lines) {
//             //each line within a text block
//             for (TextElement element in line.elements) {
//               //each word within a line
//               result += element.text + " ";
//             }
//           }
//         }
//         result += "\n\n";
//       });
//     }

//     Future pickImageFromGallery() async {
//       final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//       setState(() {
//         if (pickedFile != null) {
//           _image = File(pickedFile.path);
//           inputImage = InputImage.fromFilePath(pickedFile.path);
//           imageToText(inputImage);
//         } else {
//           print('No image selected.');
//         }
//       });
//     }

//     Future captureImageFromCamera() async {
//       final pickedFile = await picker.pickImage(source: ImageSource.camera);

//       setState(() {
//         if (pickedFile != null) {
//           _image = File(pickedFile.path);
//           inputImage = InputImage.fromFilePath(pickedFile.path);
//           imageToText(inputImage);
//         } else {
//           print('No image selected.');
//         }
//       });
//     }

//     return Scaffold(
//       body: Center(
//           child: ElevatedButton(
//               onPressed: () => captureImageFromCamera(), child: Text('dasd'))),
//     );
//   }
// }
