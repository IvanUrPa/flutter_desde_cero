import 'dart:convert';

import 'package:flutter/material.dart';

class InformacionUsuarioPage extends StatelessWidget {
  const InformacionUsuarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.blue,
                image: const DecorationImage(
                    /*image: NetworkImage(
                        "https://cdn.soyunperro.com/wp-content/uploads/2017/10/perro-contento-770x470.jpg"),
                    fit: BoxFit.cover)*/
                    image: AssetImage("assets/perrito.jpg"),
                    fit: BoxFit.cover)),
          ),
          FutureBuilder(
              future:
                  DefaultAssetBundle.of(context).loadString("assets/data.json"),
              builder: (context, resultado) {
                final data = jsonDecode(resultado.data.toString());
                return Text(
                  data[('nombre')],
                  style: Theme.of(context).textTheme.headline6,
                );
              }),
        ],
      ),
    );
  }
}
