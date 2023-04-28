class MockModel {
  final List<String> entries = ["Card 1", "Card 2", "Card 3", "Card 4" ];
  final List<int> colorCode = [600, 200, 400, 100 ];


  @override
  String toString() {
    return 'MockModel{entries: $entries, colorCode: $colorCode}';
  }
}