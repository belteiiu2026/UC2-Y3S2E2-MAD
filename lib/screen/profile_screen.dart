import 'package:flutter/material.dart';
import 'package:mad/screen/language_screen.dart';
import 'package:mad/util/route_manager.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool _isKhmerLang = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        elevation: 0.5,
      ),
      body: ListView(
        children: [
          Divider(),
          GestureDetector(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Guest"),
              subtitle: Text("Ms/Mr"),
              trailing: Icon(Icons.navigate_next),
            ),
            onTap: (){},
          ),
          Divider(),
          GestureDetector(
            child: ListTile(
              leading: Icon(Icons.mode),
              title: Text("Light Mode"),
              subtitle: Text("Theme"),
              trailing: Icon(Icons.navigate_next),
            ),
            onTap: (){},
          ),
          Divider(),
          GestureDetector(
            child: ListTile(
              leading: Icon(Icons.flag),
              title: Text("${_isKhmerLang ? "Khmer" : "English"}"),
              subtitle: Text("Language"),
              trailing: Icon(Icons.navigate_next),
            ),
            onTap: _onNavLangClick,
          ),
          Divider()
        ],
      )
    );
  }

  void _onNavLangClick() async {
    // final route = MaterialPageRoute(builder: (BuildContext context) => LanguageScreen());
    // final isKhmerLang = await Navigator.of(context).push(route);

    final isKhmerLang = await RouteManager.key.currentState?.pushNamed(RouteManager.languageScreen);
    print("$isKhmerLang");
    setState(() {
      _isKhmerLang = isKhmerLang as bool;
    });
  }
}
