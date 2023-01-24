#require("./string_calculator.rb")

class NegativeError < StandardError
end

def Add(string_numbers)
    delimiter = ","

    if string_numbers.start_with?("//[") then
        endBracketIndex = string_numbers.index("]")
        #print endBracketIndex
        delimiter = string_numbers.slice(3, endBracketIndex - 3)
        print delimiter
    elsif string_numbers.start_with?("//") then
        delimiter = string_numbers[2]
    end

    negatives = []

    stringArray = string_numbers.gsub("\n", delimiter).split(delimiter)

    stringArray.each { |num| negatives.push(num.to_i) if (num.to_i < 0) } 
    
    if negatives.length > 0 then
        raise NegativeError, "negatives not allowed: #{negatives}"
    else
        intArray = []
        
        stringArray.each { | value | intArray.push(value.to_i) if (value.to_i <= 1000) }
        
        return intArray.sum
    end
    return 0
end

cases = [
    ["", 0],
    ["1", 1],
    ["1,2",3],
    ["0,1,2,3,4,5,6,7,8,9,10", 55],
    ["1\n2,3", 6],
    ["//;\n1;2", 3],
    ["2,1001", 2],
    ["//[***]\n1***2***3", 6],
    # ["//[*][%]\n1*2%3", 6]
]

exceptionCases = [
    ["-1,\n2,-10", "negatives not allowed: [-1, -10]"],
    ["//;\n1;2;-1", "negatives not allowed: [-1]"],
]

describe "String calculator acceptance tests" do
    cases.each do | value, answer |
        it "returns #{answer} when the string is #{value}" do
            result = Add(value)
            expect(result).to eq(answer)
        end
    end
    exceptionCases.each do | value, answer |
        it "returns #{answer} when the string is #{value}" do
            expect{ Add(value) }.to raise_error(answer)
        end
    end
end

describe "String calculator unit tests" do
    it "returns 0 when nothing is sent" do
        expect(Add("")).to eq(0)
    end
    it "returns number when one digit is sent in a string" do
        expect(Add("2")).to eq(2)
    end
    it "returns  the total sum when two digits are sent in a string" do
        expect(Add("1,2")).to eq(3)
    end
    it "returns the total sum when three digits are sent in a string" do
        expect(Add("1,2,4")).to eq(7)
    end
    it "returns number when a new line is in the string with one digit" do
        expect(Add("1\n")).to eq(1)
    end
    it "returns number when a new line is in the string with multiple digits" do
        expect(Add("1\n2")).to eq(3)
    end
    it "returns number when a different delimiter is sent" do
        expect(Add("//;\n1;2")).to eq(3)
    end
    it "returns the error type when a negative number is sent" do
        expect { Add("-1") }.to raise_error(NegativeError)
    end
    it "returns an error message when a negative number is sent" do
        expect{Add("//;\n1;2;-1")}.to raise_error("negatives not allowed: [-1]")
    end
    it "numbers over 1000 are ignored" do
        expect(Add("//;\n2;1001")).to eq(2)
    end
    it "allows delimiters of any length" do
        expect(Add("//[***]\n1***2***3")).to eq(6)
    end
end