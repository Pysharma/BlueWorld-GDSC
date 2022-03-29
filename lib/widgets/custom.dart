import 'package:flutter/material.dart';
import '../utils/text_styles.dart';
import '../utils/strings.dart';


class customscreen extends StatelessWidget {

  final double opacity;
  const customscreen({Key? key, this.opacity= 0.8}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
        child: Row(
          children: <Widget>[
            RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: Strings.APP_NAME,
                    style: TextStyles.appNameTextStyle,
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text: Strings.TAG_LINE,
                  style: TextStyles.tagLineTextStyle,
                )
              ]
             ),
            ),
            Spacer(),

            Icon(
              Icons.menu_sharp,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
