import 'package:flutter/material.dart';
import 'package:landflight_agency_dashboard/components/dashboard_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var headingText = "Agence";
    return Scaffold(
      body: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Text(
        // "data",
        //style: Theme.of(context).textTheme.bodyText1,
        //),

        Column(
          children: [
            const SizedBox(
              width: 12,
            ),
            const Image(
              image: AssetImage('images/logo.png'),
              height: 160,
              width: 160,
            ),
            const SizedBox(
              height: 20,
            ),
            dashboardMenuElement("Dashboard"),
            const SizedBox(
              height: 50,
            ),
            dashboardMenuElement("Nos abonnés"),
            const SizedBox(
              height: 50,
            ),
            dashboardMenuElement("Gestion des posts"),
            const SizedBox(
              height: 50,
            ),
            dashboardMenuElement("Publier une offre"),
            const SizedBox(
              height: 30,
            ),
            const Icon(
              Icons.workspace_premium,
              color: Colors.yellow,
              size: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            dashboardMenuElement("Autres agences"),
            const SizedBox(
              height: 20,
            ),
            dashboardMenuElement("Rapport et statistiques"),
            const SizedBox(
              height: 30,
            ),
            const Text("_________________________________________"),
            const SizedBox(
              height: 23,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.logout),
              label: const Text("Se déconnecter"),
            ),
          ],
        ),
        //space btw menu and container for agency services
        const SizedBox(
          width: 0,
        ),
        Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              child: const Text("SearchBox"),
            ),
            Container(
              width: MediaQuery.of(context).size.height * 1.61,
              height: MediaQuery.of(context).size.height * 0.94,
              decoration: BoxDecoration(
                //couleur du container
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 15),
                    child: RichText(
                      text: TextSpan(
                        text: 'BIENVENUE ',
                        style: Theme.of(context).textTheme.headline1,
                        children: [
                          TextSpan(
                            text: headingText,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    indent: 12.0,
                    endIndent: 10,
                  ),
                  Row(
                    children: [
                      const DashboardCard().dashboardCard(
                        "Nos abonnés",
                        Colors.red,
                        false,
                        Icons.people,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const DashboardCard().dashboardCard(
                        "Autres agences",
                        Colors.orange,
                        true,
                        Icons.bus_alert,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const DashboardCard().dashboardCard(
                        "Gestion de posts",
                        Colors.purple,
                        false,
                        Icons.mark_email_read_sharp,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      const DashboardCard().dashboardCard(
                        "Publier une offre",
                        Colors.indigo,
                        false,
                        Icons.offline_pin_sharp,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const DashboardCard().dashboardCard(
                        "Statistiques",
                        Colors.grey,
                        true,
                        Icons.auto_graph,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }

  Column dashboardMenuElement(String text) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        const Text("_________________________________________"),
      ],
    );
  }
}
