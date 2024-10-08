import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  const InputsPage({super.key});

  @override
  State<InputsPage> createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  bool switchValue = false;
  double _sliderValue = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Quais botões utlizar?',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(width: double.maxFinite),
            FilledButton(onPressed: () {}, child: Text('FiledButton')),
            FilledButton.tonal(onPressed: () {}, child: Text('FiledButton')),
            ElevatedButton(onPressed: () {}, child: Text('ElevatedButton')),
            TextButton(onPressed: () {}, child: Text('TextButton')),
            OutlinedButton(onPressed: () {}, child: Text('OutlinedButton')),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Botões com ícones?',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            FilledButton.icon(
              onPressed: () {},
              label: Text('FiledButton'),
              icon: Icon(Icons.favorite),
            ),
            FilledButton.tonalIcon(
              onPressed: () {},
              label: Text('FiledButton'),
              icon: Icon(Icons.favorite),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('ElevatedButton'),
              icon: Icon(Icons.favorite),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text('TextButton'),
              icon: Icon(Icons.favorite),
            ),
            OutlinedButton.icon(
              iconAlignment: IconAlignment.end,
              onPressed: () {},
              label: Text('OutlinedButton'),
              icon: Icon(Icons.favorite),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Apenas ícones?',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Wrap(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                IconButton.filled(onPressed: () {}, icon: Icon(Icons.favorite)),
                IconButton.outlined(
                    onPressed: () {}, icon: Icon(Icons.favorite)),
                IconButton.filledTonal(
                    onPressed: () {}, icon: Icon(Icons.favorite)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Quais widgets de selação única devo utilizar?',
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
            Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            Slider(
              label: '${_sliderValue}',
              min: 1,
              max: 10,
              divisions: 10,
              value: _sliderValue,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
