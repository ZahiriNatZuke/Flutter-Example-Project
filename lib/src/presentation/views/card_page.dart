import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        children: <Widget>[
          _cardType1(),
          const SizedBox(height: 30.0),
          _cardType2(),
          const SizedBox(height: 30.0),
          _cardType1(),
          const SizedBox(height: 30.0),
          _cardType2(),
          const SizedBox(height: 30.0),
          _cardType1(),
          const SizedBox(height: 30.0),
          _cardType2(),
          const SizedBox(height: 30.0),
          _cardType1(),
          const SizedBox(height: 30.0),
          _cardType2(),
          const SizedBox(height: 30.0),
          _cardType1(),
          const SizedBox(height: 30.0),
          _cardType2(),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('At augue eget arcu dictum varius'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _textButton('Cancel'),
              _textButton('Accept'),
              const SizedBox(width: 20.0)
            ],
          )
        ],
      ),
    );
  }

  TextButton _textButton(String label) {
    return TextButton(
        onPressed: () {},
        child: Text(label),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(20.0),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ));
  }

  Widget _cardType2() {
    final card = Column(
      children: <Widget>[
        const FadeInImage(
          image: NetworkImage(
              'https://www.trajdamesvetem.cz/wp-content/uploads/2018/10/travel-landscape-01.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
          height: 295,
        ),
        Container(
          child: const Text('This is an image with out rounded borders'),
          padding: const EdgeInsets.all(12.0),
        )
      ],
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                spreadRadius: 2.0,
                blurRadius: 12.0,
                offset: Offset(2.0, 8.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
