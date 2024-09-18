import 'package:flutter/material.dart';
import 'tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Input Data Mahasiswa",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(
                  labelText: "Nama",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon isi nama Anda';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _nimController,
                decoration: const InputDecoration(
                  labelText: "NIM",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon isi NIM Anda';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _tahunController,
                decoration: const InputDecoration(
                  labelText: "Tahun Lahir",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.calendar_today),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon isi tahun lahir Anda';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Mohon masukkan angka yang valid';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      String nama = _namaController.text;
                      String nim = _nimController.text;
                      int tahun = int.parse(_tahunController.text);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TampilData(nama: nama, nim: nim, tahun: tahun)
                      ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: const Text(
                    'Simpan',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}