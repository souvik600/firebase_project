import 'package:flutter/material.dart';
import 'match_model.dart';

class MatchDetailsScreen extends StatelessWidget {
  final FootballMatch match;

  MatchDetailsScreen({required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Match Details'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        height: 130,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 1.0,
            ),
          ],
        ),
        child: Container(
          color: Colors.white,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${match.team1} vs ${match.team2}',style: const TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.black54),),
            Text(' ${match.goalsTeam1} : ${match.goalsTeam2}',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
            Text('Total Time: ${match.time}',style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
            Text('Total Time: ${match.totalTime}',style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
          ],
        ),
      ),
    )
    );
  }
}
