import 'package:flutter/material.dart';


class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
        itemCount: 6,
          itemBuilder: (context, index) {
        return Container(
          height: 70.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0), color: Colors.white),
          child: ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const StatusView()));
            },
            title: Text("Status $index"),
            subtitle: const Text("This is a subtitle"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("02:45 AM"),
                Text("online"),
              ],
            ),
            leading: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300]),
            ),
          ),
        );
      }),
    );
  }
}


class StatusView extends StatefulWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    //  ......................
    );
  }
}
