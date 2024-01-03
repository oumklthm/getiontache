import 'package:flutter/material.dart';
import 'package:gestion_tache/homepage.dart';

class CraeTach extends StatefulWidget {
  const CraeTach({Key? key}) : super(key: key);

  @override
  _CraeTachState createState() => _CraeTachState();
}

class _CraeTachState extends State<CraeTach> {
  String selectedCategory = 'Personnelle';
  String selectetat = 'En progres';

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'créer une nouvelle tâche',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Type',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 6),
                Card(
                  elevation: 5,
                  color: Colors.grey[200],
                  child: DropdownButton<String>(
                    iconSize: 40,
                    dropdownColor: Colors.grey[400],
                    isExpanded: true,
                    isDense: true,
                    value: selectedCategory,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCategory = newValue!;
                      });
                    },
                    items: <String>['Scolaire', 'Personnelle']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const Text(
                  'Titre',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 5),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.grey[300],
                  child: const ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Date de fin',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 5),
                          Card(
                            elevation: 5,
                            color: Colors.grey[300],
                            child: const ListTile(
                              title: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                        width: 16), 
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Date de début',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 5),
                          Card(
                            elevation: 5,
                            color: Colors.grey[300],
                            child: const ListTile(
                              title: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Etat',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 1),
                          Card(
                            elevation: 5,
                            color: Colors.grey[200],
                            child: DropdownButton<String>(
                              iconSize: 40,
                              dropdownColor: Colors.grey[400],
                              isExpanded: true,
                              isDense: true,
                              value: selectetat,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectetat = newValue!;
                                });
                              },
                              items: <String>[
                                'En progres',
                                'A faire',
                                'Terminé'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox( width: 2), 
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Avancement',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 1),
                          Card(
                            elevation: 5,
                            margin: const EdgeInsets.only(left: 60, top: 0, right: 0, bottom: 0),
                            color: Colors.grey[300],
                            child: const ListTile(
                              title: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
             const   SizedBox(height: 20),
               ElevatedButton(
  onPressed: () {
    // Handle sign in
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
  },
  style: ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 50), 
  ),
  child:const Text('Cree une tàche'),
),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
