import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_medihelp/Models/user.dart';
import 'package:project_medihelp/Services/authentication_services.dart';
import 'package:project_medihelp/wrapper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      initialData: UserModel(
        uId: "",
      ),
      value: Auth().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
