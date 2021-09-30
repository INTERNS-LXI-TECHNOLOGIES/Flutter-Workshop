import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:recharge_app/screens/contactspage.dart';

class ContactsPermissionPage extends StatefulWidget {
  @override
  State<ContactsPermissionPage> createState() => _ContactsPermissionPageState();
}

class _ContactsPermissionPageState extends State<ContactsPermissionPage> {
  void requestPermission() async {
    var status = await Permission.contacts.status;
    if (!status.isGranted) {
      await Permission.contacts.request();
    }
  }

  @override
  void initState() {
    requestPermission();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () async {
          final PermissionStatus permissionStatus = await _getPermission();
          if (permissionStatus == PermissionStatus.granted) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactPage()));
          } else {
            showDialog(
                context: context,
                builder: (BuildContext context) => CupertinoAlertDialog(
                      title: Text('Permissions error'),
                      content: Text('Please enable contacts access '
                          'permission in system settings'),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text('OK'),
                          onPressed: () => Navigator.of(context).pop(),
                        )
                      ],
                    ));
          }
        },
        child: Container(child: Text('See Contacts')),
      ),
    );
  }

  Future<PermissionStatus> _getPermission() async {
    final PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
          await [Permission.contacts].request();
      return permissionStatus[Permission.contacts] ?? PermissionStatus.granted;
    } else {
      return permission;
    }
  }
}
