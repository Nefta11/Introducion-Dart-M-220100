void main() {

  var cuadrado1 = Square(side: 12.0);

  //Test 1 
  //print("El lado del cuadrado es : \\${cuadrado1.side}");
  print("El area del cuadrado 1 es de \\${cuadrado1.area}");

  //Teste 2
  cuadrado1.side= 25.0;
  print("El area del cuadrado 1 es de : ${cuadrado1.area}");

  //Test 3
  //final cuadrado2 = Square(side: -8.0);
  //print("El area del cuadrado 2 es de : ${cuadrado2.area}");

  //Test 4
  //cuadrado1.side=-4.0;
  //print("El area del cuadrado 1 es de : ${cuadrado1.area}");

}

class Square {
  double _side;

  Square({required side})
    : assert(side >= 0, 'El tamaño del lado debe ser > 0'),
      _side = side;

  //SETTER - Define o modifica los valores de las propiedades de la clase (Update)
  set side(double valor) {
    print('Se ha modificado el valor actual del tamaño del Cuadrado');
    if (valor <= 0) throw ('El tamaño del lado debe ser superior a 0');
    _side = valor;
  }

  double calculateArea() {
    return _side * _side;
  }

  // GETTER - Devuelve el valor actual de las propiedades de la clase (Read)
  double get area => calculateArea();
}
