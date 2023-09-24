import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_note_application/generated/l10n.dart';

void main() => runApp(const Note());

class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);
  @override
  State<Note> createState() => _MyAppState();
}

bool _iconBool = false;
ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.light,
);
IconData _iconLight = Icons.wb_sunny;
ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  brightness: Brightness.dark,
);
IconData _iconDark = Icons.nights_stay;

class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, 
    children: [
      Text(S.of(context).hello, 
    style: const TextStyle(fontSize: 30),),
      Text(S.of(context).goodbye, 
    style: const TextStyle(fontSize: 30),),
    ],
    )));
  }
}

class _MyAppState extends State<Note> {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).app_bar_title),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _iconBool = !_iconBool;
                  });
                },
                icon: Icon(_iconBool ? _iconDark : _iconLight)),
          ],
        ),
      ),
    );
  }
}