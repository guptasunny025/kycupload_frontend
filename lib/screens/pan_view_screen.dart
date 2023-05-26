import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kyc_app/screens/pan_detailsview_screen.dart';

class PanViewScreen extends StatefulWidget {
  final File image;
  const PanViewScreen({super.key, required this.image});

  @override
  State<PanViewScreen> createState() => _PanViewScreenState();
}

class _PanViewScreenState extends State<PanViewScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xFF302F2F),
        body: SafeArea(
            child: Column(children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(right: deviceSize.width / 4 / 4 / 3),
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                size: deviceSize.height / 4 / 4 * .7,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  width: deviceSize.width * .8,
                  height: deviceSize.height / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.only(
                      top: deviceSize.height / 4 / 4,
                      left: deviceSize.width / 4 / 3,
                      right: deviceSize.width / 4 / 3),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.file(
                      widget.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: deviceSize.height / 4 / 4,
                      left: deviceSize.width / 4 * .8,
                      right: deviceSize.width / 4 * .8),
                  child: Text(
                    'Take a photo of your the front of your ID',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: deviceSize.height / 4 / 4 / 2 * .8,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: deviceSize.height / 4 / 4 / 3,
                      left: deviceSize.width / 4 * .9,
                      right: deviceSize.width / 4 * .9),
                  child: Text(
                    'Please make sure that your ID fits in the box above.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: deviceSize.height / 4 / 4 / 4,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  top: deviceSize.height / 4 / 3,
                  bottom: deviceSize.height / 4 / 4 / 3,
                  left: deviceSize.width / 4 / 4 * .8,
                  right: deviceSize.width / 4 / 4 * .8),
              height: deviceSize.height / 4 * .6,
              width: double.infinity,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () async {},
                        child: Container(
                          width: deviceSize.width / 4,
                          height: deviceSize.height / 4 / 2,
                          padding: EdgeInsets.all(deviceSize.width / 4 / 4 / 3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/lighting.png',
                          ),
                        )),
                    GestureDetector(
                        onTap: () async {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) {
                            return PanDetailsViewScreen(
                              image: widget.image,
                            );
                          }));
                        },
                        child: Container(
                          width: deviceSize.width / 4,
                          height: deviceSize.height / 4 / 2,
                          padding: EdgeInsets.all(deviceSize.width / 4 / 4 / 3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/circle.png',
                          ),
                        )),
                    GestureDetector(
                        onTap: () async {},
                        child: Container(
                          width: deviceSize.width / 4,
                          height: deviceSize.height / 4 / 2,
                          padding: EdgeInsets.all(deviceSize.width / 4 / 4 / 3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/reload.png',
                          ),
                        )),
                  ]))
        ])));
  }
}
