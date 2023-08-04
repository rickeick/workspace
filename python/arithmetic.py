#Módulo
"""Módulo para implementar classes e funções em relação a aritmética"""

#Importações

#Constantes

#Classes
class Estatistica:
	def __init__(self, *args):
		self.valores = list(args)
		self.__total = int()
		for item in args: self.__total += item
		self.media = self.__total / len(args)
		self.__total = int()
		for item in args: self.__total += (item - self.media)**2
		self.variancia = self.__total / len(args)
		self.desvio = self.variancia**0.5

	def __str__(self):
		self.__str = str()
		self.__str += f'{self.valores}\n'
		self.__str += f'Média: {self.media:.2f}\n'
		self.__str += f'Variância: {self.variancia:.2f}\n'
		self.__str += f'Desvio Padrão: {self.desvio:.2f}\n'
		return self.__str


#Funções
def fatorial(n):
	"""Retorna o fatorial de [n] utilizando recursividade"""
	if n == 1: return 1
	else: return n * fatorial(n-1)


def arranjo(n, p):
	"""Retorna a quantidade de arranjos de [n] tomada [p] a [p]"""
	return fatorial(n) / fatorial(p)


def combinacao(n, p):
	"""Retorna a quantidade de combinações de [n] tomada [p] a [p]"""
	return fatorial(n) / (fatorial(p) * fatorial(n-p))


def fibonacci(n):
	"""Retorna uma lista com a sequência de Fibonacci com [n] elementos"""
	lista = list()
	fib, aux = 0, 1
	while n != 0:
		lista.append(fib)
		fib = fib + aux
		aux = fib - aux
		n -= 1
	return lista


def collatz(n):
	"""Retorna uma lista com a sequência de Collatz com valor inicial [n]"""
	lista = list()
	while n != 1:
		lista.append(n)
		if n % 2 == 0: n //= 2
		else: n = 3 * n + 1
	return lista


def ordenar(v):
	"""Ordena os elementos da lista [v] utilizando InsertSort"""
	for i in range(len(v)):
		for j in range(i+1, len(v)):
			if v[i] > v[j]: v[i],v[j] = v[j],v[i]


#Testes
if __name__ == '__main__': pass
