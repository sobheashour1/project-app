import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<String> _names = <String>['Ahmed', 'Mohammed', 'Naser', 'Waleed'];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.category),
          title: Text('User: - ${_names[index]}'),
          subtitle: Text('SubTitle'),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          indent: 30,
          endIndent: 30,
          thickness: 1,
          color: Colors.grey,
        );
      },
      itemCount: _names.length,
    );
  }
}
/*
 ListView.builder(
        itemCount: _names.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.category),
            title: Text('User: - ${_names[index]}'),
            subtitle: Text('SubTitle'),
          );
        },
      ),
 */
/*
ListView(
        padding: EdgeInsetsDirectional.all(5),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Title'),
            subtitle: Text('SubTitle'),
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Title'),
            subtitle: Text('SubTitle'),
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Title'),
            subtitle: Text('SubTitle'),
          ),
        ],
      ),
 */
