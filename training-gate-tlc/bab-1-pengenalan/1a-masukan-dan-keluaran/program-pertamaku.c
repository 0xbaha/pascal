#include <stdio.h>

#define MAX_LENGTH 100

int main (void)
{
	char input_text[MAX_LENGTH + 1];
	fgets(input_text, MAX_LENGTH, stdin);
	printf("%s", input_text);
	
	return 0;
}
