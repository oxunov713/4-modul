class ForIn {
  const ForIn();
  void forIn(List list) {
    for (String category in list) {
      print("-$category\n");
    }
  }
}
