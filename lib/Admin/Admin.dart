import 'dart:html';

import 'package:exploreandtrip/Widget/Menubar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _search = TextEditingController();
    final _key = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              flex: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(color: Colors.red),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 50),
                        alignment: Alignment.topCenter,
                        child: Text(
                          "EXPLORE & TRIP",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w700,
                              fontSize: 30),
                        ))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.amber),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Form(
                              key: _key,
                              child: Container(
                                margin: EdgeInsets.only(top: 15, left: 15),
                                width: 270,
                                height: 50,
                                child: TextFormField(
                                  controller: _search,
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.search)),
                                      hintText: "Search...",
                                      hintStyle: TextStyle(
                                          fontStyle: FontStyle.italic),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12))),
                                ),
                              )),
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            child: OverlayWidger(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OverlayWidger extends StatefulWidget {
  const OverlayWidger({super.key});

  @override
  State<OverlayWidger> createState() => _OverlayWidgerState();
}

class _OverlayWidgerState extends State<OverlayWidger> {
  final OverlayPortalController _controller = OverlayPortalController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _controller.toggle,
        child: Container(
          child: OverlayPortal(
            controller: _controller,
            overlayChildBuilder: (context) {
              return Positioned(
                  right: 15,
                  bottom: 577,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ));
            },
            child: CircleAvatar(
              child: Text("M"),
            ),
          ),
        ));
  }
}
