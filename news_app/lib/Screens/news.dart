import 'package:flutter/material.dart';

// import '../Shared/like_button.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 2 / 5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/test.jpeg"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              height: MediaQuery.of(context).size.height * 5.2 / 8,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(50))),
              child: const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 30, 52, 1),
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Center(
            child: SizedBox(
              height: 20,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 3.07 / 5,
            right: MediaQuery.of(context).size.width * 1 / 6,
            left: MediaQuery.of(context).size.width * 1 / 6,
            child: Center(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      width: 300,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Sunday, 9 May 2021\n\n ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                              WidgetSpan(child: SizedBox(height: 10)),
                              TextSpan(
                                text:
                                "Crypto investors should be prepared to lose all their money, BOE governor says\n",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              WidgetSpan(child: SizedBox(height: 50)),
                              TextSpan(
                                text: "Published by Ryan Browne",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}