import 'package:flutter/material.dart';
import 'package:flutter_hot/Providers/theme_provider.dart';
import 'package:provider/provider.dart';

class AnimSwitch extends StatefulWidget {
  const AnimSwitch({Key? key}) : super(key: key);

  @override
  _AnimSwitchState createState() => _AnimSwitchState();
}

class _AnimSwitchState extends State<AnimSwitch>
    with SingleTickerProviderStateMixin {
  final Duration _duration = const Duration(milliseconds: 177);
  late Animation<Alignment> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _duration);
    _animation =
        AlignmentTween(begin: Alignment.centerLeft, end: Alignment.centerRight)
            .animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Curves.bounceOut,
          reverseCurve: Curves.bounceIn),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }

            //final themeProvider=Provider.of<ThemeProvider>(context, listen: false);
            themeProvider.toggleTheme();
          });
        },
        child: Container(
          width: 90,
          height: 35,
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          decoration: BoxDecoration(
            image: themeProvider.isDarkMode
                ? const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/darknight8.gif'))
                : const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/lightsky.gif')),
            //color: isChecked ? Colors.amber.withOpacity(0.38) : Colors.black38,
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            boxShadow: [
              BoxShadow(
                color: themeProvider.isDarkMode
                    ? Colors.black.withOpacity(0.38)
                    : Colors.black38,
                blurRadius: 0.5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Stack(
            //alignment: Alignment.bottomCenter,
            children: <Widget>[
              Align(
                alignment: _animation.value ,//* 1.2,
                child: RotationTransition(
                  //alignment: Alignment.center,
                  turns: _animationController,
                  child: Container(
                    width: 28,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.38),
                          blurRadius: 0.5,
                          offset: const Offset(0, 1.5),
                        )
                      ],
                      //color: Colors.white,
                    ),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: themeProvider.isDarkMode
                            ? const AssetImage("assets/images/d_dark.jpg")
                            : const AssetImage("assets/images/d_light.jpg")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
