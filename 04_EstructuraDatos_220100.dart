void main() {
  final numbers = [1, 2, 3, 4, 5];
  print(numbers);

  print("""numbers es una colecicion de valores del tipo ${numbers.runtimeType}

  La lista tiene un total de: ${numbers.length} elementos
  El primer elemento en la posicion es : ${numbers.first}
  El elemento en la última posición es: ${numbers.last}
  Si queremos recuperar el elemento es una posición específica
  se pone entre corchetes, recordando que la primera posición es 0,
  por ejemplo el elemento en la cuarta posición es decir [3] es:
  ${numbers[3]}
  Tambien podemos transformar la lista en un orden reverso:
  ${numbers.reversed}
  
  Tenemos que considerar que la función reversed cambio el 
  tipo de dato de la estructura original que era un ${numbers.runtimeType} a ${numbers.reversed.runtimeType}
  """);

  final numbersReversed = numbers.reversed;

  print(""" 
  Lista de numeros reversos (Iterable): ${numbersReversed}
  parsear la lista a un set de datos:
  ${numbersReversed.toSet()} 
  parsear la lista a una lista de datos:
  ${numbersReversed.toList()}
  """);

  /// Obtener todos los elementos de la lista mayores a 5

  final numbersGreaterThan5 = numbers.where((int number) {
    return number > 5;
  });
  print(numbersGreaterThan5);

  print("""
>5 (Iterable): ${numbersGreaterThan5}
>5 (Set): ${numbersGreaterThan5.toSet()}
""");
}
