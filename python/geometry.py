#Módulo
"""Módulo para implementar classes e funções em relação a geometria"""

#Importações

#Constantes

#Classes

#Funções
def formulaGTP(m, n):
	"""Retorna uma tupla com um terno pitagórico gerado pelos números [m] e [n] | [m] > [n]"""
	a = m**2 + n**2
	b = abs(m**2 - n**2)
	c = 2 * m * n
	return (b, c, a)


def formulaHeron(a, b, c):
	"""Retorna a área de um triângulo por meio da medida dos seus lados [a], [b] e [c]"""
	p = (a + b + c) / 2
	pa = p - a; pb = p - b; pc = p - c
	return (p * pa * pb* pc)**(1/2)


#Testes
if __name__ == '__main__': pass
