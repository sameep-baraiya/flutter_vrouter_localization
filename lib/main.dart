import 'package:flutter_vrouter_localization/screens/app_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vrouter/vrouter.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_vrouter_localization/l10n/l10n.dart';
import 'package:flutter_vrouter_localization/provider/locale_provider.dart';

// Screens
import 'package:flutter_vrouter_localization/screens/main/chat_screen.dart';
import 'package:flutter_vrouter_localization/screens/main/feeds_screen.dart';
import 'package:flutter_vrouter_localization/screens/main/more_screen.dart';
import 'package:flutter_vrouter_localization/screens/main/play_screen.dart';
import 'package:flutter_vrouter_localization/screens/main/notification_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      builder: (context, child) {
        final provider = Provider.of<LocaleProvider>(context);

        return VRouter(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          locale: provider.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          routes: [
            VNester(
              path: '/',
              widgetBuilder: (child) => AppScreen(child: child),
              nestedRoutes: [
                VWidget(
                  path: '/',
                  widget: FeedsScreen(),
                ),
                VWidget(
                  path: '/play',
                  widget: PlayScreen(),
                ),
                VWidget(
                  path: '/chat',
                  widget: ChatScreen(),
                ),
                VWidget(
                  path: '/more',
                  widget: MoreScreen(),
                ),
                VWidget(
                  path: '/notification',
                  widget: NotificationScreen(),
                ),
              ],
            ),
          ],
        );
      });
}
