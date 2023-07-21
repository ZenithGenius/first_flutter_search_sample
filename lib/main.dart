import 'package:flutter/material.dart';
import 'package:search_movies/model/services_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SearchPage());
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  //Create a dummy list of services givers
  //lets train with th IMDB data
    //creating the list that weare going to dsplay and filter
  List<PrestataireService> displayList = List.from(listDesPrestataires);

  void updateList(String value) {
    //This function is the one that will filter out the list
    //we will be back to this list after a while
    //Now let's write our search function
    setState(() {
      displayList = listDesPrestataires
          .where((element) => element.serviceRendue!
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFF1f545),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rechercher Un Service",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xff302360),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "eg: Livraison de repas",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.purple.shade900,
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              //now lets create a function to display a text in case we dont't get a result

              child: displayList.length == 0
                  ? Center(
                      child: Text(
                        "No result found",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      itemCount: displayList.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(
                          displayList[index].prenom!,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '${displayList[index].serviceRendue!}',
                          style: TextStyle(color: Colors.white60),
                        ),
                        trailing: Text(
                          "${displayList[index].rating}",
                          style: TextStyle(color: Colors.amber),
                        ),
                        leading: Image.asset(
                            displayList[index].shortDescription!,
                            height: 70.0,
                            width: 50.0),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
