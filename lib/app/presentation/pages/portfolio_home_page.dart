import 'package:flutter/material.dart';

import '../../modules/about/presentation/about_section_widget.dart';
import 'widgets/appbar_widget.dart';

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({
    super.key,
  });

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(
          double.infinity,
          kToolbarHeight,
        ),
        child: AppbarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AboutSectionWidget(),
          ],
        ),
      ),
    );
  }
}
