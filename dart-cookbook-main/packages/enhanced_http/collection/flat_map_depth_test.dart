import 'package:flodash/flodash.dart' as flodash;

import 'package:flutter_test/flutter_test.dart';

main() {
  test("depth-1", () {
    expect(
        flodash.flatMapDepth(
            [1, 2, 3, 4],
            (value) => [
                  [value, value * 2],
                  [value, value / 2]
                ],
            depth: 1),
        equals([
          [1, 2],
          [1, 0.5],
          [2, 4],
          [2, 1.0],
          [3, 6],
          [3, 1.5],
          [4, 8],
          [4, 2.0]
        ]));
  });
  test("depth-2", () {
    expect(
        flodash.flatMapDepth(
            [1, 2, 3, 4],
            (value) => [
                  [value, value * 2],
                  [value, value / 2]
                ],
            depth: 2),
        equals([1, 2, 1, 0.5, 2, 4, 2, 1, 3, 6, 3, 1.5, 4, 8, 4, 2]));
  });
}
