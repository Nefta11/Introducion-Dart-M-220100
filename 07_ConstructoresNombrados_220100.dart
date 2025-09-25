void main() {
  //Test 1
  final ComicCharacter magneto = ComicCharacter(
    alias: "Magneto",
    name: "Erik Lensher",
    power: "Magnetismo",
    role: "Antihéroe",
    isAlive: true,
    enterprise: "Marvel",
  );
  print(magneto.toString());

  print(
    "-------------------------------------------------------------------------------",
  );

  //Test 2
  final ComicCharacter lexlutor = ComicCharacter(
    name: "Lex Lutor",
    alias: "Lex",
    enterprise: "DC",
    role: "Villano",
  );
  print(lexlutor.toString());

  print(
    "-----------------------------------------------------------------------------",
  );
  //Test 3
  final Map<String, dynamic> dataJSON = {
    "name": "Wade Willson",
    "alias": "Deadpool",
    "isAlive": true,
    "enterprise": "Marvel",
    "power": "Regeneración Acelerada",
    "role": "Antihéroe",
  };
  final deadpool = ComicCharacter.fromJson(dataJSON);
  print(deadpool.toString());

  //Test 4
  print("----------------------------------------------------");
  final Map<String, dynamic> dataJSON2 = {
    "name": "Peter Parker",
    "alias": "Spiderman"
  };
  final spiderman = ComicCharacter.fromJson(dataJSON2);
  print(spiderman.toString());


}

class ComicCharacter {
  String name;
  String alias;
  String enterprise;
  String role;
  String power;
  bool isAlive;

  ComicCharacter({
    required this.name,
    required this.alias,
    required this.enterprise,
    this.role = "Desconocido",
    this.power = "Sin poderes",
    this.isAlive = true,
  });

  ComicCharacter.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'Desconocido',
      power = json['power'] ?? 'Desconocido',
      alias = json['alias'] ?? 'Desconocido',
      enterprise = json['enterprise'] ?? 'Desconocido',
      isAlive = json['isAlive'] ?? true,
      role = json['role'] ?? 'Desconocido';

  @override
  String toString() {
    return """
  Personaje: ${alias.toUpperCase()}
  Nombre: ${name.toUpperCase()}
  Poderes: ${power.toUpperCase()}
  Rol: ${role.toUpperCase()}
  Estatus: ${isAlive ? "VIVO" : "MUERTO"}
  Cadena de comics: ${enterprise.toUpperCase()}
  """;
  }
}
