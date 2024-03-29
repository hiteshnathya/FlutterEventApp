import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomepageBackground extends StatelessWidget{

  final screenHeight;

  const HomepageBackground({super.key,this.screenHeight});

  @override
  Widget build(BuildContext context) {
    final themedata=Theme.of(context);
    return ClipPath(
      clipper: BottomShapeClipper(),
      child: Container(
        height:screenHeight * 0.5 ,
        color: themedata.primaryColor,


      ),
    );
  }


}

class BottomShapeClipper  extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    Path path =Path();

    Offset curveStartPoint = Offset(0, size.height*0.85);
    Offset curveEndPoint = Offset(size.width, size.height*0.85);
    path.lineTo(curveStartPoint.dx, curveEndPoint.dy);
    path.quadraticBezierTo(size.width/2, size.height, curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
   return true;
  }
}