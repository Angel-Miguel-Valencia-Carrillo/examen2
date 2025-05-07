import 'package:flutter/material.dart';
import 'package:valenciaexam/pagina_inicial.dart';
import 'package:valenciaexam/pagina_silverappbar.dart';
import 'package:valenciaexam/pagina_slider.dart';
import 'package:valenciaexam/pagina_rotatedbox.dart';
import 'package:valenciaexam/pagina_placeholder.dart';
import 'package:valenciaexam/pagina_choicechip.dart';
import 'package:valenciaexam/pagina_animatedpadding.dart';
import 'package:valenciaexam/pagina_fadetransition.dart';
import 'package:valenciaexam/pagina_stafullbulder.dart';
import 'package:valenciaexam/pagina_animationbuilder.dart';
import 'package:valenciaexam/pagina_pageview.dart';

void main() => runApp(const MisWidgets());

class MisWidgets extends StatelessWidget {
  const MisWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicial(),
        '/sliverappBar': (context) => const SliverAppBarExam(),
        '/slider': (context) => const SliderExam(),
        '/rotatedbox': (context) => const RotatedBoxExam(),
        '/placeholder': (context) => const PlaceholderExam(),
        '/choicechip': (context) => const ChoiceChipExam(),
        '/animatedpadding': (context) => const AnimatedPaddingExam(),
        '/fadetransition': (context) => const FadeTransitionExam(),
        '/statefullbuilder': (context) => const StateFullBuilderExam(),
        '/animationbuilder': (context) => const AnimationBuilderExam(),
        '/pageview': (context) => PageViewExam(),
      },
    );
  }
}
