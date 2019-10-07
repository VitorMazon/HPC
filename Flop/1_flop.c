#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

void calc(int R, int N, double a[], double b[], double c[], double d[]) {
	int i, j;
	
	for(j=0;j<R;j++)
		for(i=0;i<N;i++)
			a[i]=b[i]+c[i]*d[i];
		
	return;
}

void main(int argc, char **argv) {
	int i, R=100;
	long int N;
	double *a, *b, *c, *d;
	double mflops;
	clock_t t;
	
	//Alocando dinamicamente
	N=(long int)atoi(argv[1]);
	a=(double*)malloc(N*sizeof(double));
	b=(double*)malloc(N*sizeof(double));
	c=(double*)malloc(N*sizeof(double));
	d=(double*)malloc(N*sizeof(double));
	
	//Inicializando variaveis
	for(i=0;i<N;i++) {
		a[i]=0.; b[i]=1.; c[i]=2.; d[i]=3.;
	}

	//Contando clocks
	t=clock();
	calc(R, N, a, b, c, d);
	t=clock()-t;
	
	//Calculando flops do sistema
	mflops=(double)(R*N*2.)/((double)(t*1e6));
	printf("%ld  %lf\n", N, mflops);
	
	free(a);
	free(b);
	free(c);
	free(d);
}
