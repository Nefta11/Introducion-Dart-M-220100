void main() {
  /* Comentario multilinea 
     * 
     **/
  //Comentario de una línea
  // 1. Imprimiendo de un saludo
  print("Hola mundo \n");
  print("========================= \n");

  //2. Declaración de variables
  final String miNombre = "Neftali";
  late int edad;
  print("Mucho gusto, $miNombre");
  print("La variable mi Nombre es de tipo ${miNombre.runtimeType}");

  /*miNombre ="Neftali Vergara"; Esto genera un error por que el prefijo final solo permite que se asigne el valor de la variable una sola vez*/
  /*print("Haz actualizado el valor de tu nombre a: $miNombre");*/
  edad = 25;
  print("Tu edad es de $edad años");

  const genero = "M";
  if (genero == "M") {
    print("Bienvenido al mundo de la programacion en Dart");
  } else {
    print("Bienvenido al mundo de la programacion en Dart");
  }
}
