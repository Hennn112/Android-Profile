import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  final Function(String, String, String, String) onSubmit;

  EditProfilePage({required this.onSubmit});

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _schoolController = TextEditingController();
  final _roleController = TextEditingController();
  final _aboutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _roleController,
                decoration: InputDecoration(labelText: 'Jurusan'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your school name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _aboutController,
                decoration: InputDecoration(labelText: 'Tentang Anda'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your school name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _schoolController,
                decoration: InputDecoration(labelText: 'Nama Sekolah'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your school name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Panggil fungsi onSubmit dengan nilai yang diinput
                    widget.onSubmit(
                      _usernameController.text,
                      _schoolController.text,
                      _roleController.text,
                      _aboutController.text,
                    );
                    Navigator.pop(context);
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
