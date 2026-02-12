import 'package:flutter/material.dart';

void main() => runApp(const AppFerreteria());

class AppFerreteria extends StatelessWidget {
  const AppFerreteria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ferreteria",
      home: Materiales(),
    );
  }
} // fin clase AppFerreteria

class Materiales extends StatelessWidget {
  const Materiales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ferreteria el Muela, en frente de carnitas el Nava",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Color.fromARGB(255, 0, 0, 0)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.redAccent),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        children: [
          // 1. Diseño Neumórfico Suave (Azul)
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              onTap: () => print("Accediendo a Perfil..."),
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFE3F2FD),
                child: Icon(Icons.person_rounded, color: Colors.blueAccent),
              ),
              title: const Text('Mi Perfil', style: TextStyle(fontWeight: FontWeight.w600)),
              subtitle: const Text('Configura tu información personal'),
              trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 12),

          // 2. Diseño Vibrante (Púrpura)
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              onTap: () => print("Abriendo Notificaciones..."),
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFF3E5F5),
                child: Icon(Icons.notifications_active, color: Colors.purple),
              ),
              title: const Text('Notificaciones', style: TextStyle(fontWeight: FontWeight.w600)),
              subtitle: const Text('Revisa tus mensajes recientes'),
              trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 12),

          // 3. Diseño Energético (Naranja)
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              onTap: () => print("Explorando Ajustes..."),
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFFFF3E0),
                child: Icon(Icons.settings_suggest, color: Colors.orange),
              ),
              title: const Text('Ajustes', style: TextStyle(fontWeight: FontWeight.w600)),
              subtitle: const Text('Personaliza tu experiencia'),
              trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 12),

          // 4. Diseño de Seguridad (Verde)
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              onTap: () => print("Validando Seguridad..."),
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFE8F5E9),
                child: Icon(Icons.shield_rounded, color: Colors.green),
              ),
              title: const Text('Seguridad', style: TextStyle(fontWeight: FontWeight.w600)),
              subtitle: const Text('Tus datos están protegidos'),
              trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
} // fin clase Materiales