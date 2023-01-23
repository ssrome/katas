const isPalindrome = require("./palindrome");

const cases = [
  ["abba", true],
  ["hello", false],
  ["Racecar", true],
  ["BaLler", false],
];

describe("'palindrome' utility", () => {
  test.each(cases)(
    "given %p as argument, returns %p",
    (firstArg, expectedResult) => {
      const result = isPalindrome(firstArg);
      expect(result).toEqual(expectedResult);
    }
  );
});
