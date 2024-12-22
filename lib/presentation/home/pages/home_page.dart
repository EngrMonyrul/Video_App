import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_k/common/widgets/custom_appbar.dart';
import 'package:project_k/common/widgets/custom_network_image.dart';
import 'package:project_k/utils/extensions/context_ext.dart';

import '../widgets/appbar_profile_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final screenSize = context.screenSize;

    return Scaffold(
      appBar: CustomAppbar(
        actions: [
          SizedBox(
            width: 16.h,
          ),

          /* <<--------->> appbar profile section <<---------->> */
          const Expanded(
            child: AppBarProfileSection(
              imageUrl:
                  "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
            ),
          ),
          SizedBox(
            width: 16.h,
          ),
        ],
      ),
      body: const Column(),
    );
  }
}
