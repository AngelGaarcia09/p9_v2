import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la barrita roja de debug
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Angel Garcia",
            style: TextStyle(
                color: Color(0xb3050505), fontSize: 20), // Estilo del título
          ),
          centerTitle: true,
          backgroundColor: Colors.lime,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra las filas verticalmente
            children: <Widget>[
              Text(
                "Angel Garcia Mat:22308051281193",
                style: TextStyle(color: Color(0xb3050505), fontSize: 20),
              ),
              SizedBox(height: 40), // Espacio entre el texto y la primera fila
              // Primera fila
              buildIconRow(
                icons: [
                  IconWithLabel(
                      icon: Icons.star,
                      label: 'Favorito',
                      color: Colors.yellow),
                  IconWithLabel(
                      icon: Icons.favorite,
                      label: 'Me gusta',
                      color: Colors.red),
                  IconWithLabel(
                      icon: Icons.image, label: 'Imagen', color: Colors.green),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila
              buildIconRow(
                icons: [
                  IconWithLabel(
                      icon: Icons.tv,
                      label: 'television',
                      color: Colors.purple),
                  IconWithLabel(
                      icon: Icons.access_time,
                      label: 'reloj',
                      color: Colors.orange),
                  IconWithLabel(
                      icon: Icons.add_a_photo_sharp,
                      label: 'Camara',
                      color: Colors.blue),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para construir una fila de iconos
  Widget buildIconRow({required List<IconWithLabel> icons}) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center, // Centra los iconos en la fila
      children: icons
          .map((icon) => Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20), // Espacio entre los iconos
                child: icon,
              ))
          .toList(),
    );
  }
}

// Widget personalizado para un icono con subtítulo
class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconWithLabel({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color), // Usar el color personalizado
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
