String reverseString(String input) {
  List<String> characters = input.split('');
  characters = characters.reversed.toList();
  String reversedString = characters.join('');
  return reversedString;
}

void main() {
  String inputString = "Hello, World!";
  String reversedString = reverseString(inputString);
  print("Original string: $inputString");
  print("Reversed string: $reversedString");
}