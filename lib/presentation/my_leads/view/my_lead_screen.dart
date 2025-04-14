import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/leads/leads_model.dart';

class MyLeadScreen extends StatelessWidget {
  const MyLeadScreen({
    super.key,
    required this.lead,
  });

  final Lead lead;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Lead Details",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12.0,
                        ),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(75),
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 7.0,
                                color: Colors.black,
                              ),
                            ]),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${lead.name}',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '${lead.email}',
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '${lead.phone}',
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 50,
              thickness: 5,
            ),
            Expanded(
              flex: 4,
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                        labelColor: Colors.black,
                        tabs: [
                          Tab(text: "Status"),
                          Tab(text: "Visited"),
                          Tab(text: "Notes"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: TabBarView(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 50),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Text(
                                    "${lead.status}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Column(
                                children: [Text("Visited")],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10.0),
                                    child: TextField(
                                      autocorrect: false,
                                      maxLines: 10,
                                      decoration: InputDecoration(
                                        hintText: "Notes",
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          foregroundColor: Colors.white,
                                          backgroundColor: Colors.blue,
                                        ),
                                        child: Text(
                                          "Save",
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
