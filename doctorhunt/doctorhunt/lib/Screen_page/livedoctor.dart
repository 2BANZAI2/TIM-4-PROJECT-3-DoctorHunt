import 'package:flutter/material.dart';

class LiveDoctor extends StatefulWidget {
  final String image;

  const LiveDoctor(this.image, {Key? key}) : super(key: key);

  @override
  State<LiveDoctor> createState() => _LiveDoctorState();
}

class _LiveDoctorState extends State<LiveDoctor> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const Center(
                  // Centering the back button icon vertically
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(widget.image),
              ),
            ),
          ),
          Positioned(
            top: 300,
            bottom: 80,
            left: 0,
            right: 0,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('images/1.jpeg'),
                  ),
                  title: Text(
                    'User $index',
                    style: const TextStyle(fontSize: 12),
                  ),
                  subtitle: Text(
                    'Comment $index',
                    style: const TextStyle(fontSize: 8),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 530,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Add a Comment',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                  ),
                  border: InputBorder.none,
                  prefixIcon: Transform.scale(
                    scale: 0.8, // Adjust the scale as needed to make it smaller
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.chat,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.face),
                    iconSize: 20,
                    onPressed: () {
                      setState(() {
                        _searchController.clear();
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
