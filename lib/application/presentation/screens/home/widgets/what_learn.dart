import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 40),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isDesktop = constraints.maxWidth > 768;

          if (isDesktop) {
            return const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: BookImage(),
                ),
                SizedBox(width: 60),
                Expanded(
                  flex: 1,
                  child: BookContent(),
                ),
              ],
            );
          } else {
            return const Column(
              children: [
                BookImage(),
                SizedBox(height: 40),
                BookContent(),
              ],
            );
          }
        },
      ),
    );
  }
}

class BookImage extends StatelessWidget {
  const BookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background decorative elements
          Positioned(
            top: -20,
            right: -20,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          ),
          Positioned(
            bottom: -10,
            left: -10,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
          // Book container
          Container(
            width: 280,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.orange[400],
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "DESIGNER'S\nHANDBOOK",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Decorative illustration placeholder
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.palette,
                          size: 60,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BookContent extends StatelessWidget {
  const BookContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Book By Joomshaper",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Design\nYour Way,\nOnly Better",
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            height: 1.1,
          ),
        ),
        const SizedBox(height: 20),
        // Star rating
        Row(
          children: [
            ...List.generate(
                5,
                (index) => const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20,
                    )),
            const SizedBox(width: 10),
            Text(
              "4.7 (126 Reviews)",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          "The Designer's Handbook is a book about how design serves as the\ncommunication between object and user, and how to optimize that\nin order to make the experience of using the object pleasurable.",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
            height: 1.6,
          ),
        ),
        const SizedBox(height: 30),
        // Buttons
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[600],
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text(
                "Get The Book",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Text(
              "or",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(width: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                "Order A Hard Copy",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.purple[600],
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        // Page indicators
        Row(
          children: List.generate(
              5,
              (index) => Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: index == 0 ? Colors.purple[600] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(4),
                    ),
                  )),
        ),
      ],
    );
  }
}

class LearningSection extends StatelessWidget {
  const LearningSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          const Text(
            "What Will You Learn ?",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 60),
          LayoutBuilder(builder: (context, constraints) {
            bool isDesktop = constraints.maxWidth > 768;

            if (isDesktop) {
              return const Row(children: [
                Expanded(
                    child: LearningCard(
                  number: "01",
                  title: "Understand core principles and theories",
                  description:
                      "Gain a strong foundation by exploring essential concepts, frameworks, and ideas that shape the subject, helping you build clear, confident knowledge for deeper learning and practical use.",
                )),
                SizedBox(width: 40),
                Expanded(
                    child: LearningCard(
                  number: "02",
                  title: "Apply learning through real-life case studies",
                  description:
                      "Connect theory to practice by examining real-world examples and scenarios, allowing you to understand how concepts work in action and develop practical problem-solving skills.",
                ))
              ]);
            } else {
              return const Column(children: [
                LearningCard(
                  number: "01",
                  title: "Understand core principles and theories",
                  description:
                      "Gain a strong foundation by exploring essential concepts, frameworks, and ideas that shape the subject, helping you build clear, confident knowledge for deeper learning and practical use.",
                ),
                SizedBox(height: 30),
                LearningCard(
                  number: "02",
                  title: "Apply learning through real-life case studies",
                  description:
                      "Connect theory to practice by examining real-world examples and scenarios, allowing you to understand how concepts work in action and develop practical problem-solving skills.",
                )
              ]);
            }
          })
        ]));
  }
}

class LearningCard extends StatelessWidget {
  final String number;
  final String title;
  final String description;

  const LearningCard({
    super.key,
    required this.number,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 20,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            number,
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.purple[300],
            ),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
          Text(description,
              style:
                  TextStyle(fontSize: 16, color: Colors.grey[600], height: 1.6))
        ]));
  }
}
