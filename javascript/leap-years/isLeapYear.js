function isLeapYear(year){
    if (year % 400 === 0 && year % 4000 !== 0){
        return "Leap year"
    }
    else if (year % 4 === 0 && year % 100 !== 0){
        return "Leap year"
    }
    else if (year % 100 === 0 && year % 400 !== 0){
        return "Not a leap year"
    }
    return "Not a leap year"
}

module.exports = isLeapYear;