import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';

class FontStyles {
  static TextStyle pageViewController(condicao) => TextStyle(
      fontSize: 16,
      color: condicao ? Cores.azul : Cores.cinza,
      fontWeight: FontWeight.w600);

  static TextStyle grosso16() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );
  static TextStyle fino16() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
  static TextStyle finoCinza12() => TextStyle(
        fontSize: 12,
        color: Cores.cinza,
        fontWeight: FontWeight.w400,
      );
  static TextStyle fino14() =>
      TextStyle(color: Cores.cinza, fontWeight: FontWeight.w400, fontSize: 14);
}
