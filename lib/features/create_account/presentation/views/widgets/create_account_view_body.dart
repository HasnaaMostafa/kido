import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'ages_list_view.dart';
import 'custom_button.dart';
import 'custom_text_text_field.dart';

class CreateAccountViewBody extends StatefulWidget {
  const CreateAccountViewBody({super.key});

  @override
  State<CreateAccountViewBody> createState() => _CreateAccountViewBodyState();
}

class _CreateAccountViewBodyState extends State<CreateAccountViewBody> {
  File? image;

  Future uploadFile(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        debugPrint('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
                child: Image(image: AssetImage("assets/images/create.png"))),
            const SizedBox(
              height: 48,
            ),
            GestureDetector(
              onTap: () async {
                await uploadFile(ImageSource.gallery).then((value) {});
              },
              child: const Center(
                  child: Image(
                      image:
                          AssetImage("assets/images/add_profile_photo.png"))),
            ),
            const SizedBox(
              height: 16,
            ),
            const Center(
              child: Text(
                "Choose Your Profile Image",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff919191)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomTextTextField(
              text: "Inter Your Name",
              hintText: "The Best Name",
              hintStyle: TextStyle(
                  color: Color(0xff919191),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Choose Your Age",
              style: TextStyle(
                  color: Color(0xff919191),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const AgesListView(),
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 20),
              child: CustomButton(
                onPressed: () {},
                height: 56,
                width: double.infinity,
                text: "Let’s Start ",
                background: const Color(0xff6e41ec),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
