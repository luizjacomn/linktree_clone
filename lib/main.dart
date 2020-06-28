import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

const imageURL =
    'https://scontent.ffor23-1.fna.fbcdn.net/v/t1.0-9/40652586_1417070448396703_6860767577375768576_n.jpg?_nc_cat=103&_nc_sid=09cbfe&_nc_ohc=Zj0lWBYDZ8kAX_OTXi2&_nc_ht=scontent.ffor23-1.fna&oh=9c660a21cc1c4662ac3928c0992bc8d2&oe=5F1EFE0D';

const flutterLogo =
    'https://www.neappoli.com/static/flutterImg-94b8139a9f1f2c226184af4106495c66.png';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '@luizjacomn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LinksLandingPage(),
    );
  }
}

class LinksLandingPage extends StatelessWidget {
  const LinksLandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const SizedBox(height: 32.0),
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: imageURL,
            height: 100.0,
            width: 100.0,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('@luizjacomn'),
          ),
          const SizedBox(height: 32.0),
          LinkButton(
            title: 'Github',
            url: 'https://github.com/luizjacomn',
          ),
          LinkButton(
            title: 'Linkedin',
            url: 'https://www.linkedin.com/in/luizjacomn/',
          ),
          LinkButton(
            title: 'flutter_util_widgets',
            url: 'https://pub.dev/packages/flutter_util_widgets',
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Made in Flutter'),
              const SizedBox(width: 8.0),
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: flutterLogo,
                height: 24.0,
                width: 24.0,
              ),
            ],
          ),
          const SizedBox(height: 24.0),
        ],
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  final String title;
  final String url;

  const LinkButton({
    Key key,
    @required this.title,
    @required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var maxWidth = 600.0;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        width: size.width > maxWidth ? 600.0 : size.width * 0.95,
        child: FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          onPressed: () => launch(url),
          color: Colors.greenAccent,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
