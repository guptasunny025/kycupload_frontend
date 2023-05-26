// ignore_for_file: sort_child_properties_last

import 'dart:io';

import 'package:flutter/material.dart';

class PanDetailsViewScreen extends StatefulWidget {
  final File image;
  const PanDetailsViewScreen({super.key, required this.image});

  @override
  State<PanDetailsViewScreen> createState() => _PanDetailsViewScreenState();
}

class _PanDetailsViewScreenState extends State<PanDetailsViewScreen> {
  List icondetails = [
    'assets/icon1.png',
    'assets/icon2.png',
    'assets/icon3.png',
    'assets/icon4.png'
  ];
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
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
                bottom: deviceSize.height / 4 / 4 / 4,
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
                      margin:
                          EdgeInsets.only(top: deviceSize.height / 4 / 4 / 3),
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
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: Colors.black, width: .3)),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: deviceSize.height / 4 / 4 / 4),
                                child: Text(
                                  'Image preview',
                                  style: TextStyle(
                                      fontSize: deviceSize.height / 4 / 4 / 4,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Container(
                                width: deviceSize.width * .8,
                                height: deviceSize.height / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.only(
                                    top: deviceSize.height / 4 / 4 / 4,
                                    left: deviceSize.width / 4 / 4 / 2,
                                    right: deviceSize.width / 4 / 4 / 2),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.file(
                                    widget.image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: deviceSize.height / 4 / 4 / 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Remove',
                                    style: TextStyle(color: Color(0xFF461AA3)),
                                  ),
                                  Container(
                                    width: deviceSize.width / 4,
                                    height: deviceSize.height / 4 / 4 * .8,
                                    child: const Text(
                                      'Change',
                                      style:
                                          TextStyle(color: Color(0xFF461AA3)),
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: const Color(0xFF461AA3))),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: deviceSize.height / 4 / 4 / 4*.9,
                              ),
                            ],
                          )),
                    ),
                  ],
                )),
          ),
          Container(
            width: double.infinity,
            height: deviceSize.height / 4 / 3 * .9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF461AA3),
            ),
            margin: EdgeInsets.only(
              top: deviceSize.height / 4 / 4 / 4,
              bottom: deviceSize.height / 4 / 4 / 4,
              left: deviceSize.width / 4 / 4,
              right: deviceSize.width / 4 / 4,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF461AA3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
              ),
              onPressed: () {},
              child: Text('Upload',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.height / 4 / 4 / 3)),
            ),
          )
        ]),
      ),
    );
  }
}
