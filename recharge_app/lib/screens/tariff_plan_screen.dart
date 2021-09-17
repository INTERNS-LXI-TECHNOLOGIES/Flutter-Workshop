import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recharge_app/model/rechargeplandata.dart';
import 'package:recharge_app/screens/Widgets/telecom_operator_header.dart';
import 'package:recharge_app/screens/home_screen.dart';
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
    _operatorPlans = RechargeApi().fetchOperatorPlans();
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
          color: Colors.yellow,
          height: height * .27,
          width: width * 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: CircleAvatar(
                  radius: 30,
                  // child: Image.asset('FlutterLogoStyle'),
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
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TelecomeOperatorHeader(),
                  operatorName.isNotEmpty
                      ? FutureBuilder<RechargePlanData>(
                          future: _operatorPlans,
                          builder: (context, snapshot) {
                            snapshot.hasData
                                ? ListView.builder(
                                    itemCount: snapshot
                                        .data.geographicalRechargePlans.length,
                                    itemBuilder: (context, index) {
                                      return Card(
                                        child: GestureDetector(
                                          onTap: () {
                                            HomeScreen(operatorCode);
                                          },
                                          child: ListTile(
                                            leading: CircleAvatar(
                                              backgroundColor:
                                                  Colors.amber[500],
                                              radius: 30,
                                              child: Padding(
                                                padding: EdgeInsets.all(6),
                                                child: FittedBox(
                                                  child: Text(
                                                    '\u{20B9} ${snapshot.data.geographicalRechargePlans[index].localAmounts}',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            title: Text('${snapshot.data}'),
                                            subtitle: Text('validity'),
                                            contentPadding: EdgeInsets.all(10),
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                : Text('No Data Available');
                            return CircularProgressIndicator();
                          },
                        )
                      : Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text(
                                'Press Any Operator From Above to get The Plans'),
                          ),
                        )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
