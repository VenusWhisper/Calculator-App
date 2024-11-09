import 'package:flutter_riverpod/flutter_riverpod.dart';

final displayProvider = StateProvider<String>((ref) => '0');
final historyProvider = StateProvider<List<int>>((ref) => []); // History list