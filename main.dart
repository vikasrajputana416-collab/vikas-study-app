
import 'package:flutter/material.dart';

void main() {
  runApp(const VikasStudyApp());
}

class VikasStudyApp extends StatelessWidget {
  const VikasStudyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vikas Study App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

const chapters = [
  ['Relations and Functions',
    'Study relations, functions, domain, codomain and range.'],
  ['Inverse Trigonometric Functions',
    'Study principal values, domains and identities.'],
  ['Matrices',
    'Learn matrix types, operations and multiplication.'],
  ['Determinants',
    'Study determinants, minors, cofactors and adjoint.'],
  ['Continuity and Differentiability',
    'Revise limits, continuity and differentiation rules.'],
  ['Applications of Derivatives',
    'Learn rate of change, tangents and maxima or minima.'],
  ['Integrals',
    'Study standard integrals and integration by parts.'],
  ['Applications of Integrals',
    'Learn how to calculate areas under curves.'],
  ['Differential Equations',
    'Study order, degree and methods of solving equations.'],
  ['Vector Algebra',
    'Learn vectors, dot product and cross product.'],
  ['Three Dimensional Geometry',
    'Study lines, direction ratios and angles in 3D.'],
  ['Linear Programming',
    'Learn constraints, feasible regions and optimal solutions.'],
  ['Probability',
    'Study conditional probability and Bayes theorem.'],
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vikas Study App'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const Text(
            'Class 12 Maths Notes',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          for (int i = 0; i < chapters.length; i++)
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('${i + 1}'),
                ),
                title: Text(chapters[i][0]),
                subtitle: const Text('Quick Notes'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => NotesPage(
                        title: chapters[i][0],
                        notes: chapters[i][1],
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

class NotesPage extends StatelessWidget {
  final String title;
  final String notes;

  const NotesPage({
    super.key,
    required this.title,
    required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maths Notes'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'QUICK NOTES',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              notes,
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
