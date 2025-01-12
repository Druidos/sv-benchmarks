extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern void abort(void); 
void assume_abort_if_not(int cond) { 
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: __VERIFIER_error(); } }
extern int __VERIFIER_nondet_int();
int N = 100000;
int main()
{
  int i;
  int j=0;
  int a[N];

  for(i=0;i<N;i++){
    int x=__VERIFIER_nondet_int();
    if(x) break;
    a[i]=j;
    j=j+i;
  }

  for(int k=1;k<i;k++)
    __VERIFIER_assert(a[k]>=0);
  return 0;
}

