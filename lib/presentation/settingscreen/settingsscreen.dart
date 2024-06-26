import 'package:alfa_soyzen/presentation/Course.dart';
import 'package:alfa_soyzen/presentation/settingscreen/faqscreen.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const YogaAppBar(title: "Settings"),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            const SettingsTile(
              icon: Icons.account_circle,
              title: 'Account',
              iconColor: Color(0xFFEB5757),
            ),
            const SettingsTile(
              icon: Icons.notifications,
              title: 'Notifications',
              iconColor: Color(0xFF219653),
            ),
            const SettingsTile(
              icon: Icons.lock,
              title: 'Privacy',
              iconColor: Color(0xFF2F80ED),
            ),
            const SettingsTile(
              icon: Icons.help_outline,
              title: 'FAQ',
              iconColor: Color(0xFF9B51E0),
            ),
            const SettingsTile(
              icon: Icons.bar_chart,
              title: 'Statistics',
              iconColor: Color(0xFFF2C94C),
            ),
            const SettingsTile(
              icon: Icons.language,
              title: 'Language',
              iconColor: Color(0xFF56CCF2),
            ),
            const SettingsTile(
              icon: Icons.star,
              title: 'Rate Us',
              iconColor: Color(0xFF2F80ED),
            ),
            const SettingsTile(
              icon: Icons.info_outline,
              title: 'About',
              iconColor: Color(0xFF2F80ED),
            ),
          ],
        ).toList(),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: iconColor,
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF222222), // Código hex del color para los títulos
          fontFamily:
              'PTSans', // Asegúrate de que el nombre de la familia coincide con lo declarado en pubspec.yaml
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        // Add functionality to the settings tiles
        //navigate to faq on click in faq

        if (title == 'FAQ') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FAQScreen()),
          );
        }
      },
    );
  }
}
