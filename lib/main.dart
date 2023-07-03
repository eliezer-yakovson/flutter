import 'package:flutter/material.dart';
import 'package:progect/widget/number_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  int _counter = 0;
String _x="";
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  void px(String x) {
    setState(() {
      _x+=x;
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
          child: Row(
              children:[
                Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: () => {
                              px("1")
                            },
                            child: NumberWidget(1)
                        ),
                        InkWell(
                            onTap: () => {
                              px("2")
                            },
                            child: NumberWidget(2)
                        ),
                        InkWell(
                            onTap: () => {
                              px("3")
                            },
                            child: NumberWidget(3)
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        NumberWidget(4),
                        NumberWidget(5),
                        NumberWidget(6),
                      ],
                    ),

                    Row(
                      children: [
                        NumberWidget(7),
                        NumberWidget(8),
                        NumberWidget(9),
                      ],
                    ),
                  ],
                ),

                Container(
                    child:Center(child:Text("plus"+  _counter.toString())) ,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink
                    )
                ),
                Container(
                    child:Center(child:Text("plus"+  _x)) ,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow
                    )
                ),
                InkWell(
                    onTap: () => {
                      _incrementCounter()
                    },
                    child: Container(
                        child:Center(child:Text("+")) ,
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent
                        )
                    )
                ),
                InkWell(
                    onTap: () => {
                      _decrementCounter()
                    },
                    child: Container(
                        child:Center(child:Text("-")) ,
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent
                        )
                    )
                )



              ],

        )));


  }
}