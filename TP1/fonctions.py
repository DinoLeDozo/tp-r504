def puissance(a, b):
    if not type(a) is int or not type(b) is int:
        raise TypeError("Only integers are allowed")
    # 0^b avec b < 0 est indéfini -> 1/0
    if a == 0 and b < 0:
        raise ZeroDivisionError("0 cannot be raised to a negative power")
    return a ** b
