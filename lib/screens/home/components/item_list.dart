import 'package:adopet/model/animal.dart';
import 'package:adopet/screens/details/details.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  Animal animal;
  ItemList({
    super.key,
    required this.animal,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                animal.name.substring(0, 1),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(animal.name),
                Text(animal.age),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Details(
                  animal: animal,
                ),
              ),
            );
          },
          icon: const Icon(
            Icons.chevron_right,
          ),
        ),
      ],
    );
  }
}
