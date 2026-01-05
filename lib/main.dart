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

  Widget cartaPage({
    required String titulo,
    required String texto,
    String? imagePath,        // imagen dentro de la página
    String? backgroundPath,   // fondo de la página
  }) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: backgroundPath != null
          ? BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundPath),
          fit: BoxFit.cover, // ajusta la imagen a toda la pantalla
        ),
      )
          : null, // si no hay fondo, mantiene el color
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontFamily: 'GreatVibes',
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text(
              texto,
              style: const TextStyle(
                fontSize: 25,
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
            if (imagePath != null) ...[
              const SizedBox(height: 32),
              Image.asset(
                imagePath,
                height: 220,
                fit: BoxFit.cover,
              ),
            ],
          ],
        ),
      ),
    );
  }



  late List<Widget> pages = [
    // ------------- PORTADA -------------
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fotos/portadaCartaLaura.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          'Carta para Laura',
          style: TextStyle(
            fontFamily: 'GreatVibes',
            color: const Color(0xFFEDD083),
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


    // ------------- PÁGINA 1 -------------
    cartaPage(
      titulo: 'Laura,',
      texto: '''
Quería escribirte esto con calma, sin hacerlo demasiado perfecto, porque lo nuestro tampoco lo es. Y creo que precisamente por eso funciona.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',

      //imagePath: 'assets/fotos/foto1.jpg',
    ),

    // ------------- PÁGINA 2 -------------
    cartaPage(
      titulo: '',
      texto: '''
Desde el principio me enamoré de ti por cómo eres y por cómo me tratas. Desde el minuto uno sentí que solo tenías ojos para mí, y eso es algo que nunca he dado por hecho. Cuatro años después, sigo valorándolo igual o incluso más.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',

    ),

    // ------------- PÁGINA 3 -------------
    cartaPage(
      titulo: 'Nuestros viajes',
      texto: '''
Nuestra relación es divertida, a veces caótica, con piques, bromas y discusiones tontas. Nos chinchamos bastante, discutimos cuando toca, pero siempre acabamos hablando y arreglando las cosas. Y eso dice mucho de nosotros.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',
    ),

    // ------------- PÁGINA 4 -------------
    cartaPage(
      titulo: 'Lo que admiro de ti',
      texto: '''
Hemos compartido muchos momentos juntos. Viajes que se han quedado grabados para siempre: Londres, que ha sido nuestro mejor viaje; Fuerteventura en verano; Andorra varias veces; Madrid; Sevilla. Cada sitio ha sido especial por algo, pero sobre todo porque lo he vivido contigo.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',

    ),

    // ------------- PÁGINA 5 -------------
    cartaPage(
      titulo: '',
      texto: '''
Admiro mucho tu dedicación. Cómo te esfuerzas en todo lo que haces, cómo te exiges y das lo mejor de ti, incluso cuando no te das cuenta de lo mucho que vales. A veces eres demasiado perfeccionista contigo misma y te valoras menos de lo que deberías, y ojalá pudiera hacerte ver lo increíble que eres desde fuera.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',

    ),

    // ------------- PÁGINA 6 -------------
    cartaPage(
      titulo: 'Recuerda esto',
      texto: '''
Me siento muy afortunado por cómo me cuidas, por cómo me apoyas y por cómo sabes sacarme una sonrisa incluso en los días malos. Saber que estás ahí en los momentos difíciles, y que pase lo que pase siempre estás a mi lado, es algo que me da mucha tranquilidad.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',

    ),

    // ------------- PÁGINA 7 (CIERRE) -------------
    cartaPage(
      titulo: '',
      texto: '''
Hay cosas que quiero que no se te olviden. No tienes que ser perfecta para que te quiera, porque ya lo hago. Eres suficiente tal y como eres, incluso en los días en los que tú no lo ves. Y te elijo cada día, incluso cuando nos picamos o discutimos.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',

    ),

    cartaPage(
      titulo: '',
      texto: '''
  No sé qué nos deparará el futuro, pero sí sé que quiero seguir compartiéndolo contigo: seguir viajando, riendo, discutiendo cuando toque y arreglando las cosas juntos.
''',
      backgroundPath: 'assets/fotos/pergaminoCartaLaura.jpg',

    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fotos/portadaCartaLaura.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          '''
Gracias por ser tú.
Siempre contigo.''',
          style: TextStyle(
            fontFamily: 'GreatVibes',
            color: const Color(0xFFEDD083),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pages[_currentPage], // Página actual
          // Enlazamos los botones de navegación
          if (_currentPage > 0)
            Positioned(
              bottom: 20,
              left: 20,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _currentPage--;
                  });
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
                  setState(() {
                    _currentPage++;
                  });
                },
                child: Text(_currentPage == 0 ? 'Abrir carta' : 'Siguiente'),
              ),
            ),
        ],
      ),
    );
  }
}
