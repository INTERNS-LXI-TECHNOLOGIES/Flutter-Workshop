// import 'package:flutter/material.dart';
// import 'package:flutter_contact/contacts.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:recharge_app/screens/main_screen.dart';

// class ContactsPage extends StatefulWidget {
//   @override
//   _ContactsPageState createState() => _ContactsPageState();
// }

// class _ContactsPageState extends State<ContactsPage> {
//   List<Contact> contactList = [];
//   final TextEditingController searchController = TextEditingController();
//   List<Contact> filteredContacts = [];

//   @override
//   void initState() {
//     super.initState();
//     requestPermission();
//     readContacts();
//     searchController.addListener(() {
//       filterContacts();
//     });
//   }

//   @override
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
//                       backgroundColor: Colors.white,
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
//             SingleChildScrollView(
//               child: Container(
//                 margin: EdgeInsets.only(top: 160),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(30.0),
//                       topRight: Radius.circular(30.0)),
//                   child: Container(
//                     width: width * 1,
//                     color: Colors.cyan[50],
//                     height: height * .8,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         SizedBox(
//                           height: 30,
//                         ),
//                         Container(
//                           width: width * .9,
//                           height: height * 0.1,
//                           child: Padding(
//                             padding: const EdgeInsets.only(right: 30),
//                             child: TextFormField(
//                               controller: searchController,
//                               enabled: true,
//                               decoration: InputDecoration(
//                                   focusedBorder: UnderlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Colors.yellow,
//                                     ),
//                                   ),
//                                   enabledBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(
//                                         color: Colors.yellow, width: 2),
//                                   ),
//                                   hintText: 'Search Contacts',
//                                   alignLabelWithHint: true,
//                                   labelText: 'Search Contacts'),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           height: height * .65,
//                           width: width * 1,
//                           child: (contactList.length > 0)
//                               ? ListView.builder(
//                                   itemCount: issearching == true
//                                       ? filteredContacts.length
//                                       : contactList.length,
//                                   itemBuilder: (context, index) {
//                                     Contact contact = issearching == true
//                                         ? filteredContacts.get(index)
//                                         : contactList.get(index);

//                                     return Card(
//                                       child: ListTile(
//                                         leading: CircleAvatar(
//                                           backgroundColor: Colors.yellow,
//                                           child: Center(
//                                             child: (contact.avatar != null)
//                                                 ? Image.memory(
//                                                     contact.avatar,
//                                                     height: 28,
//                                                     width: 28,
//                                                   )
//                                                 : Icon(Icons.face),
//                                           ),
//                                         ),
//                                         title: Text("${contact.displayName}"),
//                                         subtitle: Text(
//                                             (contact.phones.length > 0)
//                                                 ? "${contact.phones.get(0)}"
//                                                 : "No contact"),
//                                         onTap: () {
//                                           Navigator.of(context).push(
//                                             MaterialPageRoute(
//                                               builder: (context) => MainScreen(
//                                                   '${contact.phones.elementAt(0).value}',
//                                                   0,
//                                                   ''),
//                                             ),
//                                           );
//                                         },
//                                       ),
//                                     );
//                                   },
//                                 )
//                               : Center(
//                                   child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       CircularProgressIndicator(
//                                         backgroundColor: Colors.yellow,
//                                       ),
//                                       Text("reading Contacts...")
//                                     ],
//                                   ),
//                                 ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
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

//     return Contacts.streamContacts(
//       bufferSize: 100,
//     );
//   }

//   void requestPermission() async {
//     var status = await Permission.contacts.status;
//     if (!status.isGranted) {
//       await Permission.contacts.request();
//     }
//   }

//   void filterContacts() {
//     List<Contact> _contacts = [];
//     Contacts.streamContacts(query: searchController.text).forEach((contacts) {
//       _contacts.add(contacts);

//       if (searchController.text.isNotEmpty) {
//         _contacts.retainWhere((contact) {
//           String searchTerm = searchController.text.toLowerCase();
//           String contactName = contact.displayName.toLowerCase();
//           return contactName.contains(searchTerm);
//         });
//       }
//     });
//     setState(() {
//       filteredContacts = _contacts;
//     });
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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contact_example/people_list_page.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:logging/logging.dart';
import 'package:logging_config/logging_config.dart';
import 'package:permission_handler/permission_handler.dart';

import 'add_contact_page.dart';

void main() {
  configureLogging(LogConfig.root(Level.INFO));
  runApp(ContactsExampleApp());
}

class ContactsExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (context) => const HomePage(),
        '/add': (BuildContext context) => AddContactPage(),
        '/contactsList': (BuildContext context) => PeopleListPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

  const HomePage();
}

class _HomePageState extends State<HomePage> {
  bool? _hasPermission;
  @override
  void initState() {
    super.initState();
    _askPermissions();
  }

  Future<void> _askPermissions() async {
    PermissionStatus? permissionStatus;
    while (permissionStatus != PermissionStatus.granted) {
      try {
        permissionStatus = await _getContactPermission();
        if (permissionStatus != PermissionStatus.granted) {
          _hasPermission = false;
          _handleInvalidPermissions(permissionStatus);
        } else {
          _hasPermission = true;
        }
      } catch (e) {
        if (await showPlatformDialog(
                context: context,
                builder: (context) {
                  return PlatformAlertDialog(
                    title: Text('Contact Permissions'),
                    content: Text(
                        'We are having problems retrieving permissions.  Would you like to '
                        'open the app settings to fix?'),
                    actions: [
                      PlatformDialogAction(
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                        child: Text('Close'),
                      ),
                      PlatformDialogAction(
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                        child: Text('Settings'),
                      ),
                    ],
                  );
                }) ==
            true) {
          await openAppSettings();
        }
      }
    }

    await Navigator.of(context).pushReplacementNamed('/contactsList');
  }

  Future<PermissionStatus> _getContactPermission() async {
    final status = await Permission.contacts.status;
    if (!status.isGranted) {
      final result = await Permission.contacts.request();
      return result;
    } else {
      return status;
    }
  }

  void _handleInvalidPermissions(PermissionStatus permissionStatus) {
    if (permissionStatus == PermissionStatus.denied) {
      throw PlatformException(
          code: 'PERMISSION_DENIED',
          message: 'Access to location data denied',
          details: null);
    } else if (permissionStatus == PermissionStatus.restricted) {
      throw PlatformException(
          code: 'PERMISSION_DISABLED',
          message: 'Location data is not available on device',
          details: null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts Plugin Example')),
      body: _hasPermission == null
          ? Center(child: PlatformCircularProgressIndicator())
          : SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Contacts list'),
                    onPressed: () =>
                        Navigator.pushNamed(context, '/contactsList'),
                  ),
                  ElevatedButton(
                    child: const Text('Native Contacts picker'),
                    onPressed: () =>
                        Navigator.pushNamed(context, '/nativeContactPicker'),
                  ),
                ],
              ),
            ),
    );
  }
}