import 'package:flutter/material.dart';

class Typography1 extends StatefulWidget {
  const Typography1({Key? key}) : super(key: key);

  @override
  State<Typography1> createState() => _Typography1State();
}

class _Typography1State extends State<Typography1> {
  late final TextTheme textTheme = Theme.of(context).textTheme;
  late final _styles = <String, TextStyle>{
    'headline1': textTheme.displayLarge!,
    'headline2': textTheme.displayMedium!,
    'headline3': textTheme.displaySmall!,
    'headline4': textTheme.headlineMedium!,
    'headline5': textTheme.headlineSmall!,
    'headline6': textTheme.titleLarge!,
    'subtitle1': textTheme.titleMedium!,
    'subtitle2': textTheme.titleSmall!,
    'bodyText1': textTheme.bodyLarge!,
    'bodyText2': textTheme.bodyMedium!,
    'button': textTheme.labelLarge!,
    'caption': textTheme.bodySmall!,
    'overline': textTheme.labelSmall!,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Typography'),
      ),
      body:  ListView(
        children: [
          for (final e in _styles.entries)
            ListTile(title: Text(e.key, style: e.value)),
        ],
      ),
    );
  }
}
