import 'package:flutter/material.dart';

void main() => runApp(LoadingPage());

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  Future<String> delayTime() async {
    String txt = await Future.delayed(Duration(seconds: 3), () {
      return 'Hello';
    });
    return txt;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
              future: delayTime(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(
                      children: [
                    Image.network("https://images.pexels.com/photos/87403/cheetah-leopard-animal-big-87403.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300"),
                        Text("ต้าวเสือ",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.brown,
                          ),)
                    ]
                  );

                } else if (snapshot.hasError) {
                  return Text('Error');
                } else {
                  return LinearProgressIndicator();
                }
              }),
        ),
      ),
    );
  }
}
