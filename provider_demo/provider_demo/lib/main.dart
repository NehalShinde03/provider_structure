import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/home_page/home_page_view.dart';

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
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePageView.routeName,
      routes: routes,
      home:MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HomePageProvider(context),
          )
        ],
        child:const HomePageView(),
      ),
    );
  }

  Map<String,WidgetBuilder> get routes => <String,WidgetBuilder>{
    HomePageView.routeName:HomePageView.builder,
  };
}