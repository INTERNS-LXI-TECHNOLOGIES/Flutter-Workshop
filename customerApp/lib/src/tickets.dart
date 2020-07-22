import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TicketState();
  }
}

class TicketState extends State<Tickets> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Lion_waiting_in_Namibia.jpg/220px-Lion_waiting_in_Namibia.jpg'),
        ),
      ),
         );
  }

  Widget buildSearch() {
    return Scaffold();
  }
}
