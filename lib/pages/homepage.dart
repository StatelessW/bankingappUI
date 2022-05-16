import 'package:banking_app/utility/project_images.dart';
import 'package:banking_app/utility/project_decorations.dart';
import 'package:banking_app/utility/project_strings.dart';
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
      padding: ProjectDecorations.createAccountTopPadding,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ProjectDecorations.createAccountButtonColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: ProjectDecorations.homepageButtonsRadius,
            )),
            fixedSize: MaterialStateProperty.all(ProjectDecorations.homepageButtonsSize)),
        child: const Text(ProjectStrings.createAccountText),
      ),
    );
  }

  Padding loginButton() {
    return Padding(
      padding: ProjectDecorations.loginButtonTopPadding,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(ProjectDecorations.loginButtonColor),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: ProjectDecorations.homepageButtonsRadius)),
              fixedSize: MaterialStateProperty.all(ProjectDecorations.homepageButtonsSize)),
          child: const Text(ProjectStrings.loginButtonText, style: ProjectDecorations.loginButtonTextColor)),
    );
  }

  Padding centerImg() {
    return const Padding(
      padding: ProjectDecorations.centerImgPadding,
      child: Image(image: AssetImage(ProjectImages.centerImage)),
    );
  }

  Padding titleActions() {
    return Padding(
      padding: ProjectDecorations.homepage3dotsPadding,
      child: Container(
        margin: ProjectDecorations.homepage3dotsMargin,
        decoration: BoxDecoration(
          borderRadius: ProjectDecorations.actions3dotsRadius,
          color: ProjectDecorations.homepage3dotsBorderColor,
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
    return const Image(image: AssetImage(ProjectImages.titleImage));
  }
}
