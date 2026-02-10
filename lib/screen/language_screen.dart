import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {

  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  bool isKhmerLang = true;

  void _onLanguageChange(val){
    setState(() {
      isKhmerLang = val;
    });
    Navigator.of(context).pop(isKhmerLang);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language"),
        elevation: 0.5,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.flag),
            title: Text("Khmer"),
            subtitle: Text("Language"),
            trailing: Checkbox(value: isKhmerLang, onChanged: (v) => _onLanguageChange(true)),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text("English"),
            subtitle: Text("Language"),
            trailing: Checkbox(value: !isKhmerLang, onChanged: (v)  => _onLanguageChange(false)),
          ),
          Divider()
        ],
      ),
    );
  }
}
