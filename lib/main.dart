import 'package:basic_calculator/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: primaryColor,
        fontFamily: 'WorkSans',
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String expressionText = '6291÷5';
  String resultText = '1258.2';

  Widget _buildOperatorButton(String buttonText) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: secondaryColor,
        surfaceTintColor: secondaryColor,
        fixedSize: const Size(72, 72),
        textStyle: const TextStyle(fontSize: 28, fontFamily: 'WorkSans'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Text(buttonText),
    );
  }

  Widget _buildNumberButton(String buttonText) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        fixedSize: const Size(72, 72),
        textStyle: const TextStyle(
          fontSize: 28,
          fontFamily: 'WorkSans',
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Text(buttonText),
    );
  }

  Widget _buildPrimaryButton(String buttonText) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        surfaceTintColor: primaryColor,
        fixedSize: const Size(72, 72),
        textStyle: const TextStyle(
          fontSize: 28,
          fontFamily: 'WorkSans',
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(),
              Text(
                expressionText,
                style: const TextStyle(
                  color: secondaryColor,
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                resultText,
                style: const TextStyle(
                  fontSize: 96,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildOperatorButton("C"),
                  _buildOperatorButton("±"),
                  _buildOperatorButton("%"),
                  _buildPrimaryButton("÷"),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNumberButton("7"),
                  _buildNumberButton("8"),
                  _buildNumberButton("9"),
                  _buildPrimaryButton("x"),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNumberButton("4"),
                  _buildNumberButton("5"),
                  _buildNumberButton("6"),
                  _buildPrimaryButton("-"),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNumberButton("1"),
                  _buildNumberButton("2"),
                  _buildNumberButton("3"),
                  _buildPrimaryButton("+"),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNumberButton("."),
                  _buildNumberButton("0"),
                  _buildNumberButton("⌫"),
                  _buildPrimaryButton("="),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
