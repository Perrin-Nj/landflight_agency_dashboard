import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Text(
        // "data",
        //style: Theme.of(context).textTheme.bodyText1,
        //),
        const SizedBox(
          height: 120,
        ),

        Column(
          children: const [
            SizedBox(
              width: 12,
            ),
            Image(
              image: AssetImage('images/logo.png'),
              height: 100,
              width: 100,
            ),
            Text("MENU HERE")
          ],
        ),
        const SizedBox(
          width: 30,
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
              width: MediaQuery.of(context).size.height * 1.77,
              height: MediaQuery.of(context).size.height * 0.94,
              decoration:
                  BoxDecoration(color: Theme.of(context).secondaryHeaderColor),
            )
          ],
        )
      ]),
    );
  }
}
