import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Models/category.dart';
import 'package:flutter_hot/Providers/theme_provider.dart';
import 'package:provider/provider.dart';
import '../../../../Providers/category_provider.dart';
import '../Widgets/category_item.dart';

class CategoriesPageScreen extends StatefulWidget {
  const CategoriesPageScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesPageScreen> createState() => _CategoriesPageScreenState();
}

class _CategoriesPageScreenState extends State<CategoriesPageScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this, // Use "this" as the vsync parameter
      duration: const Duration(milliseconds: 300),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Category> categories = context.watch<CategoryProvider>().categoryData;

    return Scaffold(
      appBar: AppBar(
        actions: const [],
        //backgroundColor: const Color(0xfff8ffd8),
        title: const Text(
          'Flutter Hot Collection',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            //color: Color(0xff090088),
          ),
        ),
      ),
      drawer: Drawer(
        //width: MediaQuery.of(context).size.width * 4 / 5,
        // Add a Drawer widget here
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              margin: const EdgeInsets.only(bottom: 10),
              duration: const Duration(milliseconds: 377),
              decoration: BoxDecoration(
                color: Provider.of<ThemeProvider>(context, listen: false)
                        .isDarkMode
                    ? const Color(0xff1B262C)
                    : const Color(0xff91C8E4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Theme Mood',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      AnimatedSwitcher(
                        duration: const Duration(
                            milliseconds: 400), // Animation duration
                        child: Consumer<ThemeProvider>(
                          builder: (context, themeProvider, child) {
                            return Switch(
                              activeColor: Colors.cyan,
                              value: themeProvider.isDarkMode,
                              onChanged: (bool value) {
                                themeProvider.toggleTheme();
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 377),
                    child: FadeTransition(
                      key: ValueKey<bool>(
                          Provider.of<ThemeProvider>(context).isDarkMode),
                      opacity: Tween<double>(begin: 0.0, end: 1.0)
                          .animate(_animationController),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                            Provider.of<ThemeProvider>(context).isDarkMode
                                ? "assets/images/d_dark.jpg"
                                : "assets/images/d_light.jpg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text(
                'Flutter Hot Collection',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              onTap: () {
                // Handle Drawer item tap
              },
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                // Handle Drawer item tap
              },
            ),
            ListTile(
              title: const Text('Rate Us'),
              onTap: () {
                // Handle Drawer item tap
              },
            ),
            ListTile(
              title: const Text('Share App'),
              onTap: () {
                // Handle Drawer item tap
              },
            ),
            ListTile(
              title: const Text('Privacy Policy'),
              onTap: () {
                // Handle Drawer item tap
              },
            ),
            ListTile(
              title: const Text('Terms & Conditions'),
              onTap: () {
                // Handle Drawer item tap
              },
            ),
            // Add more ListTiles for additional items
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 8 / 11,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0),
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryItem(
            id: categories[index].id,
            title: categories[index].title,
            //color: categories[index].color,
            imagePath: categories[index].imagePath),
      ),
    );
  }
}
