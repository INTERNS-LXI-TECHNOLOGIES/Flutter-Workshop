import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<Contact> contact = [];
  Future<PermissionStatus> _contactsPermissions() async {
    PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.denied) {
      Map<Permission, PermissionStatus> permissionStatus =
          await [Permission.contacts].request();
      return permissionStatus[Permission.contacts] ?? PermissionStatus.limited;
    } else {
      return permission;
    }
  }

  Future<bool> contactPermissionsGranted() async {
    PermissionStatus contactsPermissionsStatus = await _contactsPermissions();
    if (contactsPermissionsStatus == PermissionStatus.granted) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    getAllContacts();
  }

  getAllContacts() async {
    Iterable<Contact> _contacts =
        await ContactsService.getContacts(withThumbnails: false);
    setState(() {
      contact = _contacts;
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          // child: Column(
          //   children: [
          //     Text('The real Fun begins'),
          //     ListView.builder(
          //       shrinkWrap: true,
          //       itemCount: contact.length,
          //       itemBuilder: (context, index) {
          //         return Card(
          //           child: ListTile(
          //             leading: CircleAvatar(
          //               backgroundColor: Colors.amber[900],
          //             ),
          //             title: Text(contact[index].displayName),
          //             subtitle: Text(contact[index].phones.elementAt(0).value),
          //           ),
          //         );
          //       },
          //     )
          //   ],
          // ),
          ),
    );
  }
}
