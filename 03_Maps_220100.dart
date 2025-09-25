void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Pikachu',
    'hp': 120,
    "isAlive": true,
    "abilities": {
      1: "Impactrueno",
      2: "Rayo",
      3: "Ataque Rápido",
      4: "Placaje",
    },
    "sprites": <String>[
      '/images/Pikachu/frontal_pose.png',
      '/images/Pikachu/back_pose.png',
    ],
    "winRate": 2 / 3,
  };

  print("Imprimiendo el mapa de pokemon:");
  print(pokemon);
  print("--------------------------------------------");

  // Accediendo a las propiedades individuales del mapa
  print(""" 
  Nombre: ${pokemon['name']}
  HP: ${pokemon['hp']}
  isAlive?: ${pokemon['isAlive']}
  abilities: ${pokemon['abilities'][1]}, ${pokemon['abilities'][2]}, ${pokemon['abilities'][3]}, ${pokemon['abilities'][4]}
  sprites: 
    Frontal: ${pokemon['sprites'][0]}
    Back: ${pokemon['sprites'][1]}
  Win Rate: ${pokemon['winRate']}
  """);
}
