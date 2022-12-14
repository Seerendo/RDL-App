import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(color: Colors.indigo),
              child: Column(
                children: [
                  Row(
                    /* crossAxisAlignment: CrossAxisAlignment.start, */
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        // ignore: sized_box_for_whitespace
                        child: Container(
                          width: 60,
                          height: 60,
                          child: const FadeInImage(
                              placeholder: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/1006/4778/t/18/assets/loading.gif?v=157493769327766696621656006891'),
                              image: NetworkImage(
                                  'https://www.famousbirthdays.com/headshots/john-duchac-9.jpg')),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints(maxWidth: size.width * 0.42),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Ing. John Doe',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                'Ingeniero de Procesos',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Cerrar Sesión'),
          ),
        ],
      ),
    );
  }
}
