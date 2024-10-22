import 'package:flutter/material.dart';
import 'package:te_quiero/models/models.dart';

class ProviderFotoTexto extends ChangeNotifier {
  final List<FotoTexto> _listaFotoTexto = [];
  String texto = '';
  int _indice = 0;

  ProviderFotoTexto() {
    inicializarLista();
  }

  void inicializarLista() {
    _listaFotoTexto.add(FotoTexto('cambrilsFotoRoca.jpg',
        'Holi amor ☺, he recopilado fotitos en las que salimos juntos. Es para que recuerdes que este idiota te quiere mucho ❤'));
    //_listaFotoTexto.add(FotoTexto('discordSonrisa.jpg', ''));
    _listaFotoTexto.add(FotoTexto('preciosa.jpg',
        'Amo todas esas noches de discord en las que estamos hasta tarde ☺'));

    _listaFotoTexto.add(FotoTexto('pilarCovid.jpg',
        'Te acuerdas de esa etapa con mascarilla que nos comimos, menos mal que eso ha cambiado 🙄'));

    _listaFotoTexto.add(FotoTexto('plazaAragon.jpg',
        'Esos paseos independecia arriba, independencia abajo ☺️'));

    _listaFotoTexto.add(FotoTexto('marcosBufanda.jpg',
        'Por no recordar todos esos momentos en los que me la has liado 🙄'));

    _listaFotoTexto.add(FotoTexto(
        'alLadoDeTuTia.jpeg', 'Todas esas horas que pasamos hablando ☺️'));

    _listaFotoTexto.add(FotoTexto('cremaEspejo.jpg',
        'Todas esas fotos a traición que todavía no te he tomado 🤗'));

    _listaFotoTexto.add(FotoTexto('novioIdiota.jpg',
        'Esta cosa idiota de novio va a estar siempre a tu lado 🙄'));

    _listaFotoTexto.add(FotoTexto('beso.jpg',
        'Y es que no importa donde nos encontremos, siempre tendras mis besos 😘'));

//Conocerte ha sido lo más bonito

    //Pitarque
    _listaFotoTexto.add(FotoTexto('pitarque.jpg',
        'Recuerdo a la perfección este viaje, y le tengo un cariño impresionante ☺️'));

    //Pirineo
    _listaFotoTexto.add(FotoTexto('pirineo.jpg',
        'Aun faltan muchas rutas por el pirineo por conquistar 🙃'));

    //Jaca
    _listaFotoTexto.add(FotoTexto('jaca.jpg',
        'Eso sí, siempre llegaremos tarde a casa, aunque no paremos a comer en Jaca 😅'));

    //Excursiones
    _listaFotoTexto.add(FotoTexto(
        'pozoChorros.jpg', 'Me encanta cuando pones esa carita de mala 😈'));

    _listaFotoTexto.add(FotoTexto('marcosCascada.jpg',
        'No se quién me había mojado tanto la camiseta 🙄'));

    _listaFotoTexto
        .add(FotoTexto('patriCascada.jpg', 'Me muero por ver esa sonrisa 😊'));

    _listaFotoTexto.add(FotoTexto(
        'graduacion2.jpg', 'Nunca me cansaré de tomarte estas fotos 😍'));

    //Cambrils
    _listaFotoTexto.add(FotoTexto(
        'cambrils.jpg', 'Aqui falta un Ben & Jerry\'s, por lo menos 🙄'));

    _listaFotoTexto.add(FotoTexto(
        'amanecerCambrils2.jpg', 'Me llevas a sitios realmente preciosos 😊'));

    _listaFotoTexto.add(
        FotoTexto('kadrit.jpg', 'Eso sí, que me dices de una noche así? 😁'));

    //Sitges
    _listaFotoTexto.add(FotoTexto('sitges.jpeg',
        'Me apetece un besito como ese bajo la luna, no importa cuando leas esto 🤭'));

    //Panticosa
    _listaFotoTexto.add(FotoTexto('pasarelas.jpg',
        'Nunca me dejas hacerte fotos 😟, no te das cuenta lo preciosa que eres? 😊'));

    //Mallorca
    _listaFotoTexto.add(FotoTexto('avion1.jpg',
        'Por supuesto como olvidar el vuelo a Mallorca en el que me sostuviste la mano 🤗'));

    _listaFotoTexto.add(FotoTexto(
        'parcDeLaMar.jpg', 'O esa excursión a Palma deshidratados 😅'));

    _listaFotoTexto
        .add(FotoTexto('calaDificil.jpg', 'O la cala anti-snorkel 😅'));

    _listaFotoTexto.add(FotoTexto(
        'calaAtacante.jpg', 'O también la cala asesina de novios 😢'));

    _listaFotoTexto.add(FotoTexto('sacalobraNovia.jpg',
        'Por no decir los intentos de mojar a tu novio en cada sitio al que vamos 🙄'));

    _listaFotoTexto.add(FotoTexto('mallorcaPlayaNoche.jpg',
        'Estas aventuras nocturnas en la playa no se me olvidarán nunca y al mosntruito de las aguas tampoco 🤗🙄'));

    _listaFotoTexto.add(FotoTexto('sacalobraNovio.jpg',
        'Esta claro que no soy el único que hace fotos a traición 🙄'));

    _listaFotoTexto.add(FotoTexto('montañaLuces.jpg',
        'El pasaje a través de la montaña era precioso pero resbalaba que no veas 😅'));

    //Valencia
    _listaFotoTexto
        .add(FotoTexto('valenciaAgua.jpg', 'Haciendo cosas de ilegales 🧐'));

    _listaFotoTexto.add(FotoTexto('fisicaOQuimica.jpg',
        'Tienes un novio que te toca Física o Química antes que Lola Índigo, pero todo es negociable 🙄❤️'));

    _listaFotoTexto.add(FotoTexto('cocheBarro.jpeg',
        'Hemos aprendido que no todo sale como lo planeamos. A veces toca mancharse las manos 😅. Pero ahí estábas tu para apoyarme ❤️'));

    _listaFotoTexto.add(FotoTexto('retrovisor.jpg',
        'Estaré contigo siempre, pase lo que pase, para cuidarte ☺️'));

//animales
    _listaFotoTexto.add(
        FotoTexto('patos.jpg', 'Me introduciste al mundo de los animales 😄'));

    _listaFotoTexto.add(
        FotoTexto('refuAntiguo.jpeg', 'Aunque al principio no fue fácil 😕'));

    _listaFotoTexto.add(FotoTexto('caballito.jpg',
        'Sigue habiendo algunos que me dan un poquito de miedo 😬'));

    _listaFotoTexto.add(FotoTexto('gatitosTiendaAnimal.jpg',
        'Pero definitivamente con los gatitos me tienes ganado 🙄'));

    _listaFotoTexto.add(FotoTexto('entreHierba.jpg',
        'Que sepas que tengo pruebas de tu intento de camuflaje entre la maleza 🙄'));

    _listaFotoTexto.add(FotoTexto(
        'pillada.jpg', 'Novia salvaje apareció e intentó comerme 🙄'));

    _listaFotoTexto
        .add(FotoTexto('dedito.jpg', 'Pillada siendo no tan buena 😤'));

    _listaFotoTexto.add(FotoTexto(
        'discordMimida.jpg', 'Aunque luego te veo mimida y me derrito 🤭'));

    _listaFotoTexto.add(FotoTexto('novioIdiota3.jpg',
        'Tengo que poner alguna foto mía también que si no me haces monopolio 🙄'));

    _listaFotoTexto.add(FotoTexto(
        'fotografa.jpg', 'Definitivamente eres mi fotógrafa preferida 😍'));

//amanecer
    _listaFotoTexto.add(FotoTexto('amanecerCambrils.jpg',
        'Tal vez me deje convencer para ver el amanecer 😍'));

//Siempre hay vueltas
    _listaFotoTexto.add(FotoTexto('avion2.jpg',
        'Lamentablemente no siempre podemos estar de aventuras y hay que volver a casa 😥'));
//bañito
    _listaFotoTexto.add(FotoTexto('bañito.jpg',
        'A pesar de todo siempre nos quedarán estos momentos 😍'));

//fin
    _listaFotoTexto.add(FotoTexto('retrovisorSol.jpg',
        'Espero que este recopilatorio pueda ayudarte en todos esos momentos duros. Te quiero mucho cielo 😊❤️'));

    notifyListeners();
  }

  get listaFotoTexto {
    return _listaFotoTexto;
  }

  void getTextoSegunIndice(int indice) {
    texto = _listaFotoTexto[indice].texto;
    notifyListeners();
  }

  int get indice {
    return _indice;
  }

  set indice(int i) {
    _indice = i;
    notifyListeners();
  }
}
