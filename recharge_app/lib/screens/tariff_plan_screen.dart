import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recharge_app/model/rechargeplandata.dart';
import 'package:recharge_app/screens/Widgets/telecom_operator_header.dart';

import 'package:recharge_app/screens/main_screen.dart';
import 'package:recharge_app/services/recharge_plan_api.dart';

class TariffPlanScreen extends StatefulWidget {
  final String operatorName;
  TariffPlanScreen(this.operatorName);

  @override
  _TariffPlanScreenState createState() => _TariffPlanScreenState(operatorName);
}

class _TariffPlanScreenState extends State<TariffPlanScreen> {
  final String operatorName;
  _TariffPlanScreenState(this.operatorName);

  var operatorCode;
  int value;
  Future<RechargePlanData> _operatorPlans;
  void initState() {
    if (operatorName == 'jio') {
      operatorCode = 11;
    } else if (operatorName == 'bsnl') {
      operatorCode = 2;
    } else if (operatorName == 'vi') {
      operatorCode = 23;
    } else if (operatorName == 'airtel') {
      operatorCode = 2;
    }
    _operatorPlans = RechargeApi().fetchRechargePlans(operatorCode);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: height * .27,
          width: width * 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/images/PayitLogo.png'),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notification_important,
                    color: Colors.red,
                  ))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 160),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
            child: Container(
              width: width * 1,
              color: Colors.cyan[50],
              height: height * .8,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    TelecomeOperatorHeader(),
                    Container(
                      height: height * .58,
                      width: width * 1,
                      child: operatorName.isNotEmpty
                          ? FutureBuilder<RechargePlanData>(
                              future: _operatorPlans,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.rdata.length,
                                    itemBuilder: (context, index) {
                                      var data = snapshot.data.rdata;
                                      return Card(
                                        child: ListTile(
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    MainScreen(
                                                        '',
                                                        data['FULLTT'][index]
                                                            .rs),
                                              ),
                                            );
                                          },
                                          leading: CircleAvatar(
                                            backgroundColor: Colors.amber[500],
                                            radius: 30,
                                            child: Padding(
                                              padding: EdgeInsets.all(6),
                                              child: FittedBox(
                                                child: Text(
                                                  '\u{20B9} ${snapshot.data.rdata['FULLTT'][index].rs}',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          title: Text(
                                              '${snapshot.data.rdata['FULLTT'][index].validity}'),
                                          subtitle: Text(
                                              '${snapshot.data.rdata['FULLTT'][index].desc}'),
                                          contentPadding: EdgeInsets.all(10),
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                // return Center(child: CircularProgressIndicator());
                              },
                            )
                          : Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                    'Press Any Operator From Above to get The Plans'),
                              ),
                            ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
