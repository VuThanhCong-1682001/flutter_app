import '../Views/FeedScreen.dart';
import '../Views/ChatScreen.dart';
import '../Views/GroupScreen.dart';
import '../Views/ProfileScreen.dart';

List pages = [
  ChatScreen(),
  GroupScreen(),
  FeedScreen(),
  ProfileScreen()
];

//IP-PC: 192.168.1.119 run on real device
const serverName = "localhost"; //10.0.2.2 for mobile or localhost for desktop app
const urlBase = "http://$serverName:5291";