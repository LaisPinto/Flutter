class CharacterResponseModel {
  int id;
  String name;
  String image;

  CharacterResponseModel({
    required this.id,
    required this.name,
    required this.image,
  });

  factory CharacterResponseModel.fromMap(Map<String, dynamic> map) =>
      CharacterResponseModel(
        id: map['id'],
        name: map['name'],
        image: map['image'],
      );

  @override
  String toString() {
    return 'CharacterResponseModel{id: $id, name: $name, image: $image}';
  }
}

/*
https://rickandmortyapi.com/api/character/?page=19
{
  "info": {
    "count": 826,
    "pages": 42,
    "next": "https://rickandmortyapi.com/api/character/?page=20",
    "prev": "https://rickandmortyapi.com/api/character/?page=18"
  },
  "results": [
    {
      "id": 361,
      "name": "Toxic Rick",
      "status": "Dead",
      "species": "Humanoid",
      "type": "Rick's Toxic Side",
      "gender": "Male",
      "origin": {
        "name": "Alien Spa",
        "url": "https://rickandmortyapi.com/api/location/64"
      },
      "location": {
        "name": "Earth",
        "url": "https://rickandmortyapi.com/api/location/20"
      },
      "image": "https://rickandmortyapi.com/api/character/avatar/361.jpeg",
      "episode": [
        "https://rickandmortyapi.com/api/episode/27"
      ],
      "url": "https://rickandmortyapi.com/api/character/361",
      "created": "2018-01-10T18:20:41.703Z"
    },
    // ...
  ]
}
 */
