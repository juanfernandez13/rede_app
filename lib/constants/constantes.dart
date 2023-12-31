import 'package:flutter/material.dart';

class Cores {
  static Color azul = const Color(0xff4E97FE);
  static Color cinza = const Color(0xff909094);
  static Color cinzaEscuro = const Color(0xff858585);
  static Color roxo = const Color(0xff7A5CF0);
}

class Tempo {
  static List<int> horas() => List.generate(24, (i) => i);
  static List<int> minutos() => List.generate(61, (i) => i);
}

class Espaco {
  static width4() => const SizedBox(width: 4);
  static width8() => const SizedBox(width: 8);
  static width12() => const SizedBox(width: 12);
  static width16() => const SizedBox(width: 16);
  static width20() => const SizedBox(width: 20);
  static width24() => const SizedBox(width: 24);
  static width28() => const SizedBox(width: 28);
  static height4() => const SizedBox(height: 4);
  static height8() => const SizedBox(height: 8);
  static height12() => const SizedBox(height: 12);
  static height16() => const SizedBox(height: 16);
  static height20() => const SizedBox(height: 20);
  static height24() => const SizedBox(height: 24);
  static height28() => const SizedBox(height: 28);
}
