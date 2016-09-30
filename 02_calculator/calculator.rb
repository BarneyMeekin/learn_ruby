#write your code here
def add (a,b)
    a + b
end

def subtract (a,b)
    a - b
end

def sum(array)
    array.inject(0){ |total, num| total + num}
end

def multiply(a, b)
    a * b
end

def power(a, b)
    a ** b
end

def factorial(number)
    if number <= 1
        1
     else
        (1..number).inject(1, :*)
    end
end
