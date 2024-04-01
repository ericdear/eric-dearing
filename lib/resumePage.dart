import 'package:flutter/cupertino.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: PDFView(
        filePath: "assets/strictBrowser/StrictBrowserPrivacyPolicy.pdf",
      ),
    );
  }
}
