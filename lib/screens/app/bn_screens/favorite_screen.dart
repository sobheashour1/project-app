 import 'package:flutter/material.dart';
//

 class FavoriteScreen extends StatelessWidget {
   const FavoriteScreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: Text("favorite",style: TextStyle(fontSize: 25),),
       ),
     );
   }
 }

//
// class SettingsScreen extends StatefulWidget {
//   const SettingsScreen({Key? key}) : super(key: key);
//
//   @override
//   _SettingsScreenState createState() => _SettingsScreenState();
// }
//
// class _SettingsScreenState extends State<SettingsScreen> {
//   bool _notificationsStatus = false;
//   String _selectedGender = 'M';
//   int? _selectedExperienceIndex;
//   //
//   // List<Address> _addresses = <Address>[
//   //   Address(name: 'Gaza'),
//   //   Address(name: 'Khanyounis'),
//   //   Address(name: 'Rafah'),
//   //   Address(name: 'Al Borayaj'),
//   // ];
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       children: [
//         SwitchListTile(
//           contentPadding: EdgeInsets.zero,
//           title: Text('Notifications'),
//           subtitle: Text('Enable/Disable Notifications'),
//           value: _notificationsStatus,
//           onChanged: (bool value) {
//             setState(() {
//               _notificationsStatus = value;
//             });
//           },
//         ),
//         SizedBox(height: 10),
//         Text(
//           'Gender',
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 18,
//           ),
//         ),
//         RadioListTile<String>(
//           title: Text('Male'),
//           value: 'M',
//           groupValue: _selectedGender,
//           onChanged: (String? value) {
//             if (value != null)
//               setState(() {
//                 _selectedGender = value;
//               });
//           },
//         ),
//         RadioListTile<String>(
//           title: Text('Female'),
//           value: 'F',
//           groupValue: _selectedGender,
//           onChanged: (String? value) {
//             if (value != null)
//               setState(() {
//                 _selectedGender = value;
//               });
//           },
//         ),
//         SizedBox(height: 10),
//         Text(
//           'Addresses',
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 18,
//           ),
//         ),
//         // ListView.builder(
//         //   shrinkWrap: true,
//         //   physics: NeverScrollableScrollPhysics(),
//         //   itemCount: _addresses.length,
//         //   itemBuilder: (context, index) {
//         //     return CheckboxListTile(
//         //       title: Text(_addresses[index].name),
//         //       value: _addresses[index].checked,
//         //       onChanged: (bool? value) {
//         //         if (value != null)
//         //           setState(() {
//         //             _addresses[index].checked = value;
//         //           });
//         //       },
//         //     );
//         //   },
//         ),
//         SizedBox(height: 10),
//         Text(
//           'Experience',
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 18,
//           ),
//         ),
//         DropdownButton<int>(
//           onTap: () {},
//           // elevation: 5,
//           // dropdownColor: Colors.blue,
//           value: _selectedExperienceIndex,
//           onChanged: (int? value) {
//             if (value != null)
//               setState(() {
//                 _selectedExperienceIndex = value;
//               });
//           },
//           isExpanded: true,
//           icon: Icon(Icons.keyboard_arrow_down),
//           disabledHint: Text('NOTING TO BE SELECTED'),
//           // selectedItemBuilder: (context) {
//           //   return [
//           //     Text('SELECTED ITEM')
//           //   ];
//           // },
//           hint: Text('Select Experience Language'),
//           underline: Divider(
//             color: Colors.grey.shade400,
//             height: 0,
//             thickness: 1,
//           ),
//           items: [
//             DropdownMenuItem(
//               value: 1,
//               child: Text('JAVA'),
//               onTap: () {},
//             ),
//             DropdownMenuItem(
//               value: 2,
//               child: Text('PHP'),
//               onTap: () {},
//             ),
//             DropdownMenuItem(
//               value: 3,
//               child: Text('Python'),
//               onTap: () {},
//             ),
//           ],
//         ),
//         Wrap(
//           spacing: 10,
//           runSpacing: 5,
//           children: [
//             Chip(
//               label: Text('HP'),
//               elevation: 3,
//               backgroundColor: Colors.grey.shade400,
//               avatar: Icon(Icons.laptop),
//               deleteIcon: Icon(Icons.clear,size: 18,),
//               onDeleted: (){},
//               deleteIconColor: Colors.red,
//               deleteButtonTooltipMessage: 'Delete',
//               useDeleteButtonTooltip: false,
//               // shape: RoundedRectangleBorder(
//               //   borderRadius: BorderRadius.circular(15),
//               //   side: BorderSide(
//               //     width: 1,
//               //     color: Colors.blue,
//               //   ),
//               // ),
//             ),
//             Chip(
//               label: Text('Lenovo'),
//             ),
//             Chip(
//               label: Text('Samsung'),
//             ),
//             Chip(
//               label: Text('HP'),
//             ),
//             Chip(
//               label: Text('Lenovo'),
//             ),
//             Chip(
//               label: Text('Samsung'),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
