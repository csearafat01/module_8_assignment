import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width > 500;

    return Scaffold(
      backgroundColor: (Colors.grey.shade200),
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: isWideScreen
            ? const LandScapeScreenProfile() // Landscape layout
            : const PortraitScreenProfile(), // Portrait layout
      ),
    );
  }
}


class LandScapeScreenProfile extends StatelessWidget {
  const LandScapeScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
            radius: 180,
            backgroundImage: NetworkImage(
              'https://picsum.photos/250?image=9',
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Arafat Rahman',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100, // Fixed height to enable scrolling
                  child: ListView(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xs: 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.network(
                                'https://picsum.photos/250?image=10',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.network(
                                'https://picsum.photos/250?image=11',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.network(
                                'https://picsum.photos/250?image=12',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xs: 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.network(
                                'https://picsum.photos/250?image=13',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.network(
                                'https://picsum.photos/250?image=14',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.network(
                                'https://picsum.photos/250?image=15',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xs: 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.network(
                                'https://picsum.photos/250?image=16',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.network(
                                'https://picsum.photos/250?image=17',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.network(
                                'https://picsum.photos/250?image=18',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
class PortraitScreenProfile extends StatelessWidget {
  const PortraitScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 180,
              backgroundImage: NetworkImage(
                'https://picsum.photos/250?image=9',
              ),
            ),
          ),
          const Text(
            'Arafat Rahman',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 280,
              child: ListView(
                children: [
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16),
                  ),
                  ResponsiveGridRow(
                    children: [
                      ResponsiveGridCol(
                        xs: 12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.network(
                                  'https://picsum.photos/250?image=10',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.network(
                                  'https://picsum.photos/250?image=11',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.network(
                                  'https://picsum.photos/250?image=12',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ResponsiveGridRow(
                    children: [
                      ResponsiveGridCol(
                        xs: 12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.network(
                                  'https://picsum.photos/250?image=13',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.network(
                                  'https://picsum.photos/250?image=14',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.network(
                                  'https://picsum.photos/250?image=15',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ResponsiveGridRow(
                    children: [
                      ResponsiveGridCol(
                        xs: 12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.network(
                                  'https://picsum.photos/250?image=16',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.network(
                                  'https://picsum.photos/250?image=17',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.network(
                                  'https://picsum.photos/250?image=18',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
