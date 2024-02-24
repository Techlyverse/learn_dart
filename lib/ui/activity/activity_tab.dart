import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_dart/ui/activity/playground.dart';
import 'quiz_screen.dart';

class PlaygroundTab extends StatefulWidget {
  const PlaygroundTab({super.key});

  @override
  State<PlaygroundTab> createState() => _PlaygroundTabState();
}

class _PlaygroundTabState extends State<PlaygroundTab> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2 - 20;
    return Column(
      children: [
        AppBar(
          title: const Text("Activity"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PlayGroundScreen()));
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
              "Playground",
              style: GoogleFonts.gluten(
                fontSize: 30,
                color: Colors.grey.shade800,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const QuizScreen()));
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
                  image: AssetImage("assets/pink.jpg"),
                  fit: BoxFit.cover,
                  // filterQuality: FilterQuality.none,
                )),

            child: Text(
              "Quiz",
              style: GoogleFonts.gluten(
                fontSize: 30,
                color: Colors.grey.shade800,
              ),
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

        const SizedBox(height: 20),

        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            SizedBox(
              width: width,
              height: 45,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_outline),
                label: const Text("Button 1"),
              ),
            ),
            SizedBox(
              width: width,
              height: 45,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline_rounded),
                label: const Text("Button 1"),
              ),
            ),
            SizedBox(
              width: width,
              height: 45,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.timelapse),
                label: const Text("Button 1"),
              ),
            ),
            SizedBox(
              width: width,
              height: 45,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.dashboard_outlined),
                label: const Text("Button 1"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
