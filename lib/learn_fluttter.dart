import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool isSwitch = false;
  bool? isCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('learn flutter'),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.info_outline))],
        // automaticallyImplyLeading: false,
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //     icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/1.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: const Color.fromARGB(255, 77, 71, 73),
              child: Center(
                child: const Text(
                  'this is a text widget',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.purple : Colors.black),
              onPressed: () {},
              child: Text('elevated button'),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: isSwitch ? Colors.purple : Colors.black),
              onPressed: () {},
              child: Text('outlined button'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('text button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('the icon ...');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text(
                    'Row widget ',
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheck,
                onChanged: (bool? newVal) {
                  setState(() {
                    isCheck = newVal;
                  });
                }),
            Image.asset('assets/images/3.jpg'),
          ],
        ),
      ),
    );
  }
}
