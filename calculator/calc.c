#include <stdio.h>
int main() {

	double num = 0;
	double num_aux = 0;
	double result = 0;
	char operation;


	printf("Escolha dois números e uma operação:\n(1) Adição\n(2) Subtração\n(3) Multiplicação\n(4) Divisão\n");
	scanf("%lf %lf %c",&num, &num_aux, &operation);

	if(operation == 43) {
		result = num+num_aux;		
	} else if(operation == 45) {
		result = num-num_aux;
	} else if(operation == 42) {
		result = num*num_aux;
	} else {
		result = num/num_aux;
	}

	printf("%lf\n", result);
	
return 0;
}
