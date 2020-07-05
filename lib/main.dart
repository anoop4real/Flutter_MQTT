import 'package:flutter/material.dart';
import 'package:flutter_mqtt_app/widgets/mqttView.dart';
import 'package:flutter_mqtt_app/mqtt/state/MQTTAppState.dart';
import 'package:provider/provider.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*
    final MQTTManager manager = MQTTManager(host:'test.mosquitto.org',topic:'flutter/amp/cool',identifier:'ios');
    manager.initializeMQTTClient();

     */

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<MQTTAppState>(
        create: (_) => MQTTAppState(),
        child: MQTTView(),
      )
    );
  }
}


/*
Padding(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child:Column(
            children: <Widget>[
              Center(
                child: RaisedButton(
                  child: Text("Connect"),
                  onPressed: manager.connect ,
                ),
              )
            ],
          ) ,
        ),
      )
 */