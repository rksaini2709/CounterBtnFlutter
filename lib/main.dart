import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

// sub
  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

// add
  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Count',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
            ),
            Text(
              '$count',
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 35,),
            Text(
              count < 18 ? 'You are not eligible' : 'You are eligible' ,
              // style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.deepPurple),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: count < 18 ? Colors.red : Colors.green, // Color logic
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 75, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: decrement,
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(50, 50),
                        backgroundColor: Colors.red,
                      ),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                  ElevatedButton(
                      onPressed: increment,
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(50, 50),
                          backgroundColor: Colors.red),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ],
              ),
            )
          ],
        ),
      ),

// counter increment / decrement
//       Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Count',
//               style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
//             ),
//             Text(
//               '$count',
//               style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 50, top: 75, right: 50),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ElevatedButton(
//                       onPressed: decrement,
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: const Size(50, 50),
//                         backgroundColor: Colors.red,
//                       ),
//                       child: const Icon(Icons.remove, color: Colors.white,)),
//                   ElevatedButton(
//                       onPressed: increment,
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: const Size(50, 50),
//                         backgroundColor: Colors.red
//                       ),
//                       child: const Icon(Icons.add, color: Colors.white,)),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
    );
  }
}
