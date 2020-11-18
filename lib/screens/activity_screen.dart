import 'package:flutter/material.dart';

import 'package:whatsapp/widgets/profile_image.dart';

class ActivityScreen extends StatefulWidget {
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  List activityList = [
    {
      'profileImageUrl':
          'https://images.generated.photos/LPEqCPkFxhmkC9Hs5RNx_f4VC1FqKR1yYkT5Nm3kXWI/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMDUwMjRfMDk0/MzI3NF8wODY4NTEw/LmpwZw.jpg',
      'userName': 'Conor',
      'location': 'Hyderabad',
      'postedImageUrl':
          'https://images.unsplash.com/photo-1596688829405-50fa5afa8038?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'likes': 0,
      'postedOn': '1 hour'
    },
    {
      'profileImageUrl':
          'https://images.generated.photos/ThNRcNyHMH7hExSYJnJXp7UsDoeZD7d9b9o3Ikk2QA4/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA3NDUzOTZfMDc5/MTMxM18wNTA5MzYz/LmpwZw.jpg',
      'userName': 'Justin',
      'location': 'Mumbai',
      'postedImageUrl':
          'https://images.unsplash.com/photo-1573847792062-9292df56ebb4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'likes': 2,
      'postedOn': '5 hours'
    },
    {
      'profileImageUrl':
          'https://images.generated.photos/Xu5VRYkk3r0FAlUhXxMkPDCq3XcQ4dBiQoR9W9GRXMo/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA0NzkyNjRfMDUx/MjkxOV8wNzg2MDg4/LmpwZw.jpg',
      'userName': 'Donald',
      'location': 'Hyderabad',
      'postedImageUrl':
          'https://images.unsplash.com/photo-1601054704854-1a2e79dda4d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'likes': 10,
      'postedOn': '23 hours'
    },
    {
      'profileImageUrl':
          'https://images.generated.photos/EmuK8oj5uTIOFehCUnC4L7InXfdQ7HV9z9jw2ZsyPME/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA2NjI0NDQuanBn.jpg',
      'userName': 'Khabib',
      'location': 'Vizag',
      'postedImageUrl':
          'https://images.unsplash.com/photo-1597122582304-97edf3b0ff69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'likes': 5,
      'postedOn': '1 day'
    },
    {
      'profileImageUrl':
          'https://images.generated.photos/FRamuJL0YZZ7vk0PkIIqjdCWOcnG4Wg9_r2rEEKQYzQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwNzAzNTlfMDcy/NTM5NV8wNDIzODY2/LmpwZw.jpg',
      'userName': 'Zabit',
      'location': 'Chennai',
      'postedImageUrl':
          'https://images.unsplash.com/photo-1524807516161-169559ce8180?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'likes': 14,
      'postedOn': '2 days'
    },
  ];

  bool isLiked = false;

  Widget favouriteIcon() {
    Icon icon;
    if (isLiked) {
      icon = Icon(
        Icons.favorite,
        color: Colors.red,
      );
    } else {
      icon = Icon(Icons.favorite_border);
    }
    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Activity',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: () {
                print('search');
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
      body: ListView.builder(
        itemCount: activityList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    ProfileImage(
                        size: 25.0,
                        imageUrl: activityList[index]["profileImageUrl"]),
                    SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${activityList[index]["userName"]}',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${activityList[index]["location"]}',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 200.0,
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    '${activityList[index]["postedImageUrl"]}',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: favouriteIcon(),
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(Icons.comment),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(Icons.share),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('${activityList[index]["likes"]} likes'),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('${activityList[index]["postedOn"]} ago'),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    throw UnimplementedError();
  }
}
