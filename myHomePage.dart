import 'dart:io';
import 'package:flutter/material.dart';
import 'package:plant_prototype/Components/myButton1.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plant_prototype/Components/myButton2.dart';
import 'package:plant_prototype/Constants/colors.dart';
import 'package:plant_prototype/Constants/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? _selectedImage;
  var textStyle = styleValues();
  var colorValues = ColorConstants();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Plant Doctor",
          style: textStyle.textStyle3,
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _selectedImage = null;
                });
              },
              icon: const Icon(
                Icons.replay,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Take a Photo of a Plant, we'll tell you",
                    style: textStyle.textStyle1,
                  ),
                ),
                Center(
                  child:
                      Text("what's wrong with it", style: textStyle.textStyle2),
                ),
                const SizedBox(
                  height: 45,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: _selectedImage != null
                      ? Image.file(_selectedImage!)
                      : Image.asset('assets/Images/wallpapp.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: My_Button(
                    onTap: () => PickImageFromGallery(),
                    text: "Upload Photo",
                    backcolor: colorValues.leafGreen,
                    textcolor: colorValues.navyBlue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: My_Button(
                    onTap: () => PickImageFromCamera(),
                    text: "Open Camera",
                    backcolor: Colors.grey[350],
                    textcolor: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: My_Button2(
                  onTap: () {},
                  text: "Start Diagnosis",
                  backcolor: colorValues.leafGreen,
                  textcolor: colorValues.navyBlue),
            )
          ],
        ),
      ),
    );
  }

  Future PickImageFromGallery() async {
    final imagereturned =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (imagereturned == null) return;
    setState(() {
      _selectedImage = File(imagereturned.path);
    });
  }

  Future PickImageFromCamera() async {
    final imagereturned =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (imagereturned == null) return;
    setState(() {
      _selectedImage = File(imagereturned.path);
    });
  }
}
