import 'package:flutter_design/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDarkModeProvider = StateProvider((ref) => false);

final colorListProvider = Provider((ref)=>colorList);

final selectedColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref)=> ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme>{
  
  ThemeNotifier(): super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith( isDarkMode: ! state.isDarkMode);
  }

  void changeColorIndex(int selectedColor){
    state = state.copyWith(selectedColor: selectedColor);
  }

}