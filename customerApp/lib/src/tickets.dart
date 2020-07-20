import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TicketState();
  }
}

class TicketState  extends State<Tickets>
{
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Tickets Corner"),
    )
    );
  }
  Widget buildSearch(){
    return Scaffold(

    );
  }
}
