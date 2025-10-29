import 'package:flutter/material.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/education.dart';
class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){}, child: Row(children: [Text("Education",),Icon(Icons.school),],),),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){}, child: Row(children: [Text("Skills",),Icon(Icons.code),],),),
    ),
  ];
  bool isMobile = false ;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery
        .of(context)
        .size
        .width > 700 ? false : true;
    return Scaffold(
        appBar: AppBar(
          title: Text("Aman Singh Thakur"),
          actions: isMobile ? null : navItems,
        ),
        drawer: isMobile ?
        Drawer(
          child: ListView(
            children: navItems,
          ),
        ) : null,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  About(),
                  Education(),
                ],
              ),
            ],
          ),
        ),
      )
    );

  }
}
