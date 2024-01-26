import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAbhayaLibreErrorContainer =>
      theme.textTheme.bodyLarge!.abhayaLibre.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyLargeAlfaSlabOneDeeporange700 =>
      theme.textTheme.bodyLarge!.alfaSlabOne.copyWith(
        color: appTheme.deepOrange700.withOpacity(0.49),
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodySmallInterGray800 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallRubikPrimaryContainer =>
      theme.textTheme.bodySmall!.rubik.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Headline text style
  static get headlineLarge32 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
      );
  static get headlineLargeBlack90002 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90002,
        fontSize: 32.fSize,
      );
  static get headlineLargeBlack9000230 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90002,
        fontSize: 30.fSize,
      );
  static get headlineLargeGreenA200 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.greenA200,
        fontSize: 30.fSize,
      );
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 30.fSize,
      );
  static get headlineSmall24 => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 24.fSize,
      );
  static get headlineSmallAbhayaLibreExtraBoldBlack90002 =>
      theme.textTheme.headlineSmall!.abhayaLibreExtraBold.copyWith(
        color: appTheme.black90002,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w800,
      );
  // Label text style
  static get labelLargeAbhayaLibreBlack90001 =>
      theme.textTheme.labelLarge!.abhayaLibre.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeAbhayaLibreMediumBlack90001 =>
      theme.textTheme.labelLarge!.abhayaLibreMedium.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAbhayaLibreMediumBlack90002 =>
      theme.textTheme.labelLarge!.abhayaLibreMedium.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAbhayaLibreMediumDeeporange700 =>
      theme.textTheme.labelLarge!.abhayaLibreMedium.copyWith(
        color: appTheme.deepOrange700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAbhayaLibreMediumDeeporange700Medium =>
      theme.textTheme.labelLarge!.abhayaLibreMedium.copyWith(
        color: appTheme.deepOrange700.withOpacity(0.46),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAbhayaLibreMediumGreenA200 =>
      theme.textTheme.labelLarge!.abhayaLibreMedium.copyWith(
        color: appTheme.greenA200,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAbhayaLibreMediumOnPrimaryContainer =>
      theme.textTheme.labelLarge!.abhayaLibreMedium.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAbhayaLibreMediumPrimary =>
      theme.textTheme.labelLarge!.abhayaLibreMedium.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAbhayaLibreSemiBoldBlack90002 =>
      theme.textTheme.labelLarge!.abhayaLibreSemiBold.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeAbhayaLibreSemiBoldBlack90002SemiBold =>
      theme.textTheme.labelLarge!.abhayaLibreSemiBold.copyWith(
        color: appTheme.black90002.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeAbhayaLibreSemiBoldDeeporangeA200 =>
      theme.textTheme.labelLarge!.abhayaLibreSemiBold.copyWith(
        color: appTheme.deepOrangeA200,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeAbhayaLibreSemiBoldff000000 =>
      theme.textTheme.labelLarge!.abhayaLibreSemiBold.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeAbhayaLibreYellow800 =>
      theme.textTheme.labelLarge!.abhayaLibre.copyWith(
        color: appTheme.yellow800,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get labelLargeBlack90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get labelLargeBlack9000213 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90002.withOpacity(0.53),
        fontSize: 13.fSize,
      );
  static get labelLargeBlack90002_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90002.withOpacity(0.53),
      );
  static get labelLargeDeeporangeA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA200,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLarge23 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
      );
  static get titleLargeRobotoSecondaryContainer =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(0.64),
        fontWeight: FontWeight.w400,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumAbhayaLibreMediumGray400 =>
      theme.textTheme.titleMedium!.abhayaLibreMedium.copyWith(
        color: appTheme.gray400,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumAbhayaLibreMediumGreenA200 =>
      theme.textTheme.titleMedium!.abhayaLibreMedium.copyWith(
        color: appTheme.greenA200,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumAbhayaLibreMediumPrimary =>
      theme.textTheme.titleMedium!.abhayaLibreMedium.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter;
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallAbhayaLibre =>
      theme.textTheme.titleSmall!.abhayaLibre.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallAbhayaLibreBlack90002 =>
      theme.textTheme.titleSmall!.abhayaLibre.copyWith(
        color: appTheme.black90002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallAbhayaLibreBlack90002Bold =>
      theme.textTheme.titleSmall!.abhayaLibre.copyWith(
        color: appTheme.black90002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallAbhayaLibreGreenA70091 =>
      theme.textTheme.titleSmall!.abhayaLibre.copyWith(
        color: appTheme.greenA70091,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallAbhayaLibreSecondaryContainer =>
      theme.textTheme.titleSmall!.abhayaLibre.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallAbhayaLibreWhiteA70001 =>
      theme.textTheme.titleSmall!.abhayaLibre.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallAbhayaLibreYellow800 =>
      theme.textTheme.titleSmall!.abhayaLibre.copyWith(
        color: appTheme.yellow800,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallAbhayaLibreff000000 =>
      theme.textTheme.titleSmall!.abhayaLibre.copyWith(
        color: Color(0XFF000000),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get titleSmallInterGray800 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray800,
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get abhayaLibre {
    return copyWith(
      fontFamily: 'Abhaya Libre',
    );
  }

  TextStyle get abhayaLibreSemiBold {
    return copyWith(
      fontFamily: 'Abhaya Libre SemiBold',
    );
  }

  TextStyle get abhayaLibreMedium {
    return copyWith(
      fontFamily: 'Abhaya Libre Medium',
    );
  }

  TextStyle get abhayaLibreExtraBold {
    return copyWith(
      fontFamily: 'Abhaya Libre ExtraBold',
    );
  }

  TextStyle get alfaSlabOne {
    return copyWith(
      fontFamily: 'Alfa Slab One',
    );
  }
}
