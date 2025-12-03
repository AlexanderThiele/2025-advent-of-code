import 'dart:io';

void main(List<String> arguments) {
  final file = File('bin/input.txt');
  if (!file.existsSync()) {
    print('Error: bin/input.txt not found.');
    return;
  }

  final lines = file.readAsLinesSync();
  int totalJoltage = 0;

  for (final line in lines) {
    if (line.isEmpty) continue;
    totalJoltage += calculateMaxJoltage(line);
  }

  print('Total output joltage: $totalJoltage');
}

int calculateMaxJoltage(String bank) {
  int maxJoltage = 0;
  final digits = bank.split('').map(int.parse).toList();

  // We need to pick two batteries (digits) at indices i and j where i < j.
  // The value is digits[i] * 10 + digits[j].
  // To maximize this, we iterate through all possible first digits (digits[i]).

  for (int i = 0; i < digits.length - 1; i++) {
    int firstDigit = digits[i];

    // Optimization: If we already found a maxJoltage starting with a digit larger than this one,
    // we technically don't need to check, but since we need to check ALL pairs to be safe
    // (e.g. 89 vs 91 - 9 is bigger start but 89 < 91? No, 9x is always > 8x).
    // So actually, we only care about the largest possible first digit.
    // However, the largest first digit might be at the very end where no second digit exists.
    // But the loop condition i < digits.length - 1 handles that.

    // So, find the max digit in the remaining part of the string
    int maxSecondDigit = -1;
    for (int j = i + 1; j < digits.length; j++) {
      if (digits[j] > maxSecondDigit) {
        maxSecondDigit = digits[j];
      }
    }

    if (maxSecondDigit != -1) {
      int currentJoltage = firstDigit * 10 + maxSecondDigit;
      if (currentJoltage > maxJoltage) {
        maxJoltage = currentJoltage;
      }
    }
  }

  return maxJoltage;
}
