void main() {
//   try {
//     String message ="Hello";
//     print("message: ${message[5]}");
//     print("pré Bye");
//   } catch(e , s) {
//     print("error $e");
//     print("stack trace: $s");
//   } finally {
//     print("passou");
//     print("Bye");
//     print("more code");
//   }
  
  try {
    String message ="Hello";
//     String? x;
//     print(x!.length.toString());
    print("message: ${message[5]}");
    print("pré Bye");
  } on RangeError catch(e , s) {
    print("caiu na range error");
    print("error $e");
    print("stack trace: $s");
  }catch(e, s) {
     print("error $e");
    print("stack trace: $s");
  } finally {
    print("passou");
    print("Bye");
    print("more code");
  }
}

//
