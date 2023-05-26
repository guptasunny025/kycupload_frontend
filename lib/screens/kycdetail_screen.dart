import 'package:flutter/material.dart';
import 'package:kyc_app/screens/pan_details_screen.dart';

class KycDetailScreen extends StatefulWidget {
  const KycDetailScreen({super.key});

  @override
  State<KycDetailScreen> createState() => _KycDetailScreenState();
}

class _KycDetailScreenState extends State<KycDetailScreen> {
  bool agreevalue = false;
  List kycrequire = [
    'Business PAN',
    'Business bank account number and IFSC code'
  ];
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Expanded(
          child: ListView(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 4,
                margin: EdgeInsets.only(
                    top: deviceSize.height / 4 / 4 * .9,
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
                      RichText(
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        softWrap: true,
                        maxLines: 3,
                        textScaleFactor: 1,
                        text: TextSpan(
                          style: const TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Complete your',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: deviceSize.height / 4 / 4 / 2)),
                            TextSpan(
                                text: ' KYC',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFB212CA),
                                    fontSize: deviceSize.height / 4 / 4 / 2)),
                            TextSpan(
                                text: ' and Get your international account in',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: deviceSize.height / 4 / 4 / 2)),
                            TextSpan(
                                text: ' just 5 mins!',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFB212CA),
                                    fontSize: deviceSize.height / 4 / 4 / 2)),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 4,
                        color: const Color(0xFFF8E9FA),
                        margin: EdgeInsets.only(
                          top: deviceSize.height / 4 / 4 / 3,
                        ),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(
                              top: deviceSize.height / 4 / 4 / 3,
                              bottom: deviceSize.height / 4 / 4 / 3,
                              left: deviceSize.width / 4 / 4 * .7,
                              right: deviceSize.width / 4 / 4 * .7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'What to keep handy?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        deviceSize.height / 4 / 4 / 2 * .7),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: deviceSize.height / 4 / 4 / 4,
                                  left: deviceSize.width / 4 / 3 * .9,
                                ),
                                child: Text(
                                  'Business details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: deviceSize.height / 4 / 4 / 3),
                                ),
                              ),
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: kycrequire.length,
                                  itemBuilder: (ctx, index) {
                                    return Container(
                                      margin: EdgeInsets.only(
                                          top: deviceSize.height /
                                              4 /
                                              4 /
                                              4 *
                                              .7),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.check_circle,
                                            color: const Color(0xFFB212CA),
                                            size: deviceSize.width / 4 / 4 * .8,
                                          ),
                                          SizedBox(
                                            width: deviceSize.width / 4 / 4 / 3,
                                          ),
                                          Expanded(
                                              child: Text(kycrequire[index]))
                                        ],
                                      ),
                                    );
                                  })
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 4,
                        color: const Color(0xFFF8E9FA),
                        margin: EdgeInsets.only(
                          top: deviceSize.height / 4 / 4 / 3,
                        ),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(
                              top: deviceSize.height / 4 / 4 / 3,
                              bottom: deviceSize.height / 4 / 4 / 3,
                              left: deviceSize.width / 4 / 4 * .7,
                              right: deviceSize.width / 4 / 4 * .7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Why do we need KYC?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        deviceSize.height / 4 / 4 / 2 * .7),
                              ),
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 1,
                                  itemBuilder: (ctx, index) {
                                    return Container(
                                      margin: EdgeInsets.only(
                                          top: deviceSize.height /
                                              4 /
                                              4 /
                                              4 *
                                              .7),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.check_circle,
                                            color: const Color(0xFFB212CA),
                                            size: deviceSize.width / 4 / 4 * .8,
                                          ),
                                          SizedBox(
                                            width: deviceSize.width / 4 / 4 / 3,
                                          ),
                                          Expanded(
                                              child: Text(
                                            'RBI mandates company verification of customers engaging in cross border payments.',
                                            style: TextStyle(
                                                fontSize: deviceSize.height /
                                                    4 /
                                                    4 /
                                                    4,
                                                fontWeight: FontWeight.w400),
                                          ))
                                        ],
                                      ),
                                    );
                                  })
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 4,
                margin: EdgeInsets.only(
                    top: deviceSize.height / 4 / 4 / 2,
                    left: deviceSize.width / 4 / 4 * .9,
                    right: deviceSize.width / 4 / 4 * .9),
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        top: deviceSize.height / 4 / 4 / 4,
                        bottom: deviceSize.height / 4 / 4 / 4,
                        right: deviceSize.width / 4 / 4 * .6),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (ctx, index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Transform.translate(
                                offset: Offset(
                                    0, -deviceSize.height / 4 / 4 / 4 / 2),
                                child: Checkbox(
                                  side: const BorderSide(width: .8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),
                                  activeColor: const Color(0xFFB212CA),
                                  checkColor: Colors.white,
                                  value: agreevalue,
                                  onChanged: (bool? changeval) {
                                    setState(() {
                                      agreevalue = changeval!;
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: Transform.translate(
                                  offset: Offset(
                                      0, deviceSize.height / 4 / 4 / 4 / 2),
                                  child: RichText(
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    textDirection: TextDirection.ltr,
                                    softWrap: true,
                                    maxLines: 3,
                                    textScaleFactor: 1,
                                    text: TextSpan(
                                      style:
                                          const TextStyle(color: Colors.black),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                'By clicking the above, I agree with Briskpe',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: deviceSize.height /
                                                    4 /
                                                    4 /
                                                    3 *
                                                    .9)),
                                        TextSpan(
                                            text: ' Terms of Use',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: deviceSize.height /
                                                    4 /
                                                    4 /
                                                    3 *
                                                    .9)),
                                        TextSpan(
                                            text: ' and',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: deviceSize.height /
                                                    4 /
                                                    4 /
                                                    3 *
                                                    .9)),
                                        TextSpan(
                                            text: ' Privacy Policy.',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: deviceSize.height /
                                                    4 /
                                                    4 /
                                                    3 *
                                                    .9)),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        })),
              )
            ],
          ),
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                return const PanDetailsScreen();
              }));
            },
            child: Text('Agree and Continue',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: deviceSize.height / 4 / 4 / 3)),
          ),
        )
      ])),
    );
  }
}
