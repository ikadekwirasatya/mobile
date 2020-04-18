import 'package:flutter/material.dart';
//import terlebih dahulu halaman yang diperlukan
import './detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(title: Text("All Glasses List")),
        //body untuk content
        //menampilkan list
        body: ListView(
          shrinkWrap: true,
          //padding
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          //anggota dari list berupa widget children
          children: <Widget>[
            //GestureDetector untuk menangani gesture pengguna
            new GestureDetector(
              //listener  berupa klik 1x
              onTap: () {
                //navigator.push  untuk berpindah halaman
                Navigator.of(context).push(new MaterialPageRoute(
                  //pemanggilan class DetailProduk beserta pengiriman detail produk
                  builder: (BuildContext context) => DetailProduk(
                    name: "Dior F CD LINE2 807 52",
                    description: "Christian Dior",
                    price: 2000000,
                    image: "5.png",
                    star: 3,
                  ),
                ));
              },
              //memanggil class Productbox
              child: ProductBox(
                  //berisi parameter yang diperlukan di class ProductBox
                  name: "Dior F CD LINE2 807 52",
                  description: "Christian Dior was founded in the 1940s and put Paris in the centre of the fashion universe and it�s remained there ever since." 
                    "The brand Christian Dior is more commonly referred to now simply as 'Dior'.",
                  price: 2000000,
                  image: "5.png",
                  star: 3),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Givenchy F GY S 0125 RHL 53",
                      description: "Givenchy merupakan salah satu rumah mode legendaris asal Paris yang berhasil meremajakan dirinya." 
                      "Brand yang kini tampil dalam kemasan edgy ini juga memiliki serangkaian kacamata dan sunglasses yang berdesain outstanding.",
        
                      price: 3000000,
                      image: "4.png",
                      star: 4,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Givenchy F GY S 0125 RHL 53",
                    description: "Givenchy merupakan salah satu rumah mode legendaris asal Paris yang berhasil meremajakan dirinya." 
                      "Brand yang kini tampil dalam kemasan edgy ini juga memiliki serangkaian kacamata dan sunglasses yang berdesain outstanding.",
                    price: 3000000,
                    image: "4.png",
                    star: 4)),
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Jimmy Choo F JO JC266 J5G 56",
                      description: "Jimmy Choo merupakan brand yang tidak asing di kalangan well-heeled ladies. ",
                      price: 1000000,
                      image: "3.png",
                      star: 2,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Jimmy Choo F JO JC266 J5G 56",
                    description: "Jimmy Choo merupakan brand yang tidak asing di kalangan well-heeled ladies. ",
                    price: 1000000,
                    image: "3.png",
                    star: 2)),
                        new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Polaroid F P9 PLD D362/G 001",
                      description: "Polaroid Eyewear is a world leader in optics and lens technology and a global eyewear manufacturer and distributor.",
                      price: 1500000,
                      image: "2.png",
                      star: 4,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Polaroid F P9 PLD D362/G 001",
                    description: "Polaroid Eyewear is a world leader in optics and lens technology and a global eyewear manufacturer and distributor.",
                    price: 1500000,
                    image: "2.png",
                    star: 4)),
new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Molsion F M^ MJ6073 B12 48",
                      description: "Molsion menampilkan kacamata dan sunglasses dengan Korean style dalam harga yang terjangkau.",
                      
                      price: 4000000,
                      image: "1.png",
                      star: 5,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Molsion F M^ MJ6073 B12 48",
                    description: "Molsion menampilkan kacamata dan sunglasses dengan Korean style dalam harga yang terjangkau.",
                    price: 4000000,
                    image: "1.png",
                    star: 5)),
          ],
        ));
  }
}

//menggunakan widget StatelessWidget
class ProductBox extends StatelessWidget {
  //deklarasi variabel yang diterima dari MyHomePage
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  //menampung variabel yang diterima untuk dapat digunakan pada class ini
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }
    //menggunakan widget container
    return Container(
        //padding
        padding: EdgeInsets.all(10),
        // height: 120,
        //menggunakan widget card
        child: Card(
            //membuat tampilan secara horisontal antar image dan deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children digunakan untuk menampung banyak widget
                children: <Widget>[
              Image.asset(
                "assets/" + image,
                width: 150,
              ),
              Expanded(
                  //child digunakan untuk menampung satu widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //membuat tampilan secara vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini isi tampilan vertikal tersebut
                        children: <Widget>[
                          //menampilkan variabel menggunakan widget text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //menampilkan widget icon  dibungkus dengan row
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
