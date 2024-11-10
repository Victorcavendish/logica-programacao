#!/bin/bash

#pegando o primeiro número
echo "Digite o primeiro número: "
read num1

#escolhendo a operação
echo "Digite o sinal da operação: +, -, *, / "
read operacao

#pegando o segundo número
echo "Digite o segundo número: "
read num2

#testa se usou operador válido e trás o resultado
case $operacao in
    +)
        resultado=$(echo "$num1 + $num2" | bc)
        echo "Sua soma deu: $num1 + $num2 = $resultado"
        ;;
    -)
        resultado=$(echo "$num1 - $num2" | bc)
        echo "Sua subtração deu: $num1 - $num2 = $resultado"
        ;;
    \*)
        resultado=$(echo "$num1 * $num2" | bc)
        echo "Sua multiplicação deu: $num1 * $num2 = $resultado"
        ;;
    /)
        resultado=$(echo "scale=2; $num1 / $num2" | bc)
        echo "Sua divisão deu: $num1 / $num2 = $resultado"
        ;;
    *)
        echo "Operação inválida! Use apenas +, -, * ou /."
        ;;
esac
