import 'dart:math';

import 'package:flutter/material.dart';

class ImpoParPage extends StatefulWidget {
  const ImpoParPage({super.key});

  @override
  State<ImpoParPage> createState() => _ImpoParPageState();
}

class _ImpoParPageState extends State<ImpoParPage> {
  int playerNumber = 0;
  int computerNumber = 0;
  Choice playerChoice = Choice.par;

  void check(int number) {
    setState(() {
      playerNumber = number;
      computerNumber = Random().nextInt(6);
    });
    int sum = playerNumber + computerNumber;
    if (playerChoice == Choice.par) {
      if (sum.isEven) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 2),
            content: Text('Venceu'),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 2),
            content: Text('Perdeu'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } else {
      if (sum.isOdd) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 2),
            content: Text('Venceu'),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 2),
            content: Text('Perdeu'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImpoPar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text('Computador'),
                ),
                ChoiceButton(
                  number: computerNumber,
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  onpressed: (int) {},
                ),
              ],
            ),
            ChoiceButton(
              number: playerNumber,
              color: Theme.of(context).colorScheme.primaryContainer,
              onpressed: (int) {},
            ),
            Wrap(
              runSpacing: 4,
              spacing: 4,
              children: [
                ChoiceButton(
                  number: 0,
                  color: Theme.of(context).colorScheme.secondaryFixed,
                  onpressed: check,
                ),
                ChoiceButton(
                  number: 1,
                  color: Theme.of(context).colorScheme.secondaryFixed,
                  onpressed: check,
                ),
                ChoiceButton(
                  number: 2,
                  color: Theme.of(context).colorScheme.secondaryFixed,
                  onpressed: check,
                ),
                ChoiceButton(
                  number: 3,
                  color: Theme.of(context).colorScheme.secondaryFixed,
                  onpressed: check,
                ),
                ChoiceButton(
                  number: 4,
                  color: Theme.of(context).colorScheme.secondaryFixed,
                  onpressed: check,
                ),
                ChoiceButton(
                  number: 5,
                  color: Theme.of(context).colorScheme.secondaryFixed,
                  onpressed: check,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilledButton(
                    onPressed: () {
                      playerChoice = Choice.impar;
                    },
                    child: const Text('ÍMPAR')),
                FilledButton(
                    onPressed: () {
                      playerChoice = Choice.par;
                    },
                    child: const Text('PAR'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({
    super.key,
    required this.color,
    required this.number,
    this.onpressed,
  });

  final Color color;
  final int number;
  final void Function(int)? onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(32),
      onTap: () {
        onpressed!(number);
      },
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: color,
        ),
        child: Container(
          width: 100,
          height: 100,
          alignment: Alignment.center,
          child: Text(
            number.toString(),
            style: const TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.w900,
              fontFamily: 'Courrier',
            ),
          ),
        ),
      ),
    );
  }
}

enum Choice {
  par,
  impar;
}
