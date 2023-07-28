/*class Words {
  String? _word;
   factory Words.takeWord(String str) {
    if (str.isNotEmpty && str == str.toLowerCase()) {
    } else {
      throw CustomException();
    }
  }*/

String reverseVowels(String str) {
  List<String> existUnli = [];
  List<String> returnList = [];
  String retStr = '';
  String unli = 'aeiou';

  int n = 0;
  for (var i = 0; i < str.length; i++) {
    returnList.add(str[i]);
    for (var j = 0; j < unli.length; j++) {
      if (str[i] == unli[j]) {
        existUnli.add(str[i]);
      }
    }
  }
  for (var i = returnList.length - 1; i > 0; i--) {
    for (var j = 0; j < unli.length; j++) {
      if (existUnli.isNotEmpty) {
        if (returnList[i] == unli[j]) {
          returnList[i] = existUnli[n];
          existUnli.remove(existUnli[n]);
        }
      }
    }
  }
  for (var e in returnList) {
    retStr += e;
  }
  return retStr;
}

class CustomException implements Exception {}
