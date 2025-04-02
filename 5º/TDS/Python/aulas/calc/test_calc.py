import unittest
import calc  # o arquivo onde as funções estão definidas

class TesteCalc(unittest.TestCase):

    def test_adicao(self):
        self.assertEqual(calc.adicao(2, 3), 5)
        self.assertEqual(calc.adicao(-1, 1), 0)
        self.assertEqual(calc.adicao(-1, -1), -2)

    def test_subtracao(self):
        self.assertEqual(calc.subtracao(10, 5), 5)
        self.assertEqual(calc.subtracao(-1, 1), -2)
        self.assertEqual(calc.subtracao(-1, -1), 0)

    def test_multiplicacao(self):
        self.assertEqual(calc.multiplicacao(3, 7), 21)
        self.assertEqual(calc.multiplicacao(-1, 1), -1)
        self.assertEqual(calc.multiplicacao(-1, -1), 1)

    def test_divisao(self):
        self.assertEqual(calc.divisao(10, 2), 5)
        self.assertEqual(calc.divisao(-1, 1), -1)
        self.assertEqual(calc.divisao(-1, -1), 1)
        self.assertRaises(ValueError, calc.divisao, 10, 0)

if __name__ == '__main__':
    unittest.main()


#para rodar o teste
#python -m unittest test_calc.py    
