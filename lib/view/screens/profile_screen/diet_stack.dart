import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:personal_training_app/model/client_model.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:open_file/open_file.dart';
import 'dart:io';

class ScreenDietStack extends StatefulWidget {
  final ClientModelM clientdata;
  const ScreenDietStack({super.key, required this.clientdata});

  @override
  State<ScreenDietStack> createState() => _ScreenDietStackState();
}

class _ScreenDietStackState extends State<ScreenDietStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/chris-bumstead-pre-workout-updated.webp'),
                  opacity: .5,
                  fit: BoxFit.cover,
                  alignment: Alignment.center)),
          child: Padding(
            padding:
                const EdgeInsets.only(right: 25, left: 25, top: 50, bottom: 50),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10)),
              height: 300,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        "07:30 AM.    ${widget.clientdata.dietobj!.firstmeal}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "08:30 AM.    ${widget.clientdata.dietobj!.secondmeal}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "11:30 AM.   ${widget.clientdata.dietobj!.thirdmeal}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "01:30 AM.    ${widget.clientdata.dietobj!.fourthmeal}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "04:30 AM.    ${widget.clientdata.dietobj!.fifthmeal}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "08:30 AM.    ${widget.clientdata.dietobj!.sixthmeal}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "10:30 AM.    ${widget.clientdata.dietobj!.seventhmeal}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  createPdf(widget.clientdata);
                                },
                                icon: const Icon(
                                  Icons.download,
                                  color: Colors.white,
                                  size: 28,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<void> createPdf(ClientModelM clientdata) async {
    PdfDocument document = PdfDocument();
    final page = document.pages.add();
    double startY = 50;

    page.graphics.drawString(
      'Diet Plan',
      PdfStandardFont(PdfFontFamily.helvetica, 60),
      bounds: Rect.fromLTWH(50, startY, page.getClientSize().width - 100, 80),
    );
    startY += 100;

    double fontSize = 30;
    double lineHeight = fontSize + 10;
    page.graphics.drawString(
      '07:30 AM : ${clientdata.dietobj!.firstmeal}',
      PdfStandardFont(PdfFontFamily.helvetica, fontSize),
      bounds: Rect.fromLTWH(
        50,
        startY,
        page.getClientSize().width - 100,
        lineHeight,
      ),
    );
    startY += lineHeight + 10;
    page.graphics.drawString(
      '08:30 AM : ${clientdata.dietobj!.secondmeal}',
      PdfStandardFont(PdfFontFamily.helvetica, fontSize),
      bounds: Rect.fromLTWH(
        50,
        startY,
        page.getClientSize().width - 100,
        lineHeight,
      ),
    );
    startY += lineHeight + 10;
    page.graphics.drawString(
      '11:30 AM : ${clientdata.dietobj!.thirdmeal}',
      PdfStandardFont(PdfFontFamily.helvetica, fontSize),
      bounds: Rect.fromLTWH(
        50,
        startY,
        page.getClientSize().width - 100,
        lineHeight,
      ),
    );
    startY += lineHeight + 10;
    page.graphics.drawString(
      '01:30 PM : ${clientdata.dietobj!.fourthmeal}',
      PdfStandardFont(PdfFontFamily.helvetica, fontSize),
      bounds: Rect.fromLTWH(
        50,
        startY,
        page.getClientSize().width - 100,
        lineHeight,
      ),
    );
    startY += lineHeight + 10;
    page.graphics.drawString(
      '04:30 PM : ${clientdata.dietobj!.fifthmeal}',
      PdfStandardFont(PdfFontFamily.helvetica, fontSize),
      bounds: Rect.fromLTWH(
        50,
        startY,
        page.getClientSize().width - 100,
        lineHeight,
      ),
    );
    startY += lineHeight + 10;
    page.graphics.drawString(
      '08:30 AM : ${clientdata.dietobj!.sixthmeal}',
      PdfStandardFont(PdfFontFamily.helvetica, fontSize),
      bounds: Rect.fromLTWH(
        50,
        startY,
        page.getClientSize().width - 100,
        lineHeight,
      ),
    );
    startY += lineHeight + 10;
    page.graphics.drawString(
      '10:30 PM : ${clientdata.dietobj!.seventhmeal}',
      PdfStandardFont(PdfFontFamily.helvetica, fontSize),
      bounds: Rect.fromLTWH(
        50,
        startY,
        page.getClientSize().width - 100,
        lineHeight,
      ),
    );
    startY += lineHeight + 10;

    List<int> bytes = await document.save();
    document.dispose();
    saveAndLaunchFile(bytes, 'Diet for Mr. ${widget.clientdata.name}');
  }

  Future<void> saveAndLaunchFile(List<int> bytes, String filename) async {
    final Directory? appDir = await getExternalStorageDirectory();
    final String appDocPath = appDir!.path;
    final String filePath = '$appDocPath/$filename';

    final File file = File(filePath);
    await file.writeAsBytes(bytes, flush: true);

    OpenFile.open(filePath);
  }
}
