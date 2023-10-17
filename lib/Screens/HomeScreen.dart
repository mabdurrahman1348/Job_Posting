import 'package:flutter/material.dart';
import 'package:job_posting/Screens/Add_Job.dart';
import 'package:job_posting/Screens/Edit_job.dart';
import 'package:job_posting/Screens/JobPost.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<JobPost> items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context)
              .push<JobPost>(MaterialPageRoute(builder: (_) => AddJob()))
              .then((value) => setState(() {
                    items.add(value!);
                  }));
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 79, left: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            const Row(
              children: [
                Text(
                  "Muhammad Abdurrahman",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 25),
                ),
                SizedBox(
                  child: Padding(padding: EdgeInsets.only(right: 27.36)),
                ),
                Icon(
                  Icons.logout,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 27),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF1E1C24),
                  border: Border.all(color: const Color(0xFF5D5D67)),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Color(0xFF5D5D67),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              hintText: 'Search keyword..',
                              hintStyle: TextStyle(color: Color(0xFF8F8F9E)),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            if (items.isNotEmpty)
              ListView.builder(
                  itemCount: items.length, shrinkWrap: true, itemBuilder: item)
            else
              const Padding(
                padding: EdgeInsets.only(top: 250, left: 27, right: 27),
                child: Center(
                    child: Text(
                  "No items Available",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
              )
          ],
        ),
      ),
    );
  }

  Widget item(BuildContext context, int index) => Padding(
        padding: const EdgeInsets.only(right: 22),
        child: Container(
          margin: const EdgeInsets.only(bottom: 11),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF201E27),
              border: Border.all(color: const Color(0xFF201E27))),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(items[index].title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                        Text(items[index].description,
                            style: const TextStyle(
                                color: Color(0xFF8F8F9E),
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(width: 200),
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>  EditJob()));
                            },
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ))),
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              items.removeAt(index);
                            });
                          },
                          child: const Icon(Icons.delete, color: Colors.red)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
