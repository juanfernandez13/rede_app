import 'package:rede/models/horariosModel.dart';

import 'atividade_model.dart';

class UserModel {
  String capa_path =
      "https://meulugar.quintoandar.com.br/wp-content/uploads/2023/04/Cidade-Administrativa-de-Minas-Gerais.jpg";
  String user_path =
      "https://diariodocomercio.com.br/wp-content/uploads/2022/06/recuperacao-fiscal-estado-mg-2.jpg";
  String nome = "Cidade ADM de MG";
  String conta = "@cidadeadm";
  String bio = "Perfil oficial da cidade administrativa de MG";
  String localizacao = "Cidade administrativa";
  String dataPrimeiroAcesso = "Jan/23";
  String administrador = "@paulo.oliveira32";
  List<String> moderadores = ["oliverpereiraa", "21joaobotelho"];
  List<AtividadeModel> atividades = [
    AtividadeModel(),
    AtividadeModel(),
    AtividadeModel(),
    AtividadeModel(),
    AtividadeModel(),
    AtividadeModel(),
    AtividadeModel(),
    AtividadeModel()
  ];
  List<Horarios> horarios = [
    Horarios("Segunda-Feira", true, {"09":"00"}, {"17":"00"}),
    Horarios("Terça-Feira", true, {"09":"00"}, {"17":"00"}),
    Horarios("Quarta-Feira", true, {"09":"00"}, {"17":"00"}),
    Horarios("Quinta-Feira", true, {"09":"00"}, {"17":"00"}),
    Horarios("Sexta-Feira", true, {"09":"00"}, {"17":"00"}),
    Horarios("Sábado", false, {"00":"00"}, {"00":"00"}),
    Horarios("Domingo", false, {"00":"00"}, {"00":"00"}),

  ];
  UserModel();
}
