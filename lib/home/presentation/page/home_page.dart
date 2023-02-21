import 'package:flutter/material.dart';
import 'package:testtask/home/constants.dart';
import 'package:testtask/home/presentation/widgets/screen_text.dart';

/// [HomePage] The starting page of app
class HomePage extends StatefulWidget {
  /// [HomePage] Creates Home page
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        onTap: () => setState(() {
          backgroundColor = getRandomColor();
        }),
        child: const Center(
          child: ScreenText(
            text: kHomePageText,
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  ///  [generateRandomNumber]
  ///  Used to generate random number using XOR shifts algorithm
  ///  bitwise operators for better performance and execution speed
  int generateRandomNumber() {
    final currentTimeSinceEpoch = DateTime.now().microsecondsSinceEpoch;
    final pseudoRandomNumber =
        currentTimeSinceEpoch ^ currentTimeSinceEpoch << kNumberOfShiftedBits;

    return pseudoRandomNumber;
  }

  ///  [getRandomColor]
  ///  Used to generate random color based on [generateRandomNumber] method.
  ///  Handles random number limit using white color hex code remainder.
  Color getRandomColor() {
    final remainder = generateRandomNumber() % kWhiteColorHexCode;

    return Color(remainder);
  }
}
