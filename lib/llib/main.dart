Dart

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

const chapters = <Map<String, String>>[
  {
    'title': '1. Relations and Functions',
    'notes': 'A relation connects elements of two sets. '
        'A function assigns each input exactly one output. '
        'Revise domain, codomain, range and types of functions.'
  },
  {
    'title': '2. Inverse Trigonometric Functions',
    'notes': 'Study principal value branches, domains and ranges. '
        'Important identities include sin⁻¹(x) + cos⁻¹(x) = π/2 '
        'for x in [-1, 1].'
  },
  {
    'title': '3. Matrices',
    'notes': 'A matrix is a rectangular arrangement of numbers. '
        'Learn order, types, addition, multiplication, transpose '
        'and symmetric matrices.'
  },
  {
    'title': '4. Determinants',
    'notes': 'Learn determinants of square matrices, minors, '
        'cofactors, properties and the adjoint. '
        'For a 2×2 matrix, determinant = ad - bc.'
  },
  {
    'title': '5. Continuity and Differentiability',
    'notes': 'A function is continuous at a point when its limit '
        'equals its value there. Revise derivatives, chain rule, '
        'implicit differentiation and logarithmic differentiation.'
  },
  {
    'title': '6. Applications of Derivatives',
    'notes': 'Derivatives help find rates of change, increasing '
        'and decreasing intervals, tangents, normals and '
        'local maxima or minima.'
  },
  {
    'title': '7. Integrals',
    'notes': 'Integration is the reverse process of differentiation. '
        'Revise standard integrals, substitution, integration '
        'by parts and partial fractions.'
  },
  {
    'title': '8. Applications of Integrals',
    'notes': 'Definite integrals can calculate areas under curves. '
        'Draw the graph, identify the limits and determine '
        'which function lies above the other.'
  },
  {
    'title': '9. Differential Equations',
    'notes': 'A differential equation contains derivatives. '
        'Learn order, degree, general and particular solutions, '
        'variable separation and linear equations.'
  },
  {
    'title': '10. Vector Algebra',
    'notes': 'Vectors have magnitude and direction. '
        'Study vector addition, scalar multiplication, dot product '
        'and cross product.'
  },
  {
    'title': '11. Three Dimensional Geometry',
    'notes': 'Study direction ratios, direction cosines, equations '
        'of lines in space and angles between lines.'
  },
  {
    'title': '12. Linear Programming',
    'notes': 'Formulate an objective function and constraints. '
        'Plot the feasible region and test its corner points '
        'to find the optimum value.'
  },
  {
    'title': '13. Probability',
    'notes': 'Revise conditional probability, multiplication rule, '
        'independent events, total probability and Bayes theorem.'
  },
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Class 12 Mathematics',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text('Choose a chapter to read its notes.'),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: chapters.length,
                itemBuilder: (context, index) {
                  final chapter = chapters[index];

                  return Card(
                    child: ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.menu_book),
                      ),
                      title: Text(chapter['title']!),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => NotesPage(
                              title: chapter['title']!,
                              notes: chapter['notes']!,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
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
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'QUICK NOTES',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            notes,
            style: const TextStyle(
              fontSize: 18,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Keep practising questions from this chapter!',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
