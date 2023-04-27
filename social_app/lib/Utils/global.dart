import '../Models/user.dart';
import '../Stream/myStream.dart';

class Global{
  static MyStream? myStream;
  static User? user;//current user of app after login

  static void clearData(){
    user = null;
  }
}