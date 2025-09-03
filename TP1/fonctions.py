def puissance(a, b):
    if not type(a) is int or not type(b) is int:
        raise TypeError("Only integers are allowed")
    # 0^b avec b < 0 est indéfini -> 1/0
    if a == 0 and b < 0:
        raise TypeError("0 cannot be raised to a negative power")
    var = 1
    for _ in range(abs(b)):
        var *= a
    return var if b > 0 else 1 / var

