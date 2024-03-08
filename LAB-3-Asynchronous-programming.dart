import 'dart:async';

Future<List<String>> loadDataFromDatabase() async {
  
  await Future.delayed(Duration(seconds: 2));


  List<String> data = ['Abebe', 'kebede', 'Bob', 'Emily', 'David'];

  return data;
}

void main() async {
  print('Loading data from the database...');
  List<String> loadedData = await loadDataFromDatabase();
  print('Data loaded: $loadedData');
}