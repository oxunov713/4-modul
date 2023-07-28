class Words {
  String? _word;
  factory Words.takeWord(String str) {
    if (str.isNotEmpty && str == str.toLowerCase()) {
    } else {
      throw CustomException();
    }
  }

  String reverseVowels(String str) {
    String s = '';
    String unli = 'aeiou';
    int n = 0;
    for (var i = 0; i < str.length; i++) {
      for (var j = 0; j < unli.length; j++) {
        if (str[i] == unli[j]) {
          s += str[i];
        }
      }
    }
    for (var i = str.length; i > 0; i++) {
      for (var j = unli.length; j > 0; j++) {
        if (str[i] == unli[j]) {
          n++;
        }
      }
    }
  }
}

class CustomException implements Exception {}
