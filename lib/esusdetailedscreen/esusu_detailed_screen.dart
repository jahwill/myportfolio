import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:myportfolio/esusdetailedscreen/custompaint_progress.dart';

class EsusuDetailsScreen extends StatefulWidget {
  @override
  _EsusuDetailsScreenState createState() => _EsusuDetailsScreenState();
}

class _EsusuDetailsScreenState extends State<EsusuDetailsScreen> {
  static const double kPadding = 20.0;
  // double _esusuInterestRate = 8;
  double totalamount = 200000;
  double amountalreadysaved = 200000.00;
  String savingfrequency = 'daily';

  ///either daily , weekly monthly or
  ///biannual
  double sliddervalue = 0;

  @override
  Widget build(BuildContext context) {
    var ttheme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFE6E8F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Icon(
            Icons.info_outline_rounded,
            color: ttheme.primaryColor,
          ),
          SizedBox(
            width: kPadding,
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'My Esusu Balance ',
              style: ttheme.textTheme.subtitle2,
            ),
          ),
          SizedBox(
            height: kPadding / 4,
          ),
          Text('\u{20A6}$amountalreadysaved',
              style: ttheme.textTheme.headline4
                  .copyWith(color: ttheme.primaryColor, fontSize: 29)),
          SizedBox(
            height: kPadding / 4,
          ),
          Text('Save Daily, Weekly, Monthly or Biannual.',
              style: ttheme.textTheme.caption),
          SizedBox(
            height: kPadding,
          ),
          SizedBox(
            height: 65,
            width: size.width,
            child: SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.center,
                child: SizedBox(
                  // height: 70,
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 57,
                        width: size.width * 0.5,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.15))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Esusu Deposit",
                              style: ttheme.textTheme.bodyText1.copyWith(
                                fontSize: 12.5,
                                color: ttheme.primaryColor,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '\u{20A6}$amountalreadysaved ',
                                  style: ttheme.textTheme.subtitle2
                                      .copyWith(fontSize: 16),
                                ),
                                Expanded(
                                  child: Text(
                                    '$savingfrequency',
                                    overflow: TextOverflow.ellipsis,
                                    style: ttheme.textTheme.bodyText1
                                        .copyWith(color: ttheme.primaryColor),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 57,
                        width: size.width * 0.4,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.15))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Withdrawal Date",
                              style: ttheme.textTheme.bodyText1.copyWith(
                                fontSize: 12.5,
                                color: ttheme.primaryColor,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "30th May 2021",
                                style: ttheme.textTheme.subtitle2.copyWith(
                                  fontSize: 16,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: kPadding * 7,
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                CustomProgressPainter(
                  ///the customProgressPainter class takes in the total
                  ///amount and the amount already saved to calculate the
                  ///percentage of esusu saved already.
                  context: context,
                  height: 70.0,
                  width: 70.0,

                  totalamount: totalamount, //total amount save
                  amountalreadysaved: amountalreadysaved, //amount of savings
                  // already saved
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Budget has been Saved')
              ],
            ),
          ),
          Container(
            height: 52,
            width: size.width,
            margin: EdgeInsets.symmetric(horizontal: kPadding),
            decoration: BoxDecoration(
                color: ttheme.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
              child: Text('Start Saving',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            height: kPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    ///todo:logic to pause esusu comes here
                  },
                  onTapDown: (d) {
                    print('down');
                  },
                  onTapCancel: () {
                    print('cancel');
                  },
                  child: Container(
                    height: 51,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('Pause',
                          style: TextStyle(color: ttheme.primaryColor)),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    ///todo:logic to cancel esusu comes here
                  },
                  onTapDown: (d) {
                    print('down');
                  },
                  onTapCancel: () {
                    print('cancel');
                  },
                  child: Container(
                    height: 51,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('Cancel Savings',
                          style: TextStyle(
                              color: ttheme.primaryColor, fontSize: 13)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: kPadding * 1.5,
          ),
          SizedBox(
              height: 80,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _quickmenuHolder(ttheme,
                        icon: Icon(
                          Icons.account_balance_sharp,
                          color: ttheme.primaryColor,
                        ),
                        subtitle: "Withdraw"),
                    _quickmenuHolder(ttheme,
                        icon: Icon(
                          Icons.settings,
                          color: ttheme.primaryColor,
                        ),
                        subtitle: "Settings")
                  ]))
        ],
      ),
    );
  }

  Widget _quickmenuHolder(ThemeData ttheme, {icon, String subtitle}) {
    return Column(
      children: [
        Container(
          height: 55.0,
          width: 55.0,
          margin: EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
              color: ttheme.primaryColor.withOpacity(0.15),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Container(
                height: 25.0,
                width: 25.0,
                // color: Colors.red,
                child: icon),
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
