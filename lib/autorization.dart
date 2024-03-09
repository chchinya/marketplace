import 'package:flutter/material.dart';
import 'package:marketplace/list.dart';
import 'package:marketplace/registration.dart';

class AutorizationRoute extends StatelessWidget {
  const AutorizationRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Авторизация',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: ConstrainedBox(
              constraints: const BoxConstraints.expand(width: 300, height: 300),
              child: Column(
                children: <Widget>[
                  const Expanded(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Логин",
                        hintText: "Введите почту или логин",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Expanded(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Пароль",
                        hintText: "Введите пароль",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: ElevatedButton(
                                child: const Text('Вход'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductList()),
                                  );
                                }),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            child: ElevatedButton(
                              child: const Text('Регистрация'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegistrationRoute()),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
