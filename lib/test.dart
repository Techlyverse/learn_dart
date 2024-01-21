import 'package:file_picker/file_picker.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            TextButton(
                onPressed: () {
                  savePdf();
                },
                child: Text("save file")),
            TextButton(
                onPressed: () {
                  pickPdf();
                },
                child: Text("Pick file")),
          ],
        ),
      ),
    );
  }

  Future<void> savePdf() async {
    var download = await FileSaver.instance.saveAs(
      name: "title_1",
      ext: "pdf",
      mimeType: MimeType.pdf,
      link: LinkDetails(
        link: "https://udyamregistration.gov.in/docs/process_msme_regisration_new_pan_Yes.pdf",
      ),
    );

    print(download);
  }

  Future<void> pickPdf() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    print(result?.files.first.path ?? "no file found");
  }
}
