import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleImg(),
        actions: [titleActions()],
      ),
      body: Center(
        child: Column(
          children: [centerImg(), loginButton(), createUserButton()],
        ),
      ),
    );
  }

  Padding createUserButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xFF363339)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            )),
            fixedSize: MaterialStateProperty.all(const Size(300, 50))),
        child: const Text('Become a client of the bank'),
      ),
    );
  }

  Padding loginButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xFFFCFFDF)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
            fixedSize: MaterialStateProperty.all(const Size(300, 50))),
        child: const Text(
          'Log in',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Padding centerImg() {
    return const Padding(
      padding: EdgeInsets.only(top: 180),
      child: Image(image: AssetImage('assets/images/centerLogo.png')),
    );
  }

  Padding titleActions() {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.black12,
        ),
        child: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ),
    );
  }
}

class TitleImg extends StatelessWidget {
  const TitleImg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage('assets/images/appbarLogo.png'));
  }
}
