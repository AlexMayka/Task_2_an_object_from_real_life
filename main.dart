import 'class_car.dart' show Sedan, SUV, Brand, Model, Engine, Body;


void main() {

  // Создание бренда, модели, двигателя, кузова
  Brand brand = Brand('Toyota', 'Япония');
  Model model = Model('Camry', 'Седан среднего класса');
  Engine engine = Engine('Бензиновый', 200, 'Toyota');
  Body body = Body('1234567890');

  // Создае автомобиля-седан
  Sedan car = Sedan(brand, model, 2018, 'Седан', engine, body, 4, color: 'Черный', mileage: 50000);
  print("$car\n\n");

  // Перекрашиваем автомобиль и добавляем пробег
  car.repaint('Белый');
  car.drive(1000);
  print("$car\n\n");
  
  // Создание автомобиля-внедорожник
  SUV suv = SUV(brand, Model('Land Cruiser', 'Полноразмерный внедорожник'), 2020, 'Внедорожник', Engine('Дизельный', 250, 'Toyota'), Body('0987654321'), true);
  print("$suv"); 

}