import 'package:flutter/material.dart';
import 'package:ai_application/src/data/data.dart';

class Practice extends StatelessWidget {
  static const String routeName = "/practice";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('SIgn Lanuage')),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    onTap: () =>
                        {Navigator.pushNamed(context, '/practicedetail', arguments:index)},
                    title: Signs(data[index].name)),
              );
            },
          )),
    );
  }
}

class Signs extends StatelessWidget {
  final String sign;
  const Signs(this.sign);

  @override
  Widget build(BuildContext context) {
    return Text(sign);
  }
}
