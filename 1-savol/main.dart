import 'words.dart';

void main() {
  final word1 = Words.takeWord('hello');
  final word2 = Words.takeWord('leetcode');
  print(word1.reverseVowels());
  print(word2.reverseVowels());
  print(word1 == word2);
}
