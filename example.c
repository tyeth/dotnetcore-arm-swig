/*
File : example.c
make
dotnet publish console.csproj -c Debug -r linux-x64 -o app
*/
#include <time.h>
#include "example.h"

double My_variable = 3.0;

int fact(int n) {
	if (n <= 1)
	{
		return 1;
	}
	else return n*fact(n-1);
}

int my_mod(int x, int y) {
	return (x%y);
}

char *get_time()
{
	time_t ltime;
	time(&ltime);
	return ctime(&ltime);
}
