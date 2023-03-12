// main.c
// Include header files
#include <stdio.h>
#include "calculator.h"

int main()
{
    char operator;
    double num1, num2;
    int choice;

    do
    {
        // Input operator and operands
        printf("Enter operator (+, -, *, /, ^, %%): ");
        scanf(" %c", &operator);
        printf("Enter two numbers: ");
        scanf("%lf %lf", &num1, &num2);

        // Call function based on operator
        switch(operator)
        {
            case '+':
                printf("%.2lf + %.2lf = %.2lf\n", num1, num2, add(num1, num2));
                break;
            case '-':
                printf("%.2lf - %.2lf = %.2lf\n", num1, num2, subtract(num1, num2));
                break;
            case '*':
                printf("%.2lf * %.2lf = %.2lf\n", num1, num2, multiply(num1, num2));
                break;
            case '/':
                printf("%.2lf / %.2lf = %.2lf\n", num1, num2, divide(num1, num2));
                break;
            case '^':
                printf("%.2lf ^ %.2lf = %.2lf\n", num1, num2, power(num1, num2));
                break;
            case '%':
                printf("%.0lf %% %.0lf = %.0lf\n", num1, num2, modulus(num1, num2));
                break;
            default:
                printf("Invalid operator\n");
        }

        // Ask user to continue or exit
        printf("Do you want to continue (1/0)? ");
        scanf("%d", &choice);

    } while (choice == 1);

    return 0;
}