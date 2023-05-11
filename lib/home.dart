import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'connect.dart';

class home extends StatelessWidget {
  home({Key? key}) : super(key: key);

  var namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("contact view"),
      ),
      body: Column(children: [
        TextField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
          controller: namecontroller,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Provider.of<connectingprovider>(context, listen: false)
                        .add(namecontroller.text);
                    // names.add(namecontroller.text);
                  },
                  child: Text('Add')),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<connectingprovider>(context, listen: false)
                        .delete(namecontroller.text);
                  },
                  child: Text('Delete')),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: Provider.of<connectingprovider>(context).names.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 300,
                  color: Colors.black38,
                  child: ListTile(
                    leading: Icon(Icons.account_box_rounded),
                    title: Text(
                        Provider.of<connectingprovider>(context).names[index]),
                  ),
                );
              }),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {
              Provider.of<connectingprovider>(context, listen: false).theme();

            },
            child:Icon(Provider.of<connectingprovider>(context).
                b==Brightness.dark?Icons.dark_mode_outlined:Icons.sunny),
          ),
        ),
      ]),
    );
  }
}
