import 'package:chat/screens/chat_screen.dart';
import 'package:chat/screens/login_screen.dart';
import 'package:chat/screens/registration_screen.dart';
import 'package:chat/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.welcomeScreen,
      routes: {
        WelcomeScreen.welcomeScreen: (context) => WelcomeScreen(),
        RegistrationScreen.registrationScreen: (context) =>
            RegistrationScreen(),
        LoginScreen.loginScreen: (context) => LoginScreen(),
        ChatScreen.chatScreen: (context) => ChatScreen(),
      },
    );
  }
}
