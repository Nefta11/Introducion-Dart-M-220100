void main() {
  void localFuction() {
    print("""Esta es una función local que solo puede 
    ser invocada, mientras el main se ejecuta""");
  }

  print(""" 
  Inicia la ejecución del main
  """);
  localFuction();
  localFuction();
  localFuction();
  globalFunction();
  print(
    "--------------------------------------------------------------------------------",
  );
  saluda();
  print(
    "--------------------------------------------------------------------------------",
  );
  print("""
Test 1: ${saludaPerson(nombre: "Neftali", saludar: "Buenas Noches")}
Test 2: ${saludaPerson(nombre: "Neftali")}
""");
  //Test 3: ${saludaPerson()}
  print(
    "--------------------------------------------------------------------------------",
  );
  print("La suma de 10 + 20 es: ${addTwoNumbers(10, 22)}");
  print("La suma es: ${addTwoNumbers(10)}");
}

void globalFunction() {
  print("""Esta es una función global que puede ser invocada
    mientras el main se ejecuta, o incluso de otros métodos o
    funciones""");
}

void saluda() {
  print("Hola desde Dart");
}

String saludaPerson({required String nombre, String saludar = "Hola"}) {
  return "$saludar $nombre";
}

//Funcion que suma dos numeros
int addTwoNumbers(int a, [int b = 0]) {
  return a + b;
}
