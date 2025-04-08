import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class PolicyonstudentdeportmentanddisciplineModule extends StatefulWidget {
  const PolicyonstudentdeportmentanddisciplineModule({super.key});

  @override
  State<PolicyonstudentdeportmentanddisciplineModule> createState() =>
      _PolicyonstudentdeportmentanddisciplineState();
}

class _PolicyonstudentdeportmentanddisciplineState
    extends State<PolicyonstudentdeportmentanddisciplineModule> {
  bool isDownloading = false;
  String downloadStatus = "Download File";

  Future<void> downloadFile(String url, String fileName) async {
    setState(() {
      isDownloading = true;
      downloadStatus = "Downloading...";
    });

    try {
      // Get the device's download directory
      final dir = await getApplicationDocumentsDirectory();
      final filePath = '${dir.path}/$fileName';

      // Download the file using Dio
      final dio = Dio();
      await dio.download(url, filePath);

      setState(() {
        downloadStatus = "Download Complete: $filePath";
      });
    } catch (e) {
      setState(() {
        downloadStatus = "Download Failed: $e";
      });
    } finally {
      setState(() {
        isDownloading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 144, 217, 245),
        ),
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: false,
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: 200.0,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  final double percent = constraints.biggest.height / 100.0;
                  final fontSize = 18.0 * percent.clamp(0.5, 1.0);

                  return FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      "Policy on student deportment and discipline.",
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: FilledButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () => {},
                      label: Text(downloadStatus),
                      icon: Icon(Icons.download),
                    ),
                  ),
                );
              }, childCount: 1),
            ),
          ],
        ),
      ),
    );
  }
}
