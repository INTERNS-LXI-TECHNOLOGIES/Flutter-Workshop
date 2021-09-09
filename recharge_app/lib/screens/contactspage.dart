// import 'package:flutter/material.dart';
// import 'package:contacts_service/contacts_service.dart';

// class ContactPage extends StatefulWidget {
//   @override
//   _ContactPageState createState() => _ContactPageState();
// }

// class _ContactPageState extends State<ContactPage> {
//   List<Contact> contacts = [];
//   List<Contact> contactsFiltered = [];
//   final TextEditingController _searchController = new TextEditingController();
//   void initState() {
//     getContacts();
//     _searchController.addListener(() {
//       filterContacts();
//     });
//     super.initState();
//   }

//   filterContacts() {
//     List<Contact> _contacts = [];
//     _contacts.addAll(_contacts);
//     if (_searchController.text.isNotEmpty) {
//       _contacts.retainWhere((contact) {
//         String searchTerm = _searchController.text.toLowerCase();
//         String contactName = contact.displayName.toLowerCase();
//         bool nameMatches = contactName.contains(searchTerm);
//         if (nameMatches == true) {
//           return true;
//         }
//         var phone = contact.phones.firstWhere((phno) {
//           return phno.value.contains(searchTerm);
//         }, orElse: () => null);
//         return phone != null;
//       });
//       setState(() {
//         contactsFiltered = _contacts;
//       });
//     }
//   }

//   getContacts() async {
//     List<Contact> _contacts = (await ContactsService.getContacts()).toList();
//     setState(() {
//       contacts = _contacts;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     bool isSearching = _searchController.text.isNotEmpty;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Contacts'),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextField(
//               controller: _searchController,
//               decoration: InputDecoration(
//                 labelText: 'Search',
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.amber[600],
//                   ),
//                 ),
//                 prefixIcon: Icon(Icons.search, color: Colors.amber[600]),
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount:
//                     isSearching == true ? contactsFiltered : contacts.length,
//                 itemBuilder: (context, index) {
//                   Contact contact =
//                       isSearching == true ? contactsFiltered : contacts[index];
//                   return ListTile(
//                       title: Text(contact.displayName),
//                       subtitle: Text(contact.phones.elementAt(0).value),
//                       leading:
//                           (contact.avatar != null && contact.avatar.length > 0)
//                               ? CircleAvatar(
//                                   backgroundImage: MemoryImage(contact.avatar),
//                                 )
//                               : CircleAvatar(
//                                   child: Text(contact.initials()),
//                                 ));
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<Contact> contact = [];
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
      child: Column(
        children: [
          Text('The real Fun begins'),
          ListView.builder(
            shrinkWrap: true,
            itemCount: contact.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber[900],
                  ),
                  title: Text(contact[index].displayName),
                  subtitle: Text(contact[index].phones.elementAt(0).value),
                ),
              );
            },
          )
        ],
      ),
    ));
  }
}
