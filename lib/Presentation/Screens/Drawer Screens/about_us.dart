import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  _launchSocialMedia(String profileUrl) async {
    if (await canLaunch(profileUrl)) {
      await launch(profileUrl);
    } else {
      throw 'Could not launch $profileUrl';
    }
  }

  void _handleLinkedInButtonPress() {
    _launchSocialMedia(
        'https://www.linkedin.com/in/davood-rasooli-40006b179/'); // Call the Future function here
  }

  void _handleGitHubButtonPress() {
    _launchSocialMedia(
        'https://github.com/RSLDVD/'); // Call the Future function here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              RichText(
          text: TextSpan(
              text: 'Flutter ',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).appBarTheme.titleTextStyle?.color,
              ),
              children: [
                const TextSpan(
                    text: 'Hot ',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFD71313),
                    )),
                TextSpan(
                    text: 'Collection',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context)
                            .appBarTheme
                            .titleTextStyle
                            ?.color)),
              ]),
        ),
        const SizedBox(height: 10),
        const CircleAvatar(
                radius: 35,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/ic_launcher192.png'),
              ),
              // Text(
              //   'Welcome to My Awesome App!',
              //   style: TextStyle(
              //       fontSize: 20,
              //       color: Colors.green,
              //       fontWeight: FontWeight.w300,
              //       fontFamily: 'Montserrat'),
              // ),
              const SizedBox(height: 10),
              //const SizedBox(height: 15),
              const Text(
                "Explore, Learn, and Code!",
                style: TextStyle(
                    fontSize: 22,
                    //color: Colors.pink,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "Dive into the world of Flutter widgets, packages, and code samples. Elevate your skills and understanding through hands-on experience.",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Stay Curious, Keep Coding!",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(height: 15),
              const Divider(thickness: 1),
              const CircleAvatar(
                radius: 55,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/2.png'),
              ),
              // Text(
              //   'Greetings!',
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.bold,
              //     fontFamily: 'Montserrat',
              //     color: Colors.blue, // Choose your preferred color
              //   ),
              // ),
              const SizedBox(height: 10),
              const Text(
                "I'm Davood Rasooli, a Mobile App Developer and passionate enthusiast of the Flutter framework and Dart language.",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 15),
               Text(
                'Join me on my journey!',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Allura',
                  fontWeight: FontWeight.bold,
                  color: Colors.pink.withOpacity(0.5),
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'Contact Us:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text('Email: rsldvd@gmail.com'),
              const Text('Phone: +989354973634'),
              const SizedBox(height: 20),
               const Divider(thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: _handleLinkedInButtonPress,
                    icon: SvgPicture.asset(
                      'assets/icons/linkedin-round-svgrepo-com.svg',
                      color: Theme.of(context).appBarTheme.iconTheme?.color,
                      width: 70,
                      height: 70,
                    ),
                  ),
                  IconButton(
                    onPressed: _handleGitHubButtonPress,
                    icon: SvgPicture.asset(
                      'assets/icons/github-142-svgrepo-com.svg',
                      color: Theme.of(context).appBarTheme.iconTheme?.color,
                      width: 70,
                      height: 70,
                    ),
                  ),
                
                ],
              ),
            ],
          )),
    );
  }
}
