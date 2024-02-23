import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';

import 'package:get/get.dart';

import '../controllers/draw_controller.dart';

class DrawViewView extends GetView<DrawViewController> {
  DrawViewView({Key? key}) : super(key: key);

  final DrawingController _drawingController = DrawingController();

  // Future<void> _getImageData() async {
  //   print((await _drawingController.getImageData())?.buffer.asInt8List());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawing Canvas'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: DrawingBoard(
          controller: _drawingController,
          background: Container(
              width: Get.width, height: Get.height / 1.5, color: Colors.white),
          showDefaultActions: true,
          showDefaultTools: true,
        ),
      ),
      // const InfiniteCanvasPage(),
    );
  }
}

enum CanvasState { pan, draw }

class InfiniteCanvasPage extends StatefulWidget {
  const InfiniteCanvasPage({super.key});

  @override
  InfiniteCanvasPageState createState() => InfiniteCanvasPageState();
}

class InfiniteCanvasPageState extends State<InfiniteCanvasPage> {
  List<Offset> points = [];
  CanvasState canvasState = CanvasState.draw;
  Offset offset = const Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor:
            canvasState == CanvasState.draw ? Colors.red : Colors.blue,
        onPressed: () {
          setState(() {
            canvasState = canvasState == CanvasState.draw
                ? CanvasState.pan
                : CanvasState.draw;
          });
        },
        child: Text(canvasState == CanvasState.draw ? "Draw" : "Pan"),
      ),
      body: GestureDetector(
        onPanDown: (details) {
          setState(() {
            if (canvasState == CanvasState.draw) {
              points.add(details.localPosition - offset);
            }
          });
        },
        onPanUpdate: (details) {
          setState(() {
            if (canvasState == CanvasState.pan) {
              offset += details.delta;
            } else {
              points.add(details.localPosition - offset);
            }
          });
        },
        onPanEnd: (details) {
          setState(() {
            if (canvasState == CanvasState.draw) {
              points.add(Offset.infinite);
            }
          });
        },
        child: SizedBox.expand(
          child: ClipRRect(
            child: CustomPaint(
              painter: CanvasCustomPainter(points: points, offset: offset),
            ),
          ),
        ),
      ),
    );
  }
}

class CanvasCustomPainter extends CustomPainter {
  List<Offset> points;
  Offset offset;

  CanvasCustomPainter({required this.points, required this.offset});

  @override
  void paint(Canvas canvas, Size size) {
    //define canvas background color
    Paint background = Paint()..color = Colors.white;

    //define canvas size
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);

    canvas.drawRect(rect, background);
    canvas.clipRect(rect);

    //define the paint properties to be used for drawing
    Paint drawingPaint = Paint()
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..color = Colors.black
      ..strokeWidth = 1.5;

    //a single line is defined as a series of points followed by a null at the end
    for (int x = 0; x < points.length - 1; x++) {
      //drawing line between the points to form a continuous line
      if (points[x + 1] != null) {
        canvas.drawLine(
            points[x] + offset, points[x + 1] + offset, drawingPaint);
      }
      //if next point is null, means the line ends here
      else if (points[x + 1] == null) {
        canvas.drawPoints(PointMode.points, [points[x] + offset], drawingPaint);
      }
    }
  }

  @override
  bool shouldRepaint(CanvasCustomPainter oldDelegate) {
    return true;
  }
}
