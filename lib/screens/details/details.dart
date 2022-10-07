import 'package:adopet/model/animal.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Animal animal;
  Details({
    super.key,
    required this.animal,
  });

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          animal.name,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset(
              animal.photo,
            ),
            Padding(
              padding: const EdgeInsets.all(
                16,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      animal.name,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        action(
                          icon: Icons.call,
                          text: "Ligar",
                        ),
                        action(
                          icon: Icons.message_outlined,
                          text: "Mensagem SMS",
                        ),
                        action(
                          icon: Icons.videocam,
                          text: "Video",
                        ),
                        action(
                          icon: Icons.mail_outline,
                          text: "Enviar email",
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.call),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(animal.age),
                                const Text("Celular"),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.videocam),
                            Icon(Icons.message_outlined)
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        const Icon(Icons.email_outlined),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(animal.age),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column action({
    required IconData icon,
    required String text,
  }) {
    return Column(
      children: [
        Icon(icon),
        Text(text),
      ],
    );
  }
}
