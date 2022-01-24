import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage dart totals.dart <inputFile.c ');
    exit(1);
  }

  final inputFile = args.first;
  final lines = File(inputFile).readAsLinesSync();
  final totalDurationByTag = <String, double>{};

  lines.removeAt(0);
  var totalDuration = 0.0;
  for (var line in lines) {
    final values = line.split(',');
    final durationStr = values[3].replaceAll('"', '');
    final duration = double.parse(durationStr);
    final tag = values[5].replaceAll('"', '');
    final previousTotal = totalDurationByTag[tag];
    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = previousTotal + duration;
    }
    totalDuration += duration;
  }
  for (var entries in totalDurationByTag.entries) {
    final durationFormatted = entries.value.toStringAsFixed(1);
    final tag = entries.key == '' ? 'Unallocated' : entries.key;
    print("$tag : $durationFormatted h");
  }
  print('Totall for all tags ${totalDuration.toStringAsFixed(1)}h');
}
