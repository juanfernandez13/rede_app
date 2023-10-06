import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';

class FontStyles {
  static TextStyle pageViewController(condicao) => TextStyle(
      fontSize: 16,
      color: condicao ? Cores.azul : Cores.cinza,
      fontWeight: FontWeight.w600);

  static TextStyle editar() =>
      TextStyle(fontSize: 16, fontWeight: FontWeight.w600);

  static TextStyle nome() => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );
  static TextStyle bio() => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
  static TextStyle subDadosPerfil() => TextStyle(
        fontSize: 12,
        color: Cores.cinza,
        fontWeight: FontWeight.w400,
      );
}
