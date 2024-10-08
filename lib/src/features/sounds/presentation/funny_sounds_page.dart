import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FunnySoundsPage extends StatefulWidget {
  const FunnySoundsPage({super.key});

  @override
  State<FunnySoundsPage> createState() => _FunnySoundsPageState();
}

class _FunnySoundsPageState extends State<FunnySoundsPage> {
  int _selectIndex = 0;

  static void playAudio(String asset) {}

  List<Widget> pages = [
    Wrap(
      spacing: 4,
      runSpacing: 4,
      alignment: WrapAlignment.center,
      children: [
        SoundFunnyButton(text: 'Minecraft', asset: '', callback: playAudio),
        SoundFunnyButton(text: 'Mario World', asset: '', callback: playAudio),
        SoundFunnyButton(text: 'Sonic', asset: '', callback: playAudio),
        SoundFunnyButton(text: 'Pac Man', asset: '', callback: playAudio),
        SoundFunnyButton(text: 'River Raid', asset: '', callback: playAudio),
        SoundFunnyButton(text: 'Enduro', asset: '', callback: playAudio),
        SoundFunnyButton(text: 'Metal Slug', asset: '', callback: playAudio),
      ],
    ),
    Container(
      child: ListView(
        children: [
          ListTile(
            onTap: () {},
            leading: FaIcon(FontAwesomeIcons.plane),
            title: Text('River Raid'),
            subtitle: Text('Jogo do aviãozinho'),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark)),
              IconButton(onPressed: () {}, icon: Icon(Icons.email)),
            ],
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  title: Text('Name'),
                  subtitle: Text('email@domain.com'),
                ),
                Container(
                  height: 200,
                  color: Colors.red.shade200,
                ),
                OverflowBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.bookmark)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.email)),
                  ],
                ),
                Container(
                  height: 200,
                  color: Colors.orange.shade200,
                ),
                Container(
                  height: 200,
                  color: Colors.green.shade200,
                ),
                Container(
                  height: 200,
                  color: Colors.red.shade200,
                ),
                Container(
                  height: 200,
                  color: Colors.yellow.shade200,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      child: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 16 / 9,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Item ${index + 1}'),
            ),
          );
        },
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Expanded(child: pages[_selectIndex])),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.heart),
            label: 'Favoritos',
            selectedIcon: FaIcon(FontAwesomeIcons.solidHeart),
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.faceSmile),
            label: 'Super',
            selectedIcon: FaIcon(FontAwesomeIcons.solidFaceSmile),
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.faceLaugh),
            label: 'Engraçado',
            selectedIcon: FaIcon(FontAwesomeIcons.solidFaceLaugh),
          ),
        ],
      ),
    );
  }
}

class SoundFunnyButton extends StatelessWidget {
  const SoundFunnyButton({
    super.key,
    this.width = 125,
    this.height = 125,
    required this.text,
    required this.asset,
    required this.callback,
  });

  final double width;
  final double height;
  final String text;
  final String asset;
  final void Function(String) callback;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: () {
            callback(asset);
          },
          child: Text(text),
        ),
      ),
    );
  }
}
