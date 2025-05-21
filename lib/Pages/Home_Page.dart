import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  final TextEditingController taskController = TextEditingController();

  late final String uid;

  @override
  void initState() {
    super.initState();
    final user = auth.currentUser;
    if (user != null) {
      uid = user.uid;
    } else {
      // If user is null, redirect to login page or handle appropriately
      Navigator.pop(context);
    }
  }

  void addTask() async {
    final task = taskController.text.trim();
    if (task.isEmpty) return;

    await firestore.collection('users').doc(uid).collection('tasks').add({
      'task': task,
      'timestamp': FieldValue.serverTimestamp(),
    });

    taskController.clear();
  }

  void deleteTask(String taskId) async {
    await firestore
        .collection('users')
        .doc(uid)
        .collection('tasks')
        .doc(taskId)
        .delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await auth.signOut();
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: taskController,
              decoration: const InputDecoration(
                labelText: 'New task',
                suffixIcon: Icon(Icons.add),
              ),
              onSubmitted: (_) => addTask(),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: firestore
                    .collection('users')
                    .doc(uid)
                    .collection('tasks')
                    .orderBy('timestamp', descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return const Center(child: Text('No tasks yet'));
                  }

                  final tasks = snapshot.data!.docs;

                  return ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      final task = tasks[index];
                      return ListTile(
                        title: Text(task['task']),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => deleteTask(task.id),
                        ),
                      );
                    },
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