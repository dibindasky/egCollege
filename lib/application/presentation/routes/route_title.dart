import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void changeWebTitle(BuildContext context, String lebel) =>
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => Future.delayed(
        const Duration(milliseconds: 150),
        () => SystemChrome.setApplicationSwitcherDescription(
          ApplicationSwitcherDescription(label: lebel),
        ),
      ),
    );
