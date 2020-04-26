#include <stdio.h>
#include <stdlib.h>
int main(int argc, char* argv[]){

	int A[1024];
	int B[1024];
	
	for(int i=0; i<1024; i++){
		A[i] = rand() % 4294967295;
		B[i] = 0;
	}
	
	for(int i=0; i<1024; i++)
		B[i] = A[i] * A[i];



	return(0);
}