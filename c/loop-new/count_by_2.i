extern void __VERIFIER_error(void);
extern void abort(void); 
void assume_abort_if_not(int cond) { 
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
  ERROR: __VERIFIER_error();
  }
  return;
}
int __VERIFIER_nondet_int();
int main() {
    int i;
    for (i = 0; i < 1000000; i += 2) ;
    __VERIFIER_assert(i == 1000000);
    return 0;
}
