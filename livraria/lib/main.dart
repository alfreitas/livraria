import 'package:badges/badges.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:livraria/paginas/bloc/home_bloc.dart';
import 'package:livraria/paginas/paginaCadastro.dart';
import 'package:livraria/util/Navegador.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/a": (BuildContext context) => new PaginaCadastro(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage() {
    // items = [];
  }
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = BlocHome();

  @override
  void initState() {
    bloc.initOneSignal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Primeiro App"),
          actions: <Widget>[
            Badge(
              badgeColor: Colors.redAccent,
              shape: BadgeShape.circle,
              borderRadius:40,
              toAnimate: false,
              badgeContent: Text('3'),
              child: Icon(Icons.notifications),
              position: BadgePosition.topRight(),
            )
          ],
          elevation:
              defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        ),
        drawer: new Drawer(
            child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("André"),
              accountEmail: new Text("andre.freitas@castgroup.com.br"),
              currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.cyan, child: new Text("A")),
            ),
            new ListTile(
              title: new Text("Livros"),
              trailing: new Icon(Icons.book),
              onTap: () {
                Navegador.irPara(context, new PaginaCadastro(), true);
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Usuarios"),
              trailing: new Icon(Icons.people),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Cadastrar"),
              trailing: new Icon(Icons.create),
            )
          ],
        )),
        body: new Text("Bem Vindo"));
  }
}
