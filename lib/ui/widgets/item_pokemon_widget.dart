import 'package:flutter/material.dart';
import 'package:pokeball_simulation/models/pokemon_model.dart';
import 'package:pokeball_simulation/ui/widgets/item_type_widget.dart';

class ItemPokemonWidget extends StatelessWidget {
  /*
  String name;
  String image;
  List<String> types;
  */

  PokemonModel pokemon;

  ItemPokemonWidget({
    /*
    required this.name,
    required this.image,
    required this.types,
    */
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff4CCFB2),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -25,
            right: -25,
            child: Image.asset(
              'assets/images/pokeball.png',
              height: 120.0,
              color: Colors.white.withOpacity(0.27),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pokemon.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                /*  Column(
                  children: types.map((e) => ItemTypeWidget()).toList(),
                ),

              */

                ...pokemon.type
                    .map((e) => ItemTypeWidget(
                          text: e,
                        ))
                    .toList(),
              ],
            ),
          ),
          Positioned(
            bottom: -14,
            right: 0,
            child: Image.network(pokemon.img),
          ),
        ],
      ),
    );
  }
}
