import 'package:flutter/material.dart';
import 'package:alfa_soyzen/presentation/Course.dart';


class Widgets_Tips_Detailed extends StatefulWidget {
  final String title;
  final String desc;
  final String urlTitleImage;

  const Widgets_Tips_Detailed(
      {super.key,
      required this.title,
      required this.desc,
      required this.urlTitleImage});

  @override
  _tips_detail createState() =>
      _tips_detail(title: title, desc: desc, urlTitleImage: urlTitleImage);
}

class _tips_detail extends State<Widgets_Tips_Detailed> {
  final List<Map<String, String>> panels = [
    {'description': 'Panel 1', 'urlImage': 'https://via.placeholder.com/150'},
    {'description': 'Panel 2', 'urlImage': 'https://via.placeholder.com/150'},
    {'description': 'Panel 3', 'urlImage': 'https://via.placeholder.com/150'},
    {'description': 'Panel 4', 'urlImage': 'https://via.placeholder.com/150'},
    {'description': 'Panel 5', 'urlImage': 'https://via.placeholder.com/150'},
    // Add more panels as needed
  ];

  final String title;
  final String desc;
  final String urlTitleImage;

  _tips_detail(
      {required this.title, required this.desc, required this.urlTitleImage});

  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      body: Column(
        children: [
          YogaAppBar(title: title),
          Expanded(
            child: Column(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Flexible(
                            child: Image.network(
                              urlTitleImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            desc,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsets.only(bottom: bottomInset, left: 8, right: 8),
                    child: ListView.builder(
                      itemCount: panels.length,
                      itemBuilder: (context, index) {
                        final panel = panels[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Image.network(
                                    panel['urlImage']!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              Expanded(
                                child: Text(
                                  panel['description']!,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _commentController,
                    decoration: const InputDecoration(
                      hintText: 'Send comment',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                CircleAvatar(
                  radius: 24.0,
                  child: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      // Handle send comment logic here
                      print('Sent comment: ${_commentController.text}');
                      _commentController.clear();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
