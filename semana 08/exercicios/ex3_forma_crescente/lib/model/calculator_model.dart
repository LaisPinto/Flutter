class OrdinationModel {
  double? a;
  double? b;
  double? c;

  OrdinationModel({this.a, this.b, this.c});

  String? orderByCrescent() {
    if(a! < b! && b! < c!){
      return 'a: $a, b: $b, c: $c';
    }else if(b! < c! && c! < a!){
      return 'b: $b, c: $c, a: $a';
    }else if(b! < a! && a! < c!){
      return 'b: $b, a: $a, c: $c';
    }else if(c! < a! && a! < b!){
      return 'c: $c a: $a b: $b';
    }else {
      return 'b: $b a: $a c: $c';
    }
  }
  // a b c - b c a - b a c - c a b -
  // c b a - a c b - c a b ok- b a c -

  @override
  String toString() {
    return 'OrdinationModel a: $a, b: $b, c: $c} Ordenado: ${orderByCrescent()}';
  }
}
