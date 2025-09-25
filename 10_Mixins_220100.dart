void main() {
  final speedy = Guepardo();
  speedy.correr();

  final tweety = Canario();
  tweety.volar();
  tweety.cantar();

  final nemo = PezPayaso();
  nemo.nadar();
  nemo.esconderse();
}

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('¡Estoy volando!');
}

mixin Caminante {
  void correr() => print('¡Estoy corriendo muy rápido!');
}

mixin Nadador {
  void nadar() => print('¡Estoy nadando!');
}

mixin Cantor {
  void cantar() => print('¡Estoy cantando!');
}

mixin Escondedor {
  void esconderse() => print('¡Me estoy escondiendo!');
}

class Guepardo extends Mamifero with Caminante {}

class Canario extends Ave with Volador, Cantor {}

class PezPayaso extends Pez with Nadador, Escondedor {}
