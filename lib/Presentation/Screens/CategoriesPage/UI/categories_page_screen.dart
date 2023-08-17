import 'package:flutter/material.dart';
import 'package:flutter_hot/Action/anim_switch.dart';
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
    // _animationController = AnimationController(
    //   vsync: this, // Use "this" as the vsync parameter
    //   duration: const Duration(milliseconds: 300),
    // );
    // _animationController.forward();
  }

  @override
  void dispose() {
    // _animationController.dispose();
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
              //duration: const Duration(milliseconds: 377),
              decoration: const BoxDecoration(
                image: DecorationImage(

                  image: AssetImage("assets/images/sleepycat.gif",),
                  fit: BoxFit.fill
                  ),
                  
                // color: Provider.of<ThemeProvider>(context, listen: false)
                //         .isDarkMode
                //     ? const Color(0xff1B262C)
                //     : const Color(0xff91C8E4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Theme Mood',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                       Consumer<ThemeProvider>(
                          builder: (context, themeProvider, _) {
                            return   AnimSwitch();
                          },
                        ),
                      
                    ],
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
            subtitle: categories[index].subtitle.toList(),
            imagePath: categories[index].imagePath),
      ),
    );
  }
}
