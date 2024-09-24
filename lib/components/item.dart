import 'package:flutter/material.dart';
import 'package:pr_3/pages/note_page.dart';

class Item extends StatelessWidget {
  final String imagePath;
  final String brand;
  final String title;
  final String description;

  const Item({
    super.key,
    required this.imagePath,
    required this.brand,
    required this.title,
    required this.description,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(
            157, 211, 151, 126), borderRadius: BorderRadius.circular(15.0)),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.48,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imagePath),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  brand,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 211, 151, 126),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotePage(
                          imagePath: imagePath,
                          brand: brand,
                          title: title,
                          description: description,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'Узнать больше',
                    style: TextStyle(color: Color.fromARGB(255, 92, 92, 92)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}