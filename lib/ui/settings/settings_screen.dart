import 'package:flutter/material.dart';
import 'package:learn_dart/helper/ui_helper.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String? selectedTheme;

  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    // final localeProvider = Provider.of<LocaleProvider>(context);
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings")
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            smallHeading("Accounts", colorScheme),
            ListTile(
              onTap: () {

              },
              leading: const Icon(Icons.account_circle_outlined),
              title: const Text("User name"),
              subtitle: const Text("someone@example.com"),

              // title: Text(FirebaseConstant.userData!['name']),
              // subtitle: Text(FirebaseConstant.userData!['email']),
              horizontalTitleGap: 30,
            ),
            const Divider(),
            smallHeading("General", colorScheme),
            ListTile(
              onTap: () {
                //localeProvider.setLocale(const Locale('hi', 'IN'));
              },
              leading: const Icon(Icons.translate),
              title: const Text("Language"),
              subtitle: const Text("English"),
              horizontalTitleGap: 30,
            ),
            ListTile(
              onTap: () {UIHelper.
                openBottomSheet(
                  context: context,
                  title: "Select an option to change theme",
                  child: const Text("Hello")//themeOptions(themeProvider),
                );
              },
              leading: const Icon(Icons.brightness_4_outlined),
              title: const Text("Theme"),
              subtitle: const Text("System default"),
              horizontalTitleGap: 30,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.notifications_outlined),
              title: const Text("Notifications"),
              subtitle: const Text("Manage notification preferences"),
              horizontalTitleGap: 30,
            ),
            const Divider(),
            smallHeading("More", colorScheme),
            ListTile(
              onTap: () async {
                await Share.share(
                  "Hi, checkout this amazing Astroshakti app",// ${ApiConstant.playStoreUrl}",
                  subject: "description of app 😊,",
                );
              },
              leading: const Icon(Icons.share_outlined),
              title: const Text("Share"),
              horizontalTitleGap: 30,
            ),
            ListTile(
              onTap: () {
                //launchUrlString(ApiConstant.aboutUsUrl, mode: LaunchMode.externalApplication);
              },
              leading: const Icon(Icons.info_outline),
              trailing: const Icon(Icons.open_in_new),
              title: const Text("About Us"),
              horizontalTitleGap: 30,
            ),
            ListTile(
              onTap: () {
                //launchUrlString(ApiConstant.privacyPolicyUrl, mode: LaunchMode.externalApplication);
              },
              leading: const Icon(Icons.shield_outlined),
              trailing: const Icon(Icons.open_in_new),
              title: const Text("Privacy Policy"),
              horizontalTitleGap: 30,
            ),
            ListTile(
              onTap: () async {
                //await launchUrl(launchUri);
              },
              leading: const Icon(Icons.tips_and_updates_outlined),
              trailing: const Icon(Icons.alternate_email),
              title: const Text("Suggestions"),
              horizontalTitleGap: 30,
            ),
            ListTile(
              onTap: () async {
                //await launchUrl(launchUri);
              },
              leading: const Icon(Icons.help_outline),
              trailing: const Icon(Icons.alternate_email),
              title: const Text("Help and Feedback"),
              horizontalTitleGap: 30,
            ),
            const Divider(),
            smallHeading("More", colorScheme),
            ListTile(
              onTap: () {UIHelper.
                openBottomSheet(
                    context: context, child: logOutSheet(context));
              },
              leading: const Icon(Icons.logout),
              title: const Text("Sign out"),
              horizontalTitleGap: 30,
            ),
            ListTile(
              onTap: () {
                launchUrlString("http://astroshakti.us/",
                    mode: LaunchMode.externalApplication);
              },
              leading: const Icon(Icons.delete_outline),
              title: const Text("Delete Account"),
              horizontalTitleGap: 30,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Not find what you are looking for ?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                          onPressed: () {},
                          child: const Text("\u2022    Request new feature")),
                      TextButton(
                          onPressed: () {
                            //launchUrlString(ApiConstant.playStoreUrl, mode: LaunchMode.externalApplication);
                          },
                          child: const Text("\u2022    Rate us on Store"))
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      "assets/images/search.png",
                      height: 150,
                    ))
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget smallHeading(String heading, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Text(
        heading,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: colorScheme.primary,
        ),
      ),
    );
  }

  // Widget themeOptions(ThemeProvider provider) {
  //   var themeMode = provider.themeMode;
  //
  //   return Column(
  //     children: mapThemeMode.keys.map((e) {
  //       bool isSelected = themeMode == mapThemeMode[e]!;
  //       return ListTile(
  //         onTap: () {
  //           Navigator.pop(context);
  //           provider.setTheme(mapThemeMode[e]!);
  //         },
  //         selectedColor: Colors.white,
  //         selectedTileColor: Colors.blue,
  //         selected: isSelected,
  //         shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
  //         title: Text(e),
  //         trailing: isSelected
  //             ? const Icon(
  //                 Icons.check,
  //                 color: Colors.white,
  //               )
  //             : const SizedBox(),
  //       );
  //     }).toList(),
  //   );
  // }

  Widget logOutSheet(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text("Are You sure to want to logout"),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width / 2 - 40,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.surfaceContainerHighest,
                  foregroundColor: colorScheme.onSurfaceVariant,
                ),
                onPressed: () {
                  //Provider.of<LogoutProvider>(context).logout(context);
                  //context.read<LogoutProvider>().logout(context);
                },
                icon: const Icon(Icons.logout),
                label: const Text("Yes Logout"),
              ),
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width / 2 - 40,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                  foregroundColor: colorScheme.onPrimary,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
                label: const Text("Cancel"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}




/*
Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
              child: SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red.shade700,
                      padding: EdgeInsets.zero
                  ),
                  icon: const Icon(Icons.delete_forever),
                  label: const Text(
                    "Delete My Account",
                    style: UiConstant.smallHeading,
                  ),
                ),
              ),
            ),
 */
