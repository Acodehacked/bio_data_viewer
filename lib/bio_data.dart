import 'package:flutter/material.dart';

class BioDataPage extends StatelessWidget {
  const BioDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 60,
                bottom: 30,
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF2563EB),
                    Color(0xFF1E40AF),
                  ],
                ),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assets/abin.jpg'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Abin Antony',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'UI/UX Designer • Full Stack Developer',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _infoCard(
                    title: 'About Me',
                    icon: Icons.person_outline,
                    child: const Text(
                      'Passionate Full Stack Developer and UI/UX Designer with experience in building scalable web applications, cloud systems, and modern digital experiences.',
                    ),
                  ),

                  const SizedBox(height: 16),

                  _infoCard(
                    title: 'Education',
                    icon: Icons.school_outlined,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'B.Tech Engineering',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('St. Joseph College of Engineering & Technology'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  _infoCard(
                    title: 'Contact',
                    icon: Icons.contact_mail_outlined,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.email),
                          title: Text('abin@example.com'),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.phone),
                          title: Text('+91 XXXXX XXXXX'),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.location_on),
                          title: Text('Kerala, India'),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  _infoCard(
                    title: 'Skills',
                    icon: Icons.code,
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: const [
                        Chip(label: Text('Next.js')),
                        Chip(label: Text('TypeScript')),
                        Chip(label: Text('Node.js')),
                        Chip(label: Text('Go')),
                        Chip(label: Text('PostgreSQL')),
                        Chip(label: Text('AWS')),
                        Chip(label: Text('Docker')),
                        Chip(label: Text('Kubernetes')),
                        Chip(label: Text('Flutter')),
                        Chip(label: Text('UI/UX')),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  _infoCard(
                    title: 'Projects',
                    icon: Icons.work_outline,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text('Tracklio'),
                          subtitle: Text(
                            'Construction Project Management Platform',
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text('NexusHR'),
                          subtitle: Text(
                            'Enterprise HR Management System',
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text('Bibliya'),
                          subtitle: Text(
                            'Bible Quiz & Learning Platform',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _infoCard({
    required String title,
    required IconData icon,
    required Widget child,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(height: 24),
            child,
          ],
        ),
      ),
    );
  }
}