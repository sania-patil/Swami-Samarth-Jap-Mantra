// import 'package:flutter/material.dart';
// import 'jap_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final TextEditingController _countController = TextEditingController(text: "108");

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange[50],
//       appBar: AppBar(
//         title: const Text("Shree Swami Samarth Jap"),
//         backgroundColor: Colors.deepOrange,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "Enter Jap Count",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),

//             const SizedBox(height: 10),

//             TextField(
//               controller: _countController,
//               keyboardType: TextInputType.number,
//               textAlign: TextAlign.center,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "e.g. 108",
//               ),
//             ),

//             const SizedBox(height: 20),

//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.deepOrange,
//                 padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//               ),
//               onPressed: () {
//                 int count = int.tryParse(_countController.text) ?? 108;

//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => JapScreen(targetCount: count),
//                   ),
//                 );
//               },
//               child: const Text(
//                 "Start Jap",
//                 style: TextStyle(fontSize: 18, color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'jap_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _countController = TextEditingController(text: "108");
  bool isMusicEnabled = true; // Background music toggle

  void setCount(int count) {
    _countController.text = count.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: const Text("Shree Swami Samarth Jap"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Instruction Text
            const Text(
              "Enter number of repetitions",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // TextField Input
            TextField(
              controller: _countController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "e.g. 11, 51, 108",
              ),
            ),
            const SizedBox(height: 20),

            // Quick Buttons for 11, 51, 108
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => setCount(11),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: const Text("11"),
                ),
                ElevatedButton(
                  onPressed: () => setCount(51),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: const Text("51"),
                ),
                ElevatedButton(
                  onPressed: () => setCount(108),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: const Text("108"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Background Music Toggle
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Background Music",
                  style: TextStyle(fontSize: 16),
                ),
                Switch(
                  value: isMusicEnabled,
                  onChanged: (value) {
                    setState(() {
                      isMusicEnabled = value;
                    });
                  },
                  activeColor: Colors.deepOrange,
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Start Jap Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              onPressed: () {
                int count = int.tryParse(_countController.text) ?? 108;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JapScreen(
                      targetCount: count,
                      playMusic: isMusicEnabled,
                    ),
                  ),
                );
              },
              child: const Text(
                "Start Jap",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
