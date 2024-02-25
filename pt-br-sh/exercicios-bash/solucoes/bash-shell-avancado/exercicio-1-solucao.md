# Exercício 1 - Utilizando declarações condicionais e operadores lógicos

# Soluções para os exercícios de bash scripting

## Exercício 1.1
Aqui está uma solução usando apenas a linha de comando:
```bash
echo '#!/bin/bash' > conditional_script.sh
chmod u+x conditional_script.sh
```

## Exercício 1.2
```bash
echo 'você está gostando do curso até agora?'
echo -n "Digite \"s\" para sim, \"n\" para não."
read response
```

## Exercício 1.3
```bash
 #!/bin/bash
2.
echo 'você está gostando do curso até agora?'
echo -n "Digite \"s\" para sim, \"n\" para não."
read response
if [ "$response" == "s" ]
then
    echo "Estou agradecido em ouvir que você gosta do curso!"
    echo "Seu feedback falando sobre o que você está gostando é mais que bem-vindo!"
elif [ "$response" = "n" ]
then
    echo "Peço desculpas por você não estar gostando do curso"
    echo "Seu feedback falando sobre o que podemos fazer para melhorat"
    echo "esse curso é mais que bem-vindo!"
else
    echo "Sua resposta deve ser "s" ou "n"."
    echo "Por favor, execute o script novamente e tente mais uma vez."
fi
```