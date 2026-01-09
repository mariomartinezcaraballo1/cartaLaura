import 'package:flutter/material.dart';

void main() {
  runApp(const CartaApp());
}

class CartaApp extends StatelessWidget {
  const CartaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carta para Laura',
      debugShowCheckedModeBanner: false,
      home: const CartaPage(),
    );
  }
}

class CartaPage extends StatefulWidget {
  const CartaPage({super.key});

  @override
  State<CartaPage> createState() => _CartaPageState();
}

class _CartaPageState extends State<CartaPage> {
  int _currentPage = 0;

  // ------------------ PÁGINA DE TEXTO ------------------
  Widget cartaPage({
    required String titulo,
    required String texto,
    String? backgroundPath,
  }) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: backgroundPath != null
          ? BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundPath),
          fit: BoxFit.cover,
        ),
      )
          : null,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (titulo.isNotEmpty)
              Text(
                titulo,
                style: const TextStyle(
                  fontFamily: 'GreatVibes',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            if (titulo.isNotEmpty) const SizedBox(height: 24),
            Text(
              texto,
              style: const TextStyle(
                fontSize: 25,
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // ------------------ PÁGINA DE IMAGEN ------------------
  Widget imagePage({
    required String imagePath,
    String? backgroundPath,
  }) {
    return Container(
      decoration: backgroundPath != null
          ? BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundPath),
          fit: BoxFit.cover,
        ),
      )
          : null,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300,   // ancho máximo de la imagen
            maxHeight: 400,  // alto máximo de la imagen
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16), // bordes suaves (opcional)
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }


  // ------------------ LISTA DE PÁGINAS ------------------
  late final List<Widget> pages = [
    // ----------- PORTADA -----------
    Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fotos/portadaCartaLaura.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Text(
          'Carta para Laura',
          style: TextStyle(
            fontFamily: 'GreatVibes',
            color: Color(0xFFEDD083),
            fontSize: 50,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black45,
                offset: Offset(2, 2),
                blurRadius: 4,
              )
            ],
          ),
        ),
      ),
    ),

    // ----------- PÁGINA 1 -----------
    cartaPage(
      titulo: 'Laura,',
      texto: '''
Quería escribirte esto con calma, sin hacerlo demasiado perfecto, porque lo nuestro tampoco lo es. Y creo que precisamente por eso funciona.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    imagePage(
      imagePath: 'assets/fotos/foto5.png',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    // ----------- PÁGINA 2 -----------
    cartaPage(
      titulo: '',
      texto: '''
Desde el principio me enamoré de ti por cómo eres y por cómo me tratas. Desde el minuto uno sentí que solo tenías ojos para mí, y eso es algo que siempre he tenido claro. Cuatro años después, sigo valorándolo igual o incluso más.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    // ----------- PÁGINA 3 -----------
    cartaPage(
      titulo: '',
      texto: '''
Nuestra relación es divertida, a veces caótica, con piques, bromas y discusiones tontas. Nos chinchamos bastante, discutimos cuando toca, pero siempre acabamos hablando y arreglando las cosas. Y eso dice mucho de nosotros.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),


    // ----------- PÁGINA 4 -----------
    cartaPage(
      titulo: 'Nuestros viajes',
      texto: '''
Hemos compartido muchos momentos juntos. Viajes que se han quedado grabados para siempre: Londres, Fuerteventura, Andorra, Madrid, Sevilla. Cada sitio ha sido especial por algo, pero sobre todo porque lo he vivido contigo.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    imagePage(
      imagePath: 'assets/fotos/foto4.jpeg',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    // ----------- PÁGINA 5 -----------
    cartaPage(
      titulo: 'Lo que admiro de ti',
      texto: '''
Admiro mucho tu dedicación. Cómo te esfuerzas en todo lo que haces, cómo te exiges y das lo mejor de ti, incluso cuando no te das cuenta de lo mucho que vales.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    // ----------- PÁGINA 6 -----------
    cartaPage(
      titulo: 'Recuerda esto',
      texto: '''
Me siento muy afortunado por cómo me cuidas, por cómo me apoyas y por cómo sabes sacarme una sonrisa incluso en los días malos.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    imagePage(
      imagePath: 'assets/fotos/foto3.jpeg',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    // ----------- PÁGINA 7 -----------
    cartaPage(
      titulo: '',
      texto: '''
Hay cosas que quiero que no se te olviden. No tienes que ser perfecta para que te quiera, porque ya lo hago. Y te elijo cada día.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    imagePage(
      imagePath: 'assets/fotos/foto2.jpeg',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    // ----------- PÁGINA FINAL -----------
    cartaPage(
      titulo: '',
      texto: '''
No sé qué nos deparará el futuro, pero sí sé que quiero seguir compartiéndolo contigo.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    imagePage(
      imagePath: 'assets/fotos/fotoFinal.jpeg',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fotos/portadaCartaLaura.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Text(
          'Gracias por ser tú.\nSiempre contigo.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'GreatVibes',
            color: Color(0xFFEDD083),
            fontSize: 50,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black45,
                offset: Offset(2, 2),
                blurRadius: 4,
              )
            ],
          ),
        ),
      ),
    ),
  ];

  // ------------------ UI ------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pages[_currentPage],
          if (_currentPage > 0)
            Positioned(
              bottom: 20,
              left: 20,
              child: ElevatedButton(
                onPressed: () {
                  setState(() => _currentPage--);
                },
                child: const Text('Atrás'),
              ),
            ),
          if (_currentPage < pages.length - 1)
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  setState(() => _currentPage++);
                },
                child: Text(_currentPage == 0 ? 'Abrir carta' : 'Siguiente'),
              ),
            ),
        ],
      ),
    );
  }
}
