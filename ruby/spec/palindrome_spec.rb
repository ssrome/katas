def isPalindrome(string)
    lowercaseString = string.downcase
    reverseString = lowercaseString.reverse
    if (reverseString == lowercaseString) then
        return true
    end
    return false
end

testValues = [
    ["abba", true],
    ["hello", false],
    ["Racecar", true],
    ["BaLler", false],
]

describe "isPalidrome acceptance tests" do
    testValues.each do | value, answer |
        it "returns #{answer} when the string is #{value}" do
            result = isPalindrome(value)
            expect(result).to eq(answer)
        end
    end
end

describe "isPalidrome unit tests" do
    it "returns true when the word is a palindrome" do
        result = isPalindrome("abba")
        expect(result).to eq(true)
    end
    it "returns false when the word is not a palindrome" do
        result = isPalindrome("chair")
        expect(result).to eq(false)
    end
    it "returns true when the word has uppercase letters and is a palindrome" do
        result = isPalindrome("Abba")
        expect(result).to eq(true)
    end
end
