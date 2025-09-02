def puissance(x, y):
	if not type(x) is int or not type(y) is int:
		raise TypeError("Only integers are allowed")
	return x ** y
