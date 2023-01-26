import pytest

def arithmetic(num1, num2, operator):
    match operator:
        case "add":
            return num1 + num2
        case "subtract":
            return num1 - num2
        case "multiply":
            return num1 * num2
        case "divide":
            return num1 / num2

testData = [
    (0, 0, "add", 0),
    (0, 2, "add", 2),
    (-5, 8, "add", 3),
    (5, 2, "add", 7),
    (5, 7, "subtract", -2),
    (5, 2, "subtract", 3),
    (5, -2, "subtract", 7),
    (5, 2, "multiply", 10),
    (1, 4, "multiply", 4),
    (8, 2, "divide", 4),
    (5, 2, "divide", 2.5)
]

@pytest.mark.parametrize("num1, num2, operator, expected", testData)
def test_atdd_arithmetic(num1, num2, operator, expected):
  assert arithmetic(num1, num2, operator) == expected
