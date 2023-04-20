import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ortho_icu extends StatefulWidget {
  const ortho_icu({super.key});

  @override
  State<ortho_icu> createState() => _ortho_icuState();
}

class _ortho_icuState extends State<ortho_icu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/images/left.png",
            height: 35,
            width: 35,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, // <-- SEE HERE
        ),
        title: Text(
          'ORTHO ICU',
          style: TextStyle(
              color: Color.fromARGB(255, 17, 17, 17),
              fontFamily: "Kanit",
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          Center(
            child: Column(
              children: [
                const Icon(
                  Icons.contact_phone_rounded,
                  size: 200,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(top: BorderSide()),
                          color: Color.fromRGBO(222, 227, 235, 1),
                        ),
                        child: ListTile(
                          title: Text(
                            'Ph No:',
                            style: TextStyle(
                                color: Color.fromARGB(255, 43, 45, 66),
                                fontFamily: "Kanit",
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("+91(484)2885084"),
                          trailing: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.call_rounded,
                                color: Colors.blue,
                              )),
                          onTap: () async {
                            final Uri url = Uri(
                              scheme: 'tel',
                              path: "+91(484)2885084",
                            );
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              print('Cannot launch this url');
                            }
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(top: BorderSide()),
                          color: Color.fromRGBO(222, 227, 235, 1),
                        ),
                        child: ListTile(
                          title: Text(
                            'Ph No:',
                            style: TextStyle(
                                color: Color.fromARGB(255, 43, 45, 66),
                                fontFamily: "Kanit",
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("+91(484)2885083"),
                          trailing: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.call_rounded,
                                color: Colors.blue,
                              )),
                          onTap: () async {
                            final Uri url = Uri(
                              scheme: 'tel',
                              path: "+91(484)2885083",
                            );
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              print('Cannot launch this url');
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
