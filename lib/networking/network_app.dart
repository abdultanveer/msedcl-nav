import 'package:flutter/material.dart';
import 'package:msedcl/model/album.dart';
import 'package:msedcl/networking/network_call.dart';

void main(){
  runApp(NetworkApp());
}

class NetworkApp extends StatefulWidget {
  const NetworkApp({super.key});



  @override
  State<NetworkApp> createState() => _NetworkAppState();
}

class _NetworkAppState extends State<NetworkApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'network',
      home: Scaffold(
        appBar: AppBar(title: const Text('Fetch Data Example')),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

}
