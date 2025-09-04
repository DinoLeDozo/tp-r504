def puissance(a, b):
    if not type(a) is int or not type(b) is int:
        raise TypeError("Only integers are allowed")
    if a == 0 and b < 0:
        raise ZeroDivisionError("je peux faire de puissance si a == 0") 
    var = 1
    for _ in range(abs(b)):
        var *= a
    return var if b > 0 else 1 / var

