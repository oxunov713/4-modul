class Words {
  late String _word;
  Words(this._word);
  factory Words.takeWord(String str) {
    if (str.isNotEmpty && str == str.toLowerCase()) {
      return Words(str);
    } else {
      throw CustomException();
    }
  }

  String reverseVowels() {
    List<String> existUnli = [];
    List<String> returnList = [];
    String retStr = '';
    String unli = 'aeiou';

    int n = 0;
    for (var i = 0; i < _word.length; i++) {
      returnList.add(_word[i]);
      for (var j = 0; j < unli.length; j++) {
        if (_word[i] == unli[j]) {
          existUnli.add(_word[i]);
        }
      }
    }
    for (var i = returnList.length - 1; i >= 0; i--) {
      for (var j = 0; j < unli.length; j++) {
        if (existUnli.isNotEmpty) {
          if (returnList[i] == unli[j]) {
            returnList[i] = existUnli.first;
            existUnli.removeAt(n);
          }
        }
      }
    }
    for (var e in returnList) {
      retStr += e;
    }
    return retStr;
  }

  @override
  noSuchMethod(Invocation invocation) {
    return "$invocation ";
  }

  @override
  bool operator ==(Object? other) {
    return this._word == other;
  }

  @override
  String toString() => "$_word hamma harf lotin tilida va kichkina";
}

class CustomException implements Exception {}
