import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width > 500;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: isWideScreen
            ? const WideScreenProfile() // Landscape layout
            : const NarrowScreenProfile(), // Portrait layout
      ),
    );
  }
}


class WideScreenProfile extends StatelessWidget {
  const WideScreenProfile({super.key});

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
                const Text(
                  'Arafat Rahman',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 200, // Fixed height to enable scrolling
                  child: ListView(
                    children: const [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16),
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
                            child: Image.network(
                              'https://picsum.photos/250?image=10',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=11',
                              fit: BoxFit.cover,
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=12',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add more ResponsiveGridCol for additional rows of images
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
                            child: Image.network(
                              'https://picsum.photos/250?image=10',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=11',
                              fit: BoxFit.cover,
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=12',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add more ResponsiveGridCol for additional rows of images
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
                            child: Image.network(
                              'https://picsum.photos/250?image=10',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=11',
                              fit: BoxFit.cover,
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=12',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add more ResponsiveGridCol for additional rows of images
                  ],
                ),
                // Continue adding ResponsiveGridRow for more rows of images
              ],
            ),
          ),
        ),
      ],
    );
  }
}




class NarrowScreenProfile extends StatelessWidget {
  const NarrowScreenProfile({super.key});

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
          const SizedBox(height: 16),
          const Text(
            'Arafat Rahman',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 280, // Fixed height to enable scrolling
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
                            child: Image.network(
                              'https://picsum.photos/250?image=10',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=11',
                              fit: BoxFit.cover,
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=12',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add more ResponsiveGridCol for additional rows of images
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
                            child: Image.network(
                              'https://picsum.photos/250?image=10',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=11',
                              fit: BoxFit.cover,
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=12',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add more ResponsiveGridCol for additional rows of images
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
                            child: Image.network(
                              'https://picsum.photos/250?image=10',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=11',
                              fit: BoxFit.cover,
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child: Image.network(
                              'https://picsum.photos/250?image=12',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add more ResponsiveGridCol for additional rows of images
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
