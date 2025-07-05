import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:flutter/material.dart';

class BullletPoints extends StatelessWidget {
  const BullletPoints(
      {super.key,
      required this.texts,
      this.subTexts,
      this.pointStyle,
      this.style});

  final List<String> texts;
  final List<String>? subTexts;
  final Widget? pointStyle;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => Column(
      children: List.generate(
          texts.length,
          (index) => SlideUpFadeInOnScroll(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight5,
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            pointStyle ?? Text('• ', style: textStyle1),
                            kWidth5,
                            Expanded(
                                child: Text(texts[index],
                                    style: style ?? textThinStyle1))
                          ]),
                      subTexts != null && subTexts!.isNotEmpty
                          ? kHeight5
                          : kEmpty,
                      subTexts != null && subTexts!.isNotEmpty
                          ? Text('   ${subTexts![index]}')
                          : kEmpty
                    ]),
              )));
}
