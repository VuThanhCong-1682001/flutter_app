import 'package:flutter/cupertino.dart';
import 'package:social_app/Models/userLogin.dart';
import 'package:social_app/Views/BottomNavbar.dart';

import 'LoginScreen.dart';

enum AuthStatus {
  notSignedIn,
  signedIn
}

class RootScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RootScreenState();
  }
}

class RootScreenState extends State<RootScreen> {
  AuthStatus authStatus = AuthStatus.notSignedIn;

  void _updateAuthStatus(AuthStatus status) {
    setState(() {
      authStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.notSignedIn:
        return LoginScreen(
          onSignedIn: () {
            _updateAuthStatus(AuthStatus.signedIn);
          },
        );
      case AuthStatus.signedIn:
        return BottomNavbar();
    }
  }
}