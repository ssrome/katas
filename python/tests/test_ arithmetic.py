import pytest

def arithmetic(number):
    if number[2] == "add":
        return number[0] + number[1]
    elif number[2] == "subtract":
        return number[0] - number[1]
    elif number[2] == "multiply":
        return number[0] * number[1]
    elif number[2] == "divide":
        return number[0] / number[1]

testData = [
    ([0, 0, "add"], 0),
    ([0, 2, "add"], 2),
    ([-5, 8, "add"], 3),
    ([5, 2, "add"], 7),
    ((5, 7, "subtract"), -2),
    ((5, 2, "subtract"), 3),
    ((5, -2, "subtract"), 7),
    ((5, 2, "multiply"), 10),
    ((8, 2, "divide"), 4),
    ((5, 2, "divide"), 2.5)
]

@pytest.mark.parametrize("test_input, expected", testData)
def test_atdd_arithmetic(test_input, expected):
  assert arithmetic(test_input) == expected
