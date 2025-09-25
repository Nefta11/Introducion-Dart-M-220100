void main() {
  final Hero wolverine = Hero(name: "Wolverine", power: "Regeneración");

  late Hero batman;

  print("--------------------Test 1-----------");
  print(wolverine.toString());
  print("Nombre: " + wolverine.name);
  print("Poder: " + wolverine.power);

  final Hero superman = Hero(
    name: "Clark Kent",
    power: "Volar, Fuerza, Proyección de rayos de calor y Aliento de Hielo",
  );
  print("--------------------Test 2-----------");
  print(superman.toString());
  print("Nombre: " + superman.name);
  print("Poder: " + superman.power);

  batman = obtenerDatosBatman();
  print("--------------------Test 3-----------");
  print(batman.toString());
  print("Nombre: " + batman.name);
  print("Poder: " + batman.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = "Sin poder"});

  @override
  String toString() {
    return "Hero: ${name.toUpperCase()} - ${power.toUpperCase()}";
  }
}

Hero obtenerDatosBatman() => Hero(name: "Bruce Wayne");
