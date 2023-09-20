/// Бренд автомобиля
class Brand {
  final String name;
  final String country;

  Brand(this.name, this.country);

  @override
  String toString() {
    return 'Бренд: имя=$name, страна=$country';
  }
}

/// Модель автомобиля
class Model {
  final String name;
  final String description;

  Model(this.name, this.description);

  @override
  String toString() {
    return 'Модель: имя=$name, описание=$description';
  }
}

/// Двигатель автомобиля
class Engine { 
  final String type;
  final int power;
  final String manufacturer;

  Engine(this.type, this.power, this.manufacturer);

  @override
  String toString() {
    return 'Двигатель: тип=$type, мощность=$power, производитель=$manufacturer';
  }
}

/// Кузов автомобиля
class Body { 
  final String vin;

  Body(this.vin);

  @override
  String toString() {
    return 'Кузов: vin=$vin';
  }
}

/// Автомобиль со всеми его деталями.
class Car {
  final Brand brand;
  final Model model;
  final int year;
  final String bodyType;
  final Engine engine;
  String? color;
  int? mileage;

  Car(this.brand, this.model, this.year, this.bodyType, this.engine, {this.color, this.mileage});

  void repaint(String newColor) {
    color = newColor;
    print('Автомобиль теперь цвета $color.');
  }

  void drive(int distance) {
    mileage = (mileage ?? 0) + distance;
    print('Проехали $distance км. Общий пробег теперь составляет $mileage км.');
  }

  int get age => DateTime.now().year - year; 

  @override
  String toString() {
    
    String aboutCar = "  $brand;\n  $model;\n  Год=$year;\n  Тип кузова=$bodyType;\n  $engine;\n  Цвет=$color;\n  Пробег=$mileage";
    return aboutCar;
  }
}

/// Автомобиль типа седан
class Sedan extends Car {
  final Body body;
  final int numberOfDoors;

  Sedan(Brand brand, Model model, int year, String bodyType, Engine engine, this.body, this.numberOfDoors, {String? color, int? mileage}) : super(brand, model, year, bodyType, engine, color: color, mileage: mileage);

  @override
  String toString() {
    return 'Седан:\n${super.toString()}\n  $body\n  Количество дверей=$numberOfDoors';
  }
}

/// Автомобиль типа внедорожник
class SUV extends Car {
  final Body body;
  final bool fourWheelDrive;

  SUV(Brand brand, Model model, int year, String bodyType, Engine engine, this.body, this.fourWheelDrive, {String? color, int? mileage}) : super(brand, model, year, bodyType, engine, color: color, mileage: mileage);

  @override
  String toString() {
    return 'Внедорожник:\n${super.toString()};\n  $body;\n  полный привод=$fourWheelDrive';
  }
}