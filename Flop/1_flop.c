#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void main(int argc, char **argv) {
	int i=0, j=0, R=50;
	long int N;
	double *a, *b, *c, *d;
	double mflops;
	clock_t t;
	
	//Alocando dinamicamente
	N=atof(argv[1]);
	a=malloc(N*sizeof(double *));
	b=malloc(N*sizeof(double *));
	c=malloc(N*sizeof(double *));
	d=malloc(N*sizeof(double *));
	
	//Inicializando variaveis
	for(;i<N;i++) {
		a[i]=0.; b[i]=1.; c[i]=2; d[i]=3.;
	}

	//Contando clocks
	t=clock();
	for(;j<R;j++) {
		for(;i<N;i++) {
			a[i]=b[i]+c[i]*d[i];
		}
	}
	t=clock()-t;
	
	//Calculando flops do sistema
	mflops=(R*N*2)/(t*1000000);
	printf("%ld  %lf\n", N, mflops);
	
	free(a);
	free(b);
	free(c);
	free(d);
}
