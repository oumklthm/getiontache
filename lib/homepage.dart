import 'package:flutter/material.dart';
import 'package:gestion_tache/creat_tach.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  double progression = 0.7;

  void updateProgression(double value) {
    setState(() {
      progression = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: const [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assetes/images/profil1.jpg'),
            ),
            SizedBox(width: 10),
            Row(
              children: [
                Text('Bonjour\nMika', style: TextStyle(color: Colors.black)),
              ],
            ),
            SizedBox(width: 260),
            Icon(Icons.menu, color: Colors.black),
            SizedBox(width: 3),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 5,
                color: Colors.grey[100],
                child: const ListTile(
                  leading: Icon(Icons.search),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'tape le nom de tache',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 1.0, left: 16.0, right: 16.0),
              child: Text(
                'Mes tàches',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(top: 1.0, left: 10.0, right: 16.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      updateProgression(0.3); 
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                    ),
                    child: const Text('En Progres'),
                  ),
                  const SizedBox(width: 10,),
                  OutlinedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      backgroundColor: Colors.grey[100],
                    ),
                    child: Text('A Faire',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      backgroundColor: Colors.grey[100],
                    ),
                    child: Text('Terminer',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 5,
                child: ListTile(
                  title:const Text('Nom de la tâche'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                 const     Text('Type de tâche'),
                 const     SizedBox(height: 8),
                      LinearProgressIndicator(value: progression),
                  const    SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const  Text('0%'),
                          Text('${(progression * 100).toInt()}%'),
                        const  Text('100%'),
                        ],
                      ),
                    const  SizedBox(height: 8),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_today, color: Colors.blue),
                              SizedBox(width: 4),
                              Text('01/01/2022'), 
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_today, color: Colors.red),
                              SizedBox(width: 4),
                              Text('31/12/2022'), 
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Naviguer vers une autre page ici
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>const CraeTach()),
            );
          },
          child:const Icon(Icons.add),
        ),
      ),
    );
  }
}




