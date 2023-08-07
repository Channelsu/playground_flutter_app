import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  Future<String> getDoc() async {
    DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('users')
        .doc('K0URgtawDiN3C2Q9tfFx')
        .get();
    return snapshot.data()!['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black12,
            height: 16,
          ),
          Container(
            color: Colors.blueAccent,
            width: double.infinity,
            child: FutureBuilder(
              future: getDoc(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data);
                } else {
                  return const Text('データなし');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
