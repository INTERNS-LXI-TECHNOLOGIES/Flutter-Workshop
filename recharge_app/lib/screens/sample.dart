// import 'package:flutter/material.dart';
// import 'package:flutter_contact/contacts.dart';
// import 'package:permission_handler/permission_handler.dart';

// // import '';
// class SampleContacts extends StatefulWidget {
//   @override
//   _SampleContactsState createState() => _SampleContactsState();
// }

// class _SampleContactsState extends State<SampleContacts> {
//   List<Contact> contactList;

//   @override
//   void initState() {
//     super.initState();
//     contactList = List();
//     readContacts();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: (contactList.length > 0)
//           ? ListView.builder(
//               itemCount: contactList.length,
//               itemBuilder: (context, index) {
//                 Contact contact = contactList.get(index);
//                 return Card(
//                   child: ListTile(
//                     leading: CircleAvatar(
//                       backgroundColor: Colors.green,
//                       child: Center(
//                         child: (contact.avatar != null)
//                             ? Image.memory(
//                                 contact.avatar,
//                                 height: 28,
//                                 width: 28,
//                               )
//                             : Icon(Icons.face),
//                       ),
//                     ),
//                     title: Text("${contact.displayName}"),
//                     subtitle: Text((contact.phones.length > 0)
//                         ? "${contact.phones.get(0)}"
//                         : "No contact"),
//                     trailing: InkWell(
//                       child: Icon(
//                         Icons.call,
//                         color: Colors.green,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             )
//           : Center(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   CircularProgressIndicator(
//                     backgroundColor: Colors.red,
//                   ),
//                   Text("reading Contacts...")
//                 ],
//               ),
//             ),
//     );
//   }

//   readContacts() async {
//     final PermissionStatus permissionStatus = await _getPermission();
//     if (permissionStatus == PermissionStatus.granted) {
//       Contacts.streamContacts().forEach((contact) {
//         print("${contact.displayName}");
//         setState(() {
//           contactList.add(contact);
//         });
//       });
//     }

//     return Contacts.streamContacts(bufferSize: 50);
//   }

//   Future<PermissionStatus> _getPermission() async {
//     final PermissionStatus permission = await Permission.contacts.status;
//     if (permission != PermissionStatus.granted &&
//         permission != PermissionStatus.denied) {
//       final Map<Permission, PermissionStatus> permissionStatus =
//           await [Permission.contacts].request();
//       return permissionStatus[Permission.contacts] ?? PermissionStatus.denied;
//     } else {
//       return permission;
//     }
//   }
// }
