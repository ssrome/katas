const isPalindrome = require("./palindrome");

describe("isPalindrome", () => {
  it("returns true if it's a palindrome", () => {
    const result = isPalindrome("abba");
    expect(result).toBe(true);
  });
  it("returns false if it's not a palindrome", () => {
    const result = isPalindrome("hello");
    expect(result).toBe(false);
  });
  it("returns true if it's a palindrome with uppercase letters", () => {
    const result = isPalindrome("Racecar");
    expect(result).toBe(true);
  });
});
