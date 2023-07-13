class Driver {
  String? phone = '';
  String? password = '';
  String? town = '';
  String? refcode = '';
  String? country = 'Россия';
  String? surname = 'Иванов';
  String? name = 'Иван';
  String? numberDL = '';
  String? dateDL = '';
  String? carbrand = 'Лексус';
  String? carmodel = 'NX300';
  String? carcolor = 'Белый';
  String? caryear = '2016';
  String? carNP = 'А 007 АА | 197';
  String? carCTC = '77  УЕ 000000';
  String? description = '';
  String? age = '';
  String? image = '';
  String? video = '';
  String? question = '';
  String? question_1 = '';
  String? question_2 = '';
  String? question_3 = '';
  String? question_4 = '';
  String? question_5 = '';
  String? question_6 = '';
  String? question_7 = '';

  Map<String, String> toMapCar() {
    return {
      'Марка': carbrand!,
      'Модель': carmodel!,
      'Цвет': carcolor!,
      'Год выпуска': caryear!,
      'Гос номер': carNP!,
      'СТС': carCTC!,
    };
  }

}