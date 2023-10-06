import 'package:rede/models/edificioModel.dart';

class EdificioRepository {
  List<EdificioModel> EdificiosList = [];
  List <EdificioModel>mokados() {
    EdificiosList.add(EdificioModel(
        foto_path:
            "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTCjOyEmORSlXiNgOsTIfA6lVZOO-TkF47DxPUmRy_DazYP-kpC",
        nome: "Edifício Sul",
        bio: "Edifício da Cidade Administrativa de MG",
        conta: "@edificiosul"));

    return EdificiosList;
  }
}
