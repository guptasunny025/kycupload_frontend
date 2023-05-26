// ignore_for_file: use_build_context_synchronously
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kyc_app/screens/pan_view_screen.dart';
import 'package:permission_handler/permission_handler.dart';

class PanDetailsScreen extends StatefulWidget {
  const PanDetailsScreen({super.key});

  @override
  State<PanDetailsScreen> createState() => _PanDetailsScreenState();
}

class _PanDetailsScreenState extends State<PanDetailsScreen> {
  List icondetails = [
    'assets/icon1.png',
    'assets/icon2.png',
    'assets/icon3.png',
    'assets/icon4.png'
  ];
  List verifieddetails = [
    {
      'icon': 'assets/secure.png',
      'title': 'Your data is secure and protected',
    },
    {
      'icon': 'assets/tick.png',
      'title': 'KYC compliant with RBI regulations',
    }
  ];

  final verifiyingdetails = [
    'Uploading file',
    'Extracting data',
    'Verifying with government records'
  ];
  var _imageFile;
  ImagePicker _picker = ImagePicker();
  _logopicker() async {
    XFile? image =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      _imageFile = image;
    });
    if (_imageFile != null) {
      File file = File( _imageFile.path );
      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
        return  PanViewScreen(image: file);
      }));
    }
  }

  _camerapicker() async {
    XFile? image =
        await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    setState(() {
      _imageFile = image;
    });
    if (_imageFile != null) {
      File file = File( _imageFile.path );
      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
        return  PanViewScreen(image:  file );
      }));
    }
  }

  var isloading = false;
  var uploading = false;
  getpermission() async {
    await Permission.camera.request();
    await Permission.storage.request();
  }

  @override
  void initState() {
    getpermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(
                top: deviceSize.height / 4 / 4 / 4 / 2,
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: deviceSize.width / 4 / 2 * .9,
                  ))),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            margin: EdgeInsets.only(
                top: deviceSize.height / 4 / 4 / 4 * .9,
                left: deviceSize.width / 4 / 4 * .9,
                right: deviceSize.width / 4 / 4 * .9),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                  top: deviceSize.height / 4 / 4 / 2,
                  bottom: deviceSize.height / 4 / 4 / 2,
                  left: deviceSize.width / 4 / 4 * .6,
                  right: deviceSize.width / 4 / 4 * .6),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: deviceSize.height / 4 / 4,
                    child: ListView.builder(
                        itemCount: icondetails.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Row(
                            children: [
                              index == 0
                                  ? Visibility(
                                      visible: false, child: Container())
                                  : Container(
                                      height: 3,
                                      width: deviceSize.width / 4 / 2 * .8,
                                      color: const Color(0xFFCCCCCC),
                                    ),
                              Image.asset(
                                icondetails[index],
                                width: deviceSize.width / 4 / 2,
                              )
                            ],
                          );
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: deviceSize.height / 4 / 4 / 4,
                        bottom: deviceSize.height / 4 / 4 / 2),
                    child: Text(
                      '0% Completed',
                      style: TextStyle(
                          color: const Color(0xFFB212CA),
                          fontSize: deviceSize.height / 4 / 4 / 3,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    textDirection: TextDirection.ltr,
                    softWrap: true,
                    maxLines: 3,
                    textScaleFactor: 1,
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: <TextSpan>[
                         TextSpan(
                              text: 'Upload Soft Copy Of Director\'s Personal',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize:
                                      deviceSize.height / 4 / 4 / 2 * .8)),
                          TextSpan(
                              text: ' PAN Card',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFFB212CA),
                                  fontSize:
                                      deviceSize.height / 4 / 4 / 2 * .8)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: deviceSize.height / 4 / 4 / 3),
                    child: Text(
                      'To complete verification of your business, we require authorisation of one of the company directors listed with the ministry of corporate affairs (MCA).',
                      style: TextStyle(
                           fontSize: deviceSize.height / 4 / 4 / 3*.8,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Card(
                    margin:
                        EdgeInsets.only(top: deviceSize.height / 4 / 4 * .7),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black, width: .3)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: deviceSize.height / 4 / 4 / 3,
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/upload.png',
                                width: deviceSize.width / 4 * .7,
                              ),
                            ),
                            SizedBox(
                              height: deviceSize.height / 4 / 4 / 4,
                            ),
                            Text(
                              'Upload your Director\'s PAN here',
                              style: TextStyle(
                                  fontSize: deviceSize.height / 4 / 4 / 3,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: deviceSize.width / 2 * .8,
                              height: deviceSize.height / 4 / 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color(0xFF461AA3),
                              ),
                              margin: EdgeInsets.only(
                                top: deviceSize.height / 4 / 4 / 3,
                                bottom: deviceSize.height / 4 / 4 / 4,
                                left: deviceSize.width / 4 / 4,
                                right: deviceSize.width / 4 / 4,
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF461AA3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(6), // <-- Radius
                                  ),
                                ),
                                onPressed: () async {
                                  await _logopicker();
                                },
                                child: Text('Browse',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            deviceSize.height / 4 / 4 / 3)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: deviceSize.height / 4 / 4 / 4 / 2),
                              child: Text(
                                'JPG/ PNG / PDF | Max Size: 10 MB',
                                style: TextStyle(
                                    fontSize: deviceSize.height / 4 / 4 / 4,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    top: deviceSize.height / 4 / 4 / 3),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: deviceSize.width / 4 / 4,
                                        height: 3,
                                        color: const Color(0xFF707070),
                                      ),
                                      Text(
                                        '  OR  ',
                                        style: TextStyle(
                                            fontSize: deviceSize.height /
                                                4 /
                                                4 /
                                                3 *
                                                .9,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Container(
                                        width: deviceSize.width / 4 / 4,
                                        height: 3,
                                        color: const Color(0xFF707070),
                                      ),
                                    ])),
                            Container(
                              margin: EdgeInsets.only(
                                  top: deviceSize.height / 4 / 4 / 4),
                              child: InkWell(
                                onTap: () async {
                                  await _camerapicker();
                                },
                                child: Text(
                                  'Take Photo',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 2,
                                      decorationStyle:
                                          TextDecorationStyle.solid,
                                      fontSize: deviceSize.height / 4 / 4 / 3,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFFB212CA)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: deviceSize.height / 4 / 4 / 2,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: deviceSize.height / 4 / 4 / 2,
                  ),
                  ListView.builder(
                      itemCount: verifiyingdetails.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (ctx, index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/check.png',
                                  width: deviceSize.width / 4 / 3,
                                ),
                                index != verifiyingdetails.length - 1
                                    ? Container(
                                        height: deviceSize.height / 4 / 4 / 2,
                                        width: 2,
                                        color: Colors.grey.shade400,
                                      )
                                    : Container()
                              ],
                            ),
                            SizedBox(
                              width: deviceSize.width / 4 / 4 / 2,
                            ),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        top: deviceSize.height / 4 / 4 / 4 / 2),
                                    child: Text(verifiyingdetails[index])))
                          ],
                        );
                      })
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            margin: EdgeInsets.only(
                top: deviceSize.height / 4 / 4 / 2,
                bottom: deviceSize.height / 4 / 4 / 3,
                left: deviceSize.width / 4 / 4 * .9,
                right: deviceSize.width / 4 / 4 * .9),
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: deviceSize.height / 4 / 4 / 2,
                  bottom: deviceSize.height / 4 / 4 / 2,
                ),
                child: ListView.builder(
                    itemCount: verifieddetails.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          SizedBox(
                              height: index != verifieddetails.length - 1
                                  ? 0
                                  : deviceSize.height / 4 / 4 / 4),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: deviceSize.width / 4 / 4 * .9),
                                child: Image.asset(
                                  verifieddetails[index]['icon'],
                                  width: deviceSize.width / 4 / 3,
                                ),
                              ),
                              SizedBox(
                                width: deviceSize.width / 4 / 4 * .9,
                              ),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top: deviceSize.height /
                                              4 /
                                              4 /
                                              4 /
                                              2),
                                      child: Text(
                                          verifieddetails[index]['title'])))
                            ],
                          ),
                          SizedBox(
                              height: index == verifieddetails.length - 1
                                  ? 0
                                  : deviceSize.height / 4 / 4 / 4),
                          index == verifieddetails.length - 1
                              ? Container()
                              : Divider()
                        ],
                      );
                    })),
          )
        ],
      )),
    );
  }
}
