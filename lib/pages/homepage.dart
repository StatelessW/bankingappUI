import 'package:banking_app/utility/project_images.dart';
import 'package:banking_app/utility/project_decorations.dart';
import 'package:easy_localization/easy_localization.dart';
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
        style: ElevatedButton.styleFrom(
            primary: ProjectDecorations.createAccountButtonColor,
            shape: RoundedRectangleBorder(borderRadius: ProjectDecorations.homepageButtonsRadius),
            fixedSize: ProjectDecorations.homepageButtonsSize),
        child: Text('cAcc'.tr().toString()),
      ),
    );
  }

  Padding loginButton() {
    return Padding(
      padding: ProjectDecorations.loginButtonTopPadding,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: ProjectDecorations.loginButtonColor,
              shape: RoundedRectangleBorder(borderRadius: ProjectDecorations.homepageButtonsRadius),
              fixedSize: ProjectDecorations.homepageButtonsSize),
          child: Text('lin'.tr().toString(), style: ProjectDecorations.loginButtonTextColor)),
    );
  }

  Padding centerImg() {
    const center = ImgPath.centerLogo;
    return Padding(
      padding: ProjectDecorations.centerImgPadding,
      child: Image(image: AssetImage(center.path)),
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

  static const title = ImgPath.titleLogo;

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(title.path));
  }
}
