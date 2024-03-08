import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  // Simulate network delay
  await Future.delayed(Duration(seconds: 2));

  // Generate a random quote
  List<String> quotes = [
    "Life is good.",
    "Today is a good day.",
    "Believe you can and you're halfway there.",
    "Your time is limited, don't waste it living someone else's life.",
    "The best way to predict the future is to create it."
  ];
  Random random = Random();
  int index = random.nextInt(quotes.length);
  return quotes[index];
}

void main() async {
  print("Fetching a random quote...");
  String quote = await fetchRandomQuote();
  print("Random Quote: $quote");
}