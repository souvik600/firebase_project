import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'match_list_screen.dart';
import 'match_model.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<FootballMatch> matches = [
    FootballMatch(team1: 'Argentina', team2: 'Africa', goalsTeam1: 2, goalsTeam2: 3, time: "32.04", totalTime: 90),
    FootballMatch(team1: 'Italy', team2: 'Spain', goalsTeam1: 1, goalsTeam2: 2, time: "37.09", totalTime: 90),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Matches App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MatchListScreen(matches: matches),
    );
  }
}
