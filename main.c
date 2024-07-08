#include <stdio.h>

int main() {
    int a, b, sum;
    char choice;

    do {
        // Solicita os númeróos ao usuário
        printf("Digite dois números: ");
        scanf("%d %d", &a, &b);

        // Calcula a soma
        sum = a + b;

        // Exibe o resultado
        printf("A soma é: %d\n", sum);

        // Pergunta se deseja fazer outra soma
        printf("Deseja fazer outra soma? (s/n): ");
        scanf(" %c", &choice);  // Note o espaço antes de %c para ignorar qualquer caractere de nova linha deixado no buffer

    } while(choice == 's' || choice == 'S');

    printf("Programa encerrado.\n");

    return 0;
}
