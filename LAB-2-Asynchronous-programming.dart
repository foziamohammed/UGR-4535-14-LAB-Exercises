import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));
  var file = File(savePath);
  await file.writeAsBytes(response.bodyBytes);
  print('File downloaded successfully!');
}

void main() async {
  String fileUrl = 'https://example.com/file.jpg';
  String savePath = 'path/to/save/file.jpg';

  print('Downloading file...');
  await downloadFile(fileUrl, savePath);
}