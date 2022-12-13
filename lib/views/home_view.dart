import 'package:flutter/material.dart';
import 'package:rdl_app/exports/components.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerComponent(),
      appBar: AppBar(),
      body: const _GridWidget(),
    );
  }
}

class _GridWidget extends StatelessWidget {
  const _GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: const [
        _CardWidget(widgetInput: Center(child: Text('Físico Químicas'))),
        _CardWidget(
            widgetInput: Center(child: Text('Sensoriales/Funcionales'))),
        _CardWidget(widgetInput: Center(child: Text('Microbiológicos'))),
        _CardWidget(widgetInput: Center(child: Text('Contaminantes'))),
      ],
    );
  }
}

class _CardWidget extends StatelessWidget {
  final Widget widgetInput;
  const _CardWidget({super.key, required this.widgetInput});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: widgetInput,
      margin: EdgeInsets.all(2),
    );
  }
}
