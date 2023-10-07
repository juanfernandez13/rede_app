import 'package:rede/models/edificio_model.dart';

class EdificioRepository {
  List<EdificioModel> edificiosList = [];
  static List<EdificioModel> mokados() {
    return [
      EdificioModel(
          fotoPath:
              "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTCjOyEmORSlXiNgOsTIfA6lVZOO-TkF47DxPUmRy_DazYP-kpC",
          nome: "Edifício Sul",
          bio: "Edifício da Cidade Administrativa de MG",
          conta: "@edificiosul",
          adm: "@felipeluizz"),
      EdificioModel(
          fotoPath:
              "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRuBkmaF65C2jTnnPNzqFOO9DDd07aDi9psHvSAToVvQWAWl3lo",
          nome: "Edifício Norte",
          bio: "Edifício da Cidade Administrativa de MG",
          conta: "@edificionorte",
          adm: "@robertapaula20"),
      EdificioModel(
          fotoPath:
              "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSLyMEEa35kkztB6qBOrX6wceHlumvgyABaYApWmbEuiDd04kCk",
          nome: "Edifício Central",
          bio: "Edifício da Cidade Administrativa de MG",
          conta: "@edificiocentral",
          adm: "@eumunhozricardo"),
    ];
  }
}
