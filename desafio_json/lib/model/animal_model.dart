import 'dart:convert';


class AnimalModel {
  String name;

  AnimalModel({required this.name});

  factory AnimalModel.fromJson(Map<String, dynamic> json) =>  AnimalModel(name: json['name']);

  Map<String, String> json() => {'name': name};
}

// class AnimalModel {
//    String name;
//    String image;
//
//
//   AnimalModel({required this.name, required this.image});
//
//   factory AnimalModel.fromJson(Map<String, dynamic> json) =>  AnimalModel(name: json['name'], image: json['image']);
//
// }
//
// class AnimalNames {
//   static String getNames() {
//     List<AnimalModel> animals = [
//       AnimalModel(name: "Rex", image: "https://wl-incrivel.cf.tsp.li/resize/728x/jpg/074/c80/6c469d5aabacebc05527839747.jpg"),
//       AnimalModel(name: "Flopi", image: "https://br.mundo.com/fotos/201507/filhote-1-600x600.jpg"),
//       AnimalModel(name: "Buddy", image: "https://ciclovivo.com.br/wp-content/uploads/2020/10/bicho-fofo-gary-bendig-unsplash.jpg"),
//       AnimalModel(name: "Luna", image: "https://hypescience.com/wp-content/uploads/2013/07/116.jpg"),
//       AnimalModel(name: "Max", image: "https://www.portaldosanimais.com.br/wp-content/uploads/2019/12/Porco-espinho-beb%C3%AA.jpg"),
//       AnimalModel(name: "Charlie", image: "https://noticias.buscavoluntaria.com.br/wp-content/uploads/2019/03/@andreaardendogtraining.png"),
//       AnimalModel(name: "Rocky", image: "https://static1.purebreak.com.br/articles/2/13/77/2/@/67385-a-carinha-desse-filhote-de-coala-diapo-1.jpg"),
//       AnimalModel(name: "Cooper", image: "https://res.cloudinary.com/buzzfeed-brasil/image/upload/q_auto,f_auto/image-uploads/entry-image/jpeg/b874bf3f26b303a41c26bf81418cd711.jpg"),
//       AnimalModel(name: "Bella", image: "https://static.tudointeressante.com.br/uploads/2018/11/filhotes-de-animais-2.jpg"),
//       AnimalModel(name: "Daisy", image: "https://hypescience.com/wp-content/uploads/2011/07/1017498_705405089471811_2060031886_n.jpg"),
//     ];
//     List<Map<String, dynamic>> animalList = [];
//     for (var animal in animals) {
//       animalList.add({"name": animal.name, "image": animal.image});
//     }
//     return jsonEncode(animalList);
//   }
// }