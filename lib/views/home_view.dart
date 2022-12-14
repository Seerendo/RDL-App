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
      children: [
        _CardWidget(
            widgetInput: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: AssetImage('assets/visualizar.png'),
                height: 100,
                width: 100,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(child: Text('Especificaciones')),
          ],
        )),
        _CardWidget(
            widgetInput: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: AssetImage('assets/crear.png'),
                height: 100,
                width: 100,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(child: Text('Crear Especificación')),
          ],
        )),
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
