const isLeapYear = require("./isLeapYear");

describe("isLeapYear", () => {
    let leapYear = "Leap year";
    let notLeapYear = "Not a leap year";
    
    it("returns 'Leap year'", () => {
        let result = isLeapYear(2000);
        expect(result).toEqual(leapYear)
    });
    it("returns 'Not a leap year'", () => {
        let result = isLeapYear(1700);
        expect(result).toEqual(notLeapYear)
    });
    it("returns 'Not a leap year'", () => {
        let result = isLeapYear(1900);
        expect(result).toEqual(notLeapYear)
    });
    it("returns 'Leap year'", () => {
        let result = isLeapYear(2008);
        expect(result).toEqual(leapYear)
    });
    it("returns 'Not a leap year'", () => {
        let result = isLeapYear(4000);
        expect(result).toEqual(notLeapYear)
    });
})