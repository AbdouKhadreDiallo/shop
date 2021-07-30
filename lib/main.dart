import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello travel app Title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello app bar"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Builder(builder: (context) =>SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "text center for body",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800]
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "second text center for body",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurpleAccent
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.network(
                        'https://images.freeimages.com/images/large-previews/0cf/tulips-1-1377350.jpg',
                        height: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: ElevatedButton(
                          child: Text('Contact Us'),

                          onPressed: () => contactUs(context)),
                    ),
                  ],
                ),
              )

          ),),
        )

      ),
    );

  }
}

void contactUs(BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Contact us"),
          content: Text("Mail us at hello@world.com"),
          actions: [
            TextButton(
                onPressed: ()=>Navigator.of(context).pop(),
                child: Text("Close")
            )
          ],
        );
      }
  );
}
