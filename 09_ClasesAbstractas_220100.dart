main() {
  final plantaHeolicaPachuca = WindPlant(initialEnergy: 525000.00);
  final plantaNuclearLagunaVerde = NuclearPlant(energyLeft: 1450215);

  print("""
    PLANTAS DE ENERGÍA EN MÉXCO
  

    PLANTA HEÓLICA DE PACHUCA
    Energia Disponible: ${plantaHeolicaPachuca.energyLeft}


    PLANTA NUCLEAR DE LAGUNA VERDE
    Energia Disponible: ${plantaNuclearLagunaVerde.energyLeft}
    ---------------------------------------------------------------------
    
    SOLICITUDES DE CONSUMO:""");
  plantaHeolicaPachuca.consumeEnergy(1230);

  print("""
    Solicitud 1: Hospital Regional de Tulancingo Cantidad: 1230
    Atendido por Planta Heolica de Pachuca
    Energia restante:${plantaHeolicaPachuca.energyLeft}
    """);
  plantaNuclearLagunaVerde.consumeEnergy(2416.25);
  print("""
    Solicitud 2: Batallón Militar de Naucalpan Cantidad: 2416.25
    Atendido por Planta Nuclear de Laguna Verde
    Energia restante: ${plantaNuclearLagunaVerde.energyLeft}
    """);

  //TODO Tarea: simula el consumo de tercer caso,
  //
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft = energyLeft - amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft = energyLeft - (amount * 0.5);
  }
  //TODO Tarea : Crear las subclase de PlantaHidroelectrica (WaterPlant),
  //sumando el costo de consumo un 2% por consumo de operación.
}
