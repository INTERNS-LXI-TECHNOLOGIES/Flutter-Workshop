import 'package:flutter/material.dart';

class TariffPlanScreen extends StatefulWidget {
  final String operatorName;
  TariffPlanScreen(this.operatorName);

  @override
  _TariffPlanScreenState createState() => _TariffPlanScreenState(operatorName);
}

class _TariffPlanScreenState extends State<TariffPlanScreen> {
  final String operatorName;
  _TariffPlanScreenState(this.operatorName);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
