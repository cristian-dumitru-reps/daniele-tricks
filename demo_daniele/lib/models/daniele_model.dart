// ignore_for_file: avoid_print

// import '../services/user_service.dart';

class DanieleModel {
  late String nome;
  late int eta;

  DanieleModel({
    required this.nome,
    required this.eta,
  });

// Leggere valori mandati dal backend
  // DanieleModel.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   name = json['name'];
  //   password = json['password'];
  //   experience = json['experience'];
  //   experienceNeeded = json['experienceNeeded'];
  //   level = json['level'];
  //   lottieUrl = json['lottieUrl'];
  //   duration = json['duration'];
  //   width = json['width'];
  //   height = json['height'];
  // }

// Scrivere valori verso il backend
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id;
  //   data['name'] = name;
  //   data['password'] = password;
  //   data['experience'] = experience;
  //   data['experienceNeeded'] = experienceNeeded;
  //   data['level'] = level;
  //   data['lottieUrl'] = lottieUrl;
  //   data['duration'] = duration;
  //   data['width'] = width;
  //   data['height'] = height;
  //   return data;
  // }

}
