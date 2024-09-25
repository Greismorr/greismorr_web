import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/utils/theme/custom_text_styles.dart';
import '../../../../../domain/model/portfolio_sections.dart';
import '../../../../../modules/about/presentation/widgets/animated_background/animated_background_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.black,
      shadowColor: Colors.white,
      width: MediaQuery.sizeOf(context).width * .6,
      child: Stack(
        children: [
          const FittedBox(
            fit: BoxFit.cover,
            child: AnimatedBackgroundWidget(),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 40,
                child: DrawerHeader(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 4,
                    ),
                    child: Text(
                      FlutterI18n.translate(
                        context,
                        'drawer.drawerTitle',
                      ),
                      style: CustomTextStyles.menuOptions,
                    ),
                  ),
                ),
              ),
              ...context.read<PortfolioSections>().sections.map(
                    (section) => ListTile(
                      title: Text(
                        FlutterI18n.translate(
                          context,
                          section.name,
                        ),
                        style: CustomTextStyles.menuOptions,
                      ),
                      onTap: () {
                        Navigator.pop(context);

                        Scrollable.ensureVisible(
                          section.navigatorKey.currentContext!,
                          duration: const Duration(
                            milliseconds: 600,
                          ),
                        );
                      },
                    ),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
