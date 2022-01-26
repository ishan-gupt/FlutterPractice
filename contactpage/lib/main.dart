import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(ContactPage());
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff989898),
              leading: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.star_border),
                  color: Colors.black,
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Contact is Starred",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ),
              ],
            ),
            body: ListView(children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 250,
                    color: Color(0xfffdfeff),
                    child: Image.asset(
                      'assets/images/photo.png',
                      height: 250,
                      //Make picture fit its parent
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 60,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.all(8.0)),
                          Text(
                            "Ishan Gupta",
                            style: TextStyle(fontSize: 30),
                          )
                        ]),
                  ),
                  Divider(color: Colors.grey),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          buildCallButton(),
                          buildTextButton(),
                          buildVedioButton(),
                          buildEmailButton(),
                          buildDirectionButton(),
                          buildPayButton(),
                        ]),
                  ),
                  Divider(color: Colors.grey),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          mobilePhoneListTile(),
                          otherPhoneListTile(),
                          emailListTile(),
                          addressListTile(),
                        ]),
                  ),
                ],
              )
            ])));
  }

  Widget buildCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.call,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Call"),
      ],
    );
  }

  Widget buildTextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.message,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Text"),
      ],
    );
  }

  Widget buildVedioButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.camera,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Vedio"),
      ],
    );
  }

  Widget buildEmailButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.email,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Email"),
      ],
    );
  }

  Widget buildDirectionButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.map,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Directions"),
      ],
    );
  }

  Widget buildPayButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.money,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Pay"),
      ],
    );
  }

  Widget mobilePhoneListTile() {
    return ListTile(
      leading: Icon(
        Icons.call,
      ),
      title: Text("9513737175"),
      subtitle: Text("mobile"),
      trailing: IconButton(
        icon: Icon(
          Icons.message,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget otherPhoneListTile() {
    return ListTile(
      leading: Icon(
        Icons.call,
      ),
      title: Text("9044868091"),
      subtitle: Text("other"),
      trailing: IconButton(
        icon: Icon(
          Icons.message,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget emailListTile() {
    return ListTile(
      leading: Icon(
        Icons.email,
      ),
      title: Text("gupta.ishan@hotmail.com"),
      subtitle: Text("work"),
    );
  }

  Widget addressListTile() {
    return ListTile(
      leading: Icon(
        Icons.location_on,
      ),
      title: Text("Bengaluru"),
      subtitle: Text("home"),
      trailing: IconButton(
        icon: Icon(
          Icons.directions,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
    );
  }
}
