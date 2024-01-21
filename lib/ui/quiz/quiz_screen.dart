import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_dart/ui/game/game.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: Text("Some heading"),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const GameScreen()));
          },
          child: Container(
            height: 200,
            width: double.maxFinite,
            margin: const EdgeInsets.all(12),
            //padding: const EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              // gradient: const LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   colors: [
              //     Colors.blueAccent,
              //     Colors.lightBlueAccent,
              //   ],
              // ),
              image: const DecorationImage(
                image: AssetImage("assets/blue.jpg"),
                fit: BoxFit.cover,
                //filterQuality: FilterQuality.none,
              ),
            ),

            child: Text(
              "Game",
              style: GoogleFonts.gluten(
                fontSize: 45,
                color: Colors.grey.shade900,
              ),
            ),
          ),
        ),
        Container(
          height: 200,
          width: double.maxFinite,
          margin: const EdgeInsets.all(12),
          //padding: const EdgeInsets.all(12),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              // gradient: const LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   colors: [
              //     Colors.blueAccent,
              //     Colors.lightBlueAccent,
              //   ],
              // ),
              image: const DecorationImage(
                image: AssetImage("assets/pink.jpg"),
                fit: BoxFit.cover,
                // filterQuality: FilterQuality.none,
              )),

          child: Text(
            "Quiz",
            style: GoogleFonts.gluten(
              fontSize: 45,
              color: Colors.grey.shade900,
            ),
          ),
        ),
        // Container(
        //   height: 200,
        //   width: double.maxFinite,
        //   margin: const EdgeInsets.all(12),
        //   //padding: const EdgeInsets.all(12),
        //   alignment: Alignment.center,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(16),
        //       // gradient: const LinearGradient(
        //       //   begin: Alignment.topLeft,
        //       //   end: Alignment.bottomRight,
        //       //   colors: [
        //       //     Colors.blueAccent,
        //       //     Colors.lightBlueAccent,
        //       //   ],
        //       // ),
        //       image: DecorationImage(
        //         image: AssetImage("assets/green.jpg"),
        //         fit: BoxFit.cover,
        //         filterQuality: FilterQuality.none,
        //       )),
        //
        //   child: Text(
        //     "Certificate",
        //     style: GoogleFonts.gluten(fontSize: 40),
        //   ),
        // ),
      ],
    );
  }
}
