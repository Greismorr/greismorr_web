import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greismorr_web/app/modules/contacts/domain/model/contact.dart';
import 'package:greismorr_web/core/utils/is_mobile_version.dart';
import 'package:greismorr_web/core/utils/theme/custom_colors.dart';
import 'package:greismorr_web/core/utils/theme/custom_text_styles.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsSection extends StatelessWidget {
  const ContactsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                FlutterI18n.translate(
                  context,
                  'contacts.sectionBody',
                ),
                style: isMobileVersion(context)
                    ? CustomTextStyles.section.copyWith(
                        fontSize: 28,
                      )
                    : CustomTextStyles.section,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
          ),
          child: Wrap(
            runSpacing: 16,
            spacing: 16,
            children: context
                .read<ContactList>()
                .contacts
                .map(
                  (contact) => InkWell(
                    onTap: () => launchUrl(
                      Uri.parse(
                        contact.url,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 8,
                          ),
                          child: SvgPicture.asset(
                            contact.iconPath,
                            width: 24,
                            height: 24,
                            colorFilter: const ColorFilter.mode(
                              CustomColors.gray900,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        Text(
                          contact.contactMean,
                          style: CustomTextStyles.body14.copyWith(
                            color: CustomColors.gray900,
                          ),
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
