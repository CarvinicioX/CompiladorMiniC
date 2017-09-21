import <math.h>

int main() {
	int a, b, c;
	a = 25;
	b = 4;
	char caracter = 'H';
	char* escaneado[20] = "Hola\"";
	c = (a + b) * (3 + 12);
	if (c < 50) {
		caracter = 'O';
	}
	scanf("%s", escaneado);
	while (b <= c) {
		printf("%s\n", caracter);
		b++;
	}
	printf("\\\\"foo"", );
	for (int ch = 75 ; ch <= 100; ch++) {
		printf("ASCII value = %d, Character = %c\n", ch, ch);
	}
	return 0;
}