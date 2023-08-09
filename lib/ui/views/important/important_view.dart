import 'package:flutter/material.dart';

class ImportantView extends StatefulWidget {
  const ImportantView({super.key});

  @override
  State<ImportantView> createState() => _ImportantViewState();
}

class _ImportantViewState extends State<ImportantView> {
  @override
  Widget build(BuildContext context) {
    return 
  }
}

//Add this CustomPaint widget to the Widget Tree
CustomPaint(
    size: Size(WIDTH, (WIDTH*0.325).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: RPSCustomPainter(),
)

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter<Path> {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(0,size.height*0.9956692);
    path_0.cubicTo(size.width*0.1023160,size.height*0.6877908,size.width*0.3315975,size.height*0.7502392,size.width*0.4827750,size.height*0.7914154);
    path_0.lineTo(size.width*0.4827800,size.height*0.7914154);
    path_0.cubicTo(size.width*0.4872275,size.height*0.7926308,size.width*0.4916075,size.height*0.7938231,size.width*0.4959150,size.height*0.7949846);
    path_0.cubicTo(size.width*0.5370950,size.height*0.8061231,size.width*0.5762375,size.height*0.8183692,size.width*0.6133025,size.height*0.8299692);
    path_0.cubicTo(size.width*0.7922475,size.height*0.8859615,size.width*0.9227175,size.height*0.9267923,size.width,size.height*0.7537508);
    path_0.lineTo(size.width,0);
    path_0.lineTo(0,0);
    path_0.lineTo(0,size.height*0.9956692);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff6F2877).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}