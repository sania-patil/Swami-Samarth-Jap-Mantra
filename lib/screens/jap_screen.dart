// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// class JapScreen extends StatefulWidget {
//   final int targetCount;

//   const JapScreen({super.key, required this.targetCount});

//   @override
//   State<JapScreen> createState() => _JapScreenState();
// }

// class _JapScreenState extends State<JapScreen> {
//   int currentCount = 0;
//   late AudioPlayer _player;

//   @override
//   void initState() {
//     super.initState();
//     _player = AudioPlayer();
//     _player.setReleaseMode(ReleaseMode.loop);
//     _player.play(AssetSource('swami_music.mp3'));
//   }

//   @override
//   void dispose() {
//     _player.stop();
//     _player.dispose();
//     super.dispose();
//   }

//   void incrementCount() {
//     setState(() {
//       currentCount++;
//     });

//     if (currentCount >= widget.targetCount) {
//       _player.stop();

//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           title: const Text("Jap Complete 🪔"),
//           content: const Text("Om Shree Swami Samarth!"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.popUntil(context, (route) => route.isFirst);
//               },
//               child: const Text("OK"),
//             ),
//           ],
//         ),
//       );
//     }
//   }
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Stack(
//       children: [

//         /// 🔥 Full Screen Background Image
//         Positioned.fill(
//           child: Image.asset(
//             "assets/swami_image.png",
//             fit: BoxFit.cover,
//           ),
//         ),

//         /// 🔥 Soft dark overlay (optional for readability)
//         Container(
//           color: Colors.black.withOpacity(0.3),
//         ),

//         /// 🔥 Main Content (counter + button)
//         Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Current Count
//               Text(
//                 "$currentCount / ${widget.targetCount}",
//                 style: const TextStyle(
//                   fontSize: 42,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   shadows: [
//                     Shadow(
//                       blurRadius: 10,
//                       color: Colors.black,
//                       offset: Offset(2, 2),
//                     )
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 40),

//               // Tap Button
//               ElevatedButton(
//                 onPressed: currentCount < widget.targetCount
//                     ? incrementCount
//                     : null,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.deepOrangeAccent,
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 50, vertical: 20),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 child: const Text(
//                   "🔸 Shree Swami Samarth 🔸",
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
// }


// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// class JapScreen extends StatefulWidget {
//   final int targetCount;
//   final bool playMusic; // added music toggle

//   const JapScreen({
//     super.key,
//     required this.targetCount,
//     required this.playMusic,
//   });

//   @override
//   State<JapScreen> createState() => _JapScreenState();
// }

// class _JapScreenState extends State<JapScreen> {
//   int currentCount = 0;
//   late AudioPlayer _player;

//   @override
//   void initState() {
//     super.initState();
//     _player = AudioPlayer();
//     _player.setReleaseMode(ReleaseMode.loop);

//     // Play music only if enabled
//     if (widget.playMusic) {
//       _player.play(AssetSource('swami_music.mp3'));
//     }
//   }

//   @override
//   void dispose() {
//     _player.stop();
//     _player.dispose();
//     super.dispose();
//   }

//   void incrementCount() {
//     setState(() {
//       currentCount++;
//     });

//     if (currentCount >= widget.targetCount) {
//       _player.stop();

//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           title: const Text("Jap Complete 🪔"),
//           content: const Text("Om Shree Swami Samarth!"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.popUntil(context, (route) => route.isFirst);
//               },
//               child: const Text("OK"),
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [

//           /// 🔥 Full Screen Background Image
//           Positioned.fill(
//             child: Image.asset(
//               "assets/swami_image.png",
//               fit: BoxFit.cover,
//             ),
//           ),

//           /// 🔥 Soft dark overlay (optional for readability)
//           Container(
//             color: Colors.black.withOpacity(0.3),
//           ),

//           /// 🔥 Main Content (counter + button)
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Current Count
//                 Text(
//                   "$currentCount / ${widget.targetCount}",
//                   style: const TextStyle(
//                     fontSize: 42,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     shadows: [
//                       Shadow(
//                         blurRadius: 10,
//                         color: Colors.black,
//                         offset: Offset(2, 2),
//                       )
//                     ],
//                   ),
//                 ),

//                 const SizedBox(height: 40),

//                 // Tap Button
//                 ElevatedButton(
//                   onPressed: currentCount < widget.targetCount
//                       ? incrementCount
//                       : null,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.deepOrangeAccent,
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 50, vertical: 20),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                   child: const Text(
//                     "🔸 Shree Swami Samarth 🔸",
//                     style: TextStyle(
//                       fontSize: 22,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class JapScreen extends StatefulWidget {
  final int targetCount;
  final bool playMusic; // music toggle

  const JapScreen({
    super.key,
    required this.targetCount,
    required this.playMusic,
  });

  @override
  State<JapScreen> createState() => _JapScreenState();
}

class _JapScreenState extends State<JapScreen> {
  int currentCount = 0;
  late AudioPlayer _player;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _player.setReleaseMode(ReleaseMode.loop);

    // Play music only if enabled
    if (widget.playMusic) {
      _player.play(AssetSource('swami_music.mp3'));
    }
  }

  @override
  void dispose() {
    _player.stop();
    _player.dispose();
    super.dispose();
  }

  void incrementCount() {
    setState(() {
      currentCount++;
    });

    if (currentCount >= widget.targetCount) {
      _player.stop();

      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Jap Complete 🪔"),
          content: const Text("Om Shree Swami Samarth!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// 🔥 Full Screen Background Image
          Positioned.fill(
            child: Image.asset(
              "assets/swami_image.png",
              fit: BoxFit.cover,
            ),
          ),

          /// 🔥 Soft dark overlay
          Container(
            color: Colors.black.withOpacity(0.3),
          ),

          /// 🔥 Back Button at top-left
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          /// 🔥 Main Content (counter + button)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Current Count
                Text(
                  "$currentCount / ${widget.targetCount}",
                  style: const TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 10,
                        color: Colors.black,
                        offset: Offset(2, 2),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                // Tap Button
                ElevatedButton(
                  onPressed: currentCount < widget.targetCount
                      ? incrementCount
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "🔸 Shree Swami Samarth 🔸",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
