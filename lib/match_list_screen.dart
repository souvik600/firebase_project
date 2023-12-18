import 'package:flutter/material.dart';
import 'match_model.dart';
import 'match_details_screen.dart';

class MatchListScreen extends StatelessWidget {
  final List<FootballMatch> matches;

  MatchListScreen({required this.matches});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match List'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${matches[index].team1} vs ${matches[index].team2}'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MatchDetailsScreen(match: matches[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
