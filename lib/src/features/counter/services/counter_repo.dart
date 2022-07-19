import 'package:counter_my_app/src/features/counter/models/counter.dart';

abstract class CounterRepo {
  late List<Counter> _counters;

  void addCounter(Counter count);

  List<Counter> getCounters();

  Counter? getCounter(String name);

  void saveCounter(Counter counter);
}
