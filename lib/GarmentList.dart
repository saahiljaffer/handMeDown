import 'package:flutter/material.dart';

class GarmentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("AppBar")),
        body: Scrollbar(
            child: ListView(
          padding: const EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
          ),
          children: [
            RaisedButton(
              child: new Text("Add New Item"),
              color: Colors.blueAccent[600],
              onPressed: () {
                Navigator.pushNamed(context, '/AddItem');
              },
            ),
            for (int index = 0; index < garmentList.length; index++)
              GarmentCard(
                garment: garmentList[index],
              )
          ],
        )));
  }
}

class Garment {
  const Garment({
    @required this.assetName,
    @required this.title,
    @required this.description,
    @required this.location,
    @required this.gender,
    @required this.size,
  })  : assert(gender != null),
        assert(size != null),
        assert(assetName != null),
        assert(title != null),
        assert(description != null),
        assert(location != null);

  final String size;
  final String gender;
  final String assetName;
  final String title;
  final String description;
  final String location;
}

var garmentList = [
  new Garment(
      assetName: 'items/jacket.jpg',
      title: "Shirt",
      size: "Medium",
      gender: "Male",
      description: "Button-up flannel",
      location: "Toronto"),
  new Garment(
      assetName: 'items/jacket.jpg',
      title: "Jacket",
      size: "Large",
      gender: "Female",
      description: "Vintage Nike Jacket",
      location: "Waterloo"),
  new Garment(
      assetName: 'items/jacket.jpg',
      title: "Pants",
      size: "Large",
      gender: "Female",
      description: "Blue jeans",
      location: "Kitchener"),
];

class GarmentCard extends StatelessWidget {
  GarmentCard({Key key, @required this.garment})
      : assert(garment != null),
        super(key: key);

  final Garment garment;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: new EdgeInsets.only(bottom: 15),
      child: Card(
        color: Colors.white,
        elevation: 5,
        child: Padding(
          padding: new EdgeInsets.all(15),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: new EdgeInsets.only(bottom: 10),
                child: Image(
                  image: AssetImage(garment.assetName),
                  width: 300,
                  height: 100,
                ),
              ),
              Text(garment.title, style: TextStyle(fontSize: 24.0)),
              Text(garment.description, style: TextStyle(fontSize: 16.0)),
              Text(garment.size, style: TextStyle(fontSize: 16.0)),
              Text(garment.gender, style: TextStyle(fontSize: 16.0)),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RaisedButton(
                    child: const Text('Edit'),
                    onPressed: () {/* ... */},
                  ),
                  RaisedButton(
                    child: const Text('Delete'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
