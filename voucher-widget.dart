import 'package:flutter/material.dart';


class VoucherWidget extends StatelessWidget {
  const VoucherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: BottomCurveClipper(),
          child: Container(
            color: Colors.purple
            width: width(context),
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(
                  height: 48,
                ),
                Text(
                  'successful'.tr,
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ),
        Container(
          color: Colors.purple,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: DottedLine(
            dashColor: ThemeColors.voucherLinePaymentSuccessColor,
            dashLength: 10,
          ),
        ),
        ClipPath(
          clipper: TopCurveClipper(),
          child: Container(
            color: Colors.purple,
            width: width(context),
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Text(
                  'successful'.tr,
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20;

    Path path = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(
        Offset(size.width, radius),
        radius: Radius.circular(radius),
      )
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(radius, size.height)
      ..arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(0, radius)
      ..arcToPoint(
        Offset(radius, 0),
        radius: Radius.circular(radius),
      )
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TopCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20;

    Path path = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(
        Offset(size.width, radius),
        radius: Radius.circular(radius),
        clockwise: false,
      )
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(
        Offset(size.width - radius, size.height),
        radius: Radius.circular(radius),
      )
      ..lineTo(radius, size.height)
      ..arcToPoint(
        Offset(0, size.height - radius),
        radius: Radius.circular(radius),
      )
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0),
          radius: Radius.circular(radius), clockwise: false)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}