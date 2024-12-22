import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_k/common/widgets/custom_appbar.dart';
import 'package:project_k/main.dart';
import 'package:project_k/utils/extensions/context_ext.dart';

import '../../../common/widgets/custom_network_image.dart';

class AppBarProfileSection extends StatelessWidget {
  const AppBarProfileSection({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Row(
      children: [
        /* <<--------->> profile picture <<---------->> */
        Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            border: Border.all(
              color: theme.colorScheme.primary,
              width: 1.5.w,
            ),
            borderRadius: BorderRadius.circular(10.h),
          ),
          child: CustomNetworkImage(
            borderRadiusGeometry: BorderRadius.circular(10.h),
            imageUrl: imageUrl,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),

        /* <<--------->> name <<---------->> */
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Monirul Islam",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineLarge?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              Text(
                "monirul.se.cseuu@gmail.com",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ],
          ),
        ),

        /* <<--------->> search button <<---------->> */
        Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            border: Border.all(
              color: theme.colorScheme.primary,
              width: 1.5.w,
            ),
            borderRadius: BorderRadius.circular(10.h),
          ),
          child: Icon(
            CupertinoIcons.search,
            color: theme.colorScheme.primary,
            size: 30.h,
          ),
        ),
      ],
    );
  }
}
