import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:impty_project/core/Data/models/apis/file_type_model.dart';
import 'package:impty_project/core/enums/file_type_model.dart';
import 'package:impty_project/core/utils/pick_file.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/utils.dart';

class CustomProfile extends StatefulWidget {
  CustomProfile({super.key});

  @override
  State<CustomProfile> createState() => _CustomProfileState();
}

class _CustomProfileState extends State<CustomProfile> {
  final ImagePicker picker = ImagePicker();

  FileTypeModel? selectedFile;

  bool showOption = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          InkWell(
            onTap: selectedFile == null
                ? () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                              height: 200,
                              child: Column(children: [
                                ListTile(
                                  leading: Icon(Icons.camera_alt),
                                  title: Text('Camera'),
                                  onTap: () {
                                    pickFile(FileTypeEnum.CAMERA)
                                        .then((value) => selectedFile = value);
                                    Navigator.pop(
                                        context); // close the bottom sheet
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.photo_library),
                                  title: Text('Gallery'),
                                  onTap: () {
                                    pickFile(FileTypeEnum.GALLERY)
                                        .then((value) => selectedFile = value);
                                    Navigator.pop(
                                        context); // close the bottom sheet
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.folder),
                                  title: Text('File'),
                                  onTap: () {
                                    pickFile(FileTypeEnum.FILE)
                                        .then((value) => selectedFile = value);
                                    Navigator.pop(
                                        context); // close the bottom sheet
                                  },
                                ),
                              ]));
                        });
                  }
                : null,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.mainTextGreyColor,
              child: selectedFile == null || selectedFile!.path.isEmpty
                  ? Icon(Icons.image,
                      size: screenWidth(10), color: AppColors.mainGreyColor)
                  : selectedFile!.type != FileTypeEnum.FILE
                      ? ClipOval(
                          child: Image.file(
                          File(selectedFile!.path),
                          fit: BoxFit.cover,
                          width: screenWidth(1),
                          height: screenHeight(1),
                        ))
                      : Icon(Icons.insert_drive_file,
                          size: screenWidth(10),
                          color: AppColors.mainGreyColor),
            ),
          ),
          Visibility(
            visible: selectedFile != null,
            child: Positioned(
              bottom: screenWidth(130),
              right: screenWidth(180),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                            height: 200,
                            child: Column(children: [
                              ListTile(
                                leading: Icon(Icons.camera_alt),
                                title: Text('Camera'),
                                onTap: () {
                                  pickFile(FileTypeEnum.CAMERA)
                                      .then((value) => selectedFile = value);
                                  Navigator.pop(
                                      context); // close the bottom sheet
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.photo_library),
                                title: Text('Gallery'),
                                onTap: () {
                                  pickFile(FileTypeEnum.GALLERY)
                                      .then((value) => selectedFile = value);
                                  Navigator.pop(
                                      context); // close the bottom sheet
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.folder),
                                title: Text('File'),
                                onTap: () {
                                  pickFile(FileTypeEnum.FILE)
                                      .then((value) => selectedFile = value);
                                  Navigator.pop(
                                      context); // close the bottom sheet
                                },
                              ),
                            ]));
                      });
                },
                child: CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.mainOrangeColor,
                    child: Icon(Icons.edit,
                        size: screenWidth(15), color: AppColors.mainGreyColor)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
