import 'package:flutter/material.dart';
// import 'package:prokit_flutter/themes/theme4/utils/T4Colors.dart';

// import '../T4Constant.dart';
// import 'package:flutter/material.dart';

const t4_colorPrimary = Color(0XFF4600D9);
const t4_colorPrimaryDark = Color(0XFF4600D9);
const t4_colorAccent = Color(0XFF4600D9);

const t4_textColorPrimary = Color(0XFF333333);
const t4_textColorSecondary = Color(0XFF9D9D9D);

const t4_app_background = Color(0XFFf8f8f8);
const t4_view_color = Color(0XFFDADADA);

const t4_white = Color(0XFFffffff);
const t4_black = Color(0XFF000000);

const t4_icon_color = Color(0XFF747474);
const t4_form_background = Color(0XFFF6F7F9);
const t4_form_facebook = Color(0XFF2F3181);
const t4_form_google = Color(0XFFF13B19);
const t4_green = Color(0XFF0DAF14);
const t4_light = Color(0XFF23DFD5);
const t4_walk = Color(0XFFEDE5FC);

const t4_cat1 = Color(0XFFFF727B);
const t4_cat2 = Color(0XFF439AF8);
const t4_cat3 = Color(0XFF72D4A1);
const t4_cat4 = Color(0XFFFFC358);
const t4_cat5 = Color(0XFFA89DF6);
const t4_shadow_color = Color(0X95E9EBF0);

/*fonts*/
const fontRegular = 'Regular';
const fontMedium = 'Medium';
const fontSemibold = 'Semibold';
const fontBold = 'Bold';
/* font sizes*/
const textSizeSmall = 12.0;
const textSizeSMedium = 14.0;
const textSizeMedium = 16.0;
const textSizeLargeMedium = 18.0;
const textSizeNormal = 20.0;
const textSizeLarge = 24.0;
const textSizeXLarge = 28.0;
const textSizeXXLarge = 30.0;

const profileImage = 'assets/images/profile.png';

// ignore: must_be_immutable
class T4EditText extends StatefulWidget {
  var isPassword;
  var isSecure;
  var fontSize;
  var textColor;
  var fontFamily;
  var text;
  var hint;
  var maxLine;
  TextEditingController? mController;

  VoidCallback? onPressed;

  T4EditText(
      {var this.fontSize = textSizeNormal,
      var this.textColor = t4_textColorSecondary,
      var this.fontFamily = fontRegular,
      var this.isPassword = true,
      var this.hint = "",
      var this.isSecure = false,
      var this.text = "",
      var this.mController,
      var this.maxLine = 1});

  @override
  State<StatefulWidget> createState() {
    return T4EditTextState();
  }
}

class T4EditTextState extends State<T4EditText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.mController,
      obscureText: widget.isPassword,
      style: TextStyle(fontSize: textSizeLargeMedium, fontFamily: fontRegular, color: t4_white),
      decoration: InputDecoration(
        suffixIcon: widget.isSecure
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    widget.isPassword = !widget.isPassword;
                  });
                },
                child: new Icon(
                  widget.isPassword ? Icons.visibility : Icons.visibility_off,
                  color: t4_white,
                ),
              )
            : null,
        contentPadding: EdgeInsets.fromLTRB(16, 10, 16, 10),
        hintText: widget.hint,
        hintStyle: TextStyle(color: t4_white),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: t4_white, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: t4_white, width: 0.5),
        ),
      ),
    );
  }
}
