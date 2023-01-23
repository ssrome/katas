const isLeapYear = require("./isLeapYear")

const cases = [
  [2000, "Leap year"],
  [1700, "Not a leap year"],
  [1800, "Not a leap year"],
  [1900, "Not a leap year"],
  [2100, "Not a leap year"],
  [2008, "Leap year"],
  [2012, "Leap year"],
  [2016, "Leap year"],
  [2017, "Not a leap year"],
  [2018, "Not a leap year"],
  [2019, "Not a leap year"],
  [4000, "Not a leap year"],
  [8000, "Not a leap year"],
  [12000, "Not a leap year"],
];

describe("'leap-years' utility", () => {
  test.each(cases)(
    "given %p as an argument, returns %p",
    (arg, expectedResult) => {
      const result = isLeapYear(arg);
      expect(result).toEqual(expectedResult);
    }
  );
});
