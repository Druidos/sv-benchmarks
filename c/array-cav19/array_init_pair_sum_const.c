extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern void abort(void); 
void assume_abort_if_not(int cond) { 
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: __VERIFIER_error(); } }
int main()
{
  int i;
  int N=100000;
  int a[N];
  int b[N];
  int c[N];

  for(i=0;i<N;i++) {
    a[i]=1;
    b[i]=2;
  }

  for(i=0;i<N;i++){
    c[i]=a[i]+b[i];
  }

  for(i=1;i<N;i++)
    __VERIFIER_assert(c[i] >= 3);
  return 0;
}


