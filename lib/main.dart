import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvola_demo/widgets/menu_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mvola',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.user),
        ),
        title: const Text("Mvola"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.qrcode),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            pinned: false,
            snap: true,
            floating: true,
            expandedHeight: 220.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor,
                            ),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 10.0),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  60,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.visibility_off,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Masquer les montant",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.refresh,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0.0),
                      leading: Text(
                        "Solde",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      trailing: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "************* ar",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1.0,
                      color: Theme.of(context).primaryColor,
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0.0),
                      leading: Text(
                        "Avance",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      trailing: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "************* ar",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1.0,
                      color: Theme.of(context).primaryColor,
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0.0),
                      leading: Text(
                        "Epargne",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      trailing: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "************* ar",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "A NE PAS MANQUER",
                              style: TextStyle(
                                color: Colors.grey[600]!,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 120,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ...[1, 2, 3, 4]
                                  .map(
                                    (e) => FadeInRight(
                                      delay: Duration(milliseconds: 500 * e),
                                      child: Container(
                                        padding: const EdgeInsets.all(10.0),
                                        margin: const EdgeInsets.only(
                                          left: 15,
                                          right: 0,
                                          top: 10,
                                          bottom: 10,
                                        ),
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(FontAwesomeIcons.ccVisa),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            RichText(
                                              strutStyle:
                                                  const StrutStyle(height: 1.1),
                                              text: TextSpan(
                                                text: "Saisissez votre",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey[400],
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: " code secret Mvola ",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey[800],
                                                    ),
                                                  ),
                                                  const TextSpan(
                                                      text:
                                                          "pour afficher vos offres personnalisées.")
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        MenuCard(
                          icon: Icon(FontAwesomeIcons.transgender),
                          title: "Transfer & Paiement",
                        ),
                        MenuCard(
                          icon: Icon(FontAwesomeIcons.buyNLarge),
                          title: "Achat crédit/ofrre",
                        ),
                        MenuCard(
                          icon: Icon(FontAwesomeIcons.moneyBillTrendUp),
                          title: "Retrait d'argent",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        MenuCard(
                          icon: Icon(FontAwesomeIcons.building),
                          title: "Ma banque",
                        ),
                        MenuCard(
                          icon: Icon(FontAwesomeIcons.receipt),
                          title: "Recevoir de l'argent",
                        ),
                        MenuCard(
                          icon: Icon(FontAwesomeIcons.shareFromSquare),
                          title: "CB2MVola",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        MenuCard(
                          icon: Icon(FontAwesomeIcons.plugCircleBolt),
                          title: "Eau et électricité",
                        ),
                        MenuCard(
                          icon: Icon(FontAwesomeIcons.tv),
                          title: "TV & Presse",
                        ),
                        MenuCard(
                          icon: Icon(FontAwesomeIcons.peoplePulling),
                          title: "Autres partenaires",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "contact@youngdev.mg",
                    style: TextStyle(
                      color: Colors.grey[600]!,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
