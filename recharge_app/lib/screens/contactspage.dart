// import 'package:contacts_service/contacts_service.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:recharge_app/screens/Widgets/textbox_widget.dart';
// import 'package:recharge_app/screens/main_screen.dart';

// class ContactPage extends StatefulWidget {
//   const ContactPage({key, this.names}) : super(key: key);
//   final String names;
//   @override
//   _ContactPageState createState() => _ContactPageState();
// }

// class _ContactPageState extends State<ContactPage> {
//   List<Contact> contacts = [];
//   List<Contact> filteredContacts = [];
//   TextEditingController searchController = TextEditingController();
//   @override
//   void initState() {
//     // _getPermission();
//     getAllContacts();
//     searchController.addListener(() {
//       filterContacts();
//     });
//     super.initState();
//   }

//   void getAllContacts() async {
//     List<Contact> _contacts = (await ContactsService.getContacts()).toList();
//     setState(() {
//       contacts = _contacts;
//     });
//   }

//   void filterContacts() {
//     List<Contact> _contacts = [];
//     _contacts.addAll(contacts);
//     if (searchController.text.isNotEmpty) {
//       _contacts.retainWhere((contact) {
//         String searchTerm = searchController.text.toLowerCase();
//         String contactName = contact.displayName.toLowerCase();
//         return contactName.contains(searchTerm);
//       });
//       setState(() {
//         filteredContacts = _contacts;
//       });
//     }
//   }

//   Widget build(BuildContext context) {
//     bool issearching = searchController.text.isNotEmpty;
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return GestureDetector(
//       onTap: () {
//         FocusScopeNode currentNode = FocusScope.of(context);
//         if (!currentNode.hasPrimaryFocus) {
//           currentNode.unfocus();
//         }
//       },
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Container(
//               color: Colors.yellow,
//               height: height * .27,
//               width: width * 1,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.all(20),
//                     child: CircleAvatar(
//                       radius: 30,
//                       child: Image.asset('assets/images/PayitLogo.png'),
//                     ),
//                   ),
//                   IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.notification_important,
//                         color: Colors.red,
//                       ))
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 160),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30.0),
//                     topRight: Radius.circular(30.0)),
//                 child: Container(
//                   width: width * 1,
//                   color: Colors.cyan[50],
//                   height: height * .8,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Container(
//                           child: TextBox(
//                               'Search', 'search', '', searchController)),
//                       Expanded(
//                         child: ListView.builder(
//                           shrinkWrap: true,
//                           itemCount: issearching == true
//                               ? filteredContacts.length
//                               : contacts.length,
//                           itemBuilder: (context, index) {
//                             var contact = issearching == true
//                                 ? filteredContacts[index]
//                                 : contacts[index];
//                             return ListTile(
//                                 title: Text(
//                                   '${contact.displayName}',
//                                 ),
//                                 subtitle: Text(
//                                     '${contact.phones.elementAt(0).value}'),
//                                 leading: (contact.avatar != null &&
//                                         contact.avatar.length > 0)
//                                     ? CircleAvatar(
//                                         backgroundImage:
//                                             MemoryImage(contact.avatar),
//                                       )
//                                     : CircleAvatar(
//                                         child: Text(contact.initials()),
//                                       ),
//                                 onTap: () {
//                                   String phoneNumber =
//                                       contact.phones.elementAt(index).value;
//                                   Navigator.of(context).push(MaterialPageRoute(
//                                     builder: (context) =>
//                                         MainScreen(phoneNumber, 0, ''),
//                                   ));
//                                 });
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:recharge_app/screens/main_screen.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Iterable<Contact> _contacts;
  Iterable<Contact> filteredContacts = [];
  final TextEditingController searchController = TextEditingController();
  void requestPermission() async {
    var status = await Permission.contacts.status;
    if (!status.isGranted) {
      await Permission.contacts.request();
    }
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

  void filterContacts() {
    List<Contact> contacts = [];
    contacts.addAll(_contacts);
    if (searchController.text.isNotEmpty) {
      contacts.retainWhere((contact) {
        String searchTerm = searchController.text.toLowerCase();
        String contactName = contact.displayName.toLowerCase();
        return contactName.contains(searchTerm);
      });
      setState(() {
        filteredContacts = contacts;
      });
    }
  }

  @override
  void initState() {
    requestPermission();
    getContacts();
    searchController.addListener(() {
      filterContacts();
    });
    super.initState();
  }

  Future<void> getContacts() async {
    final Iterable<Contact> contacts = await ContactsService.getContacts();
    setState(() {
      _contacts = contacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool issearching = searchController.text.isNotEmpty;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentNode = FocusScope.of(context);
        if (!currentNode.hasPrimaryFocus) {
          currentNode.unfocus();
        }
      },
      child: Scaffold(
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: width * .9,
                        height: height * 0.1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: TextFormField(
                            controller: searchController,
                            enabled: true,
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.yellow,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.yellow, width: 2),
                                ),
                                hintText: 'Search Contacts',
                                alignLabelWithHint: true,
                                labelText: 'Search Contacts'),
                          ),
                        ),
                      ),
                      Expanded(
                          child: _contacts != null
                              ? ListView.builder(
                                  itemCount: issearching == true
                                      ? filteredContacts.length
                                      : _contacts.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    Contact contact =
                                        _contacts?.elementAt(index);
                                    return ListTile(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 18),
                                      leading: (contact.avatar != null &&
                                              contact.avatar.isNotEmpty)
                                          ? CircleAvatar(
                                              backgroundImage:
                                                  MemoryImage(contact.avatar),
                                            )
                                          : CircleAvatar(
                                              child: Text(contact.initials()),
                                              backgroundColor:
                                                  Theme.of(context).accentColor,
                                            ),
                                      title: Text(contact.displayName ?? ''),
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => MainScreen(
                                              '${contact.phones.elementAt(0).value}',
                                              0,
                                              ''),
                                        ));
                                      },
                                    );
                                  },
                                )
                              : Center(child: const CircularProgressIndicator())
                          // : showDialog(
                          //     context: context,
                          //     builder: (BuildContext context) => AlertDialog(
                          //       title: Text('Permissions error'),
                          //       content: Text('Please enable contacts access '
                          //           'permission in system settings'),
                          //       actions: <Widget>[
                          //         MaterialButton(
                          //           child: Text('OK'),
                          //           onPressed: () =>
                          //               Navigator.of(context).pop(),
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
