import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Film.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Film>? FilmFavorite = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Film Up = new Film("Up", "29 Juli 2009 (Indonesia)", "Anak-anak/Petualangan", "1 j 36 m", 4.15, 'assets/up.jpg');
    Film bigHero6 = new Film("Big Hero 6", "7 November 2014 (Indonesia)", "Anak-anak/Petualangan", "1 j 42 m", 3.9, 'assets/bighero6.jpg');
    Film Wall_E = new Film("WALL•E", "13 Agustus 2008 (Indonesia)", "Petualangan/Anak-anak", "1 j 38 m", 4.2, 'assets/walle.jpg');
    Film Coco = new Film("Coco", "22 November 2017 (Indonesia)", "Anak-anak/Petualangan", "1 j 45 m", 4.2, 'assets/coco.jpg');
    Film insideOut = new Film("Inside Out", "19 Agustus 2015 (Indonesia)", "Anak-anak/Komedi", "1 j 35 m", 4.05, 'assets/insideout.jpg');
    Film Ratatouille = new Film("Ratatouille", "28 Juni 2007 (Indonesia)", "Anak-anak/Komedi", "1 j 51 m", 4.05, 'assets/ratatouille.jpg');
    Film Moana = new Film("Moana", "25 November 2016 (Indonesia)", "Anak-anak/Musikal", "1 j 47 m", 3.8, 'assets/moana.jpg');
    Film How_to_Train_Your_Dragon = new Film("How to Train Your Dragon", "20 Maret 2010 (Indonesia)", "Anak-anak/Petualangan", "1 j 38 m", 4.05, 'assets/howtotrainyourdragon.jpg');
    Film Wreck_It_Ralph = new Film("Wreck-It Ralph", "9 November 2012 (Indonesia)", "Anak-anak/Petualangan", "1 j 41 m", 3.85, 'assets/wreckitralph.jpg');
    Film theIncredibles = new Film("The Incredibles", "24 Oktober 2004 (Amerika)", "Anak-anak/Petualangan", "1 j 55 m", 4.0, 'assets/theincredibles.jpg');
    Film findingNemo = new Film("Finding Nemo", "30 Mei 2003 (Amerika)", "Anak-anak/Petualangan", "1 j 40 m", 4.1, 'assets/findingnemo.jpg');
    Film Cars = new Film("Cars", "9 Juni 2006 (Amerika)", "Komedi/Anak-anak", "1 j 57 m", 3.6, 'assets/cars.jpg');
    Film toyStory = new Film("Toy Story", "22 November 1995 (Amerika)", "Anak-anak/Petualangan", "1 j 21 m", 4.15, 'assets/toystory.jpg');
    Film monstersInc = new Film("Monsters, Inc.", "2 November 2001 (Amerika)", "Komedi/Petualangan", "1 j 32 m", 4.05, 'assets/monsterinc.jpg');
    Film Soul = new Film("Soul", "11 Oktober 2020", "Anak-anak/Petualangan", "1 j 40 m", 4.0, 'assets/soul.jpg');
    Film findingDory = new Film("Finding Dory", "16 Juni 2016 (Indonesia)", "Anak-anak/Petualangan", "1 j 37 m", 3.4, 'assets/findingdory.jpg');
    Film Frozen = new Film("Frozen", "29 November 2013 (Indonesia)", "Anak-anak/Musikal", "1 j 48 m", 3.7, 'assets/frozen.jpg');
    Film Zootopia = new Film("Zootopia", "17 Februari 2016 (Indonesia)", "Anak-anak/Petualangan", "1 j 48 m", 4.0, 'assets/zootopia.jpg');
    Film Meet_the_Robinsons = new Film("Meet the Robinsons", "30 Maret 2007 (Amerika)", "Anak-anak/Petualangan", "1 j 35 m", 3.4, 'assets/meettherobinsons.jpg');
    Film The_Lion_King = new Film("The Lion King", "17 Juli 2019 (Indonesia)", "Anak-anak/Petualangan", "1 j 58 m", 3.4, 'assets/thelionking.jpg');
    FilmFavorite?.add(Up);
    FilmFavorite?.add(bigHero6);
    FilmFavorite?.add(Wall_E);
    FilmFavorite?.add(Coco);
    FilmFavorite?.add(insideOut);
    FilmFavorite?.add(Ratatouille);
    FilmFavorite?.add(Moana);
    FilmFavorite?.add(How_to_Train_Your_Dragon);
    FilmFavorite?.add(Wreck_It_Ralph);
    FilmFavorite?.add(theIncredibles);
    FilmFavorite?.add(findingNemo);
    FilmFavorite?.add(Cars);
    FilmFavorite?.add(toyStory);
    FilmFavorite?.add(monstersInc);
    FilmFavorite?.add(Soul);
    FilmFavorite?.add(findingDory);
    FilmFavorite?.add(Frozen);
    FilmFavorite?.add(Zootopia);
    FilmFavorite?.add(Meet_the_Robinsons);
    FilmFavorite?.add(The_Lion_King);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Favorite Film"),),
      body: Center(
        child: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: FilmFavorite?.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 4, // Bayangan pada card
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: Container(
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(FilmFavorite![index].Poster),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      FilmFavorite![index].nameFilm,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tanggal Rilis : " + FilmFavorite![index].Date),
                          Text("Genre : " + FilmFavorite![index].Genre),
                          Text("Durasi : " + FilmFavorite![index].Durasi),
                          Row(
                            children: [
                              Text("Rating : "), // Teks "Rating : "
                              RatingBar.builder(
                                initialRating: FilmFavorite![index].Rating,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
