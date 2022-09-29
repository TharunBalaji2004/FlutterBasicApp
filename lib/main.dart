import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List data  = [
    {
      "image":"https://images.pexels.com/photos/1054218/pexels-photo-1054218.jpeg?cs=srgb&dl=pexels-stephan-seeber-1054218.jpg&fm=jpg",
      "name":"Mount Fuji",
      "likes":432
    },
    {
      "image":"https://images.pexels.com/photos/2356045/pexels-photo-2356045.jpeg?cs=srgb&dl=pexels-errin-casano-2356045.jpg&fm=jpg",
      "name":"Machu Pichu",
      "likes":368
    },
    {
      "image":"https://images.pexels.com/photos/2739013/pexels-photo-2739013.jpeg?cs=srgb&dl=pexels-mads-thomsen-2739013.jpg&fm=jpg",
      "name":"Iceland",
      "likes":213
    },
    {
      "image":"https://images.pexels.com/photos/2674064/pexels-photo-2674064.jpeg?cs=srgb&dl=pexels-stijn-dijkstra-2674064.jpg&fm=jpg",
      "name":"Indonesia",
      "likes":563
    },
    {
      "image":"https://images.pexels.com/photos/3119775/pexels-photo-3119775.jpeg?cs=srgb&dl=pexels-iqx-azmi-3119775.jpg&fm=jpg",
      "name":"Europe",
      "likes":455
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context,index){
              return Container(
                padding: const EdgeInsets.all(20),
                height: 350,
                color: Colors.black12,
                child: Column(
                  children: [
                    Image.network(data[index]["image"]),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(data[index]["name"],style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            const Icon(Icons.thumb_up),
                            Text(data[index]["likes"].toString(),style: const TextStyle(fontSize: 25),),
                            const Icon(Icons.comment),
                          ],
                        )

                      ],
                    )
                  ],
                ),
              );
            }
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.change_circle),
        ),
      ),
    );
  }
}
