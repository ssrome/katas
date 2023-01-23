function isPalindrome(word) {
  let lowercaseWord = word.toLowerCase();
  let wordReversed = lowercaseWord.toLowerCase().split("").reverse().join("");

  if (wordReversed === lowercaseWord) {
    return true;
  } else {
    return false;
  }
}
module.exports = isPalindrome;
