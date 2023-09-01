import 'package:flutter/material.dart';
bool c1 = false;
bool c2 = false;
bool c3 = false;
bool c4 = false;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("McFlutter"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 180,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.account_circle, size: 50,),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Flutter McFlutter", style: Theme.of(context).textTheme.headlineSmall,),
                      Text("Experienced App Developer"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("123 Main Street"),
                  Text("+52 33 2375 8501")
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){c1 = !c1; setState((){});}, icon: Icon(Icons.accessibility), color: c1 == false ? Colors.black : Colors.indigo,),
                  IconButton(onPressed: (){c2 = !c2; setState((){});}, icon: Icon(Icons.timer), color: c2 == false ? Colors.black : Colors.indigo,),
                  IconButton(onPressed: (){c3 = !c3; setState((){});}, icon:  Icon(Icons.phone_android), color: c3 == false ? Colors.black : Colors.indigo,),
                  IconButton(onPressed: (){c4 = !c4; setState((){});}, icon:   Icon(Icons.phone_iphone), color: c4 == false ? Colors.black : Colors.indigo,),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}