int __return_main;
void __VERIFIER_error();
void abort(void); 
void assume_abort_if_not(int cond) { 
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond);
int __VERIFIER_nondet_int();
int main();
int __return_144;
 int main()
 {
 int main__x;
 int main__y;
 main__x = -50;
 main__y = __VERIFIER_nondet_int();
 if (!(-1000 < main__y))
 {
 return __return_main;
 }
 else 
 {
 if (!(main__y < 1000000))
 {
 return __return_main;
 }
 else 
 {
 label_129:; 
 if (main__x < 0)
 {
 main__x = main__x + main__y;
 int main____CPAchecker_TMP_0 = main__y;
 main__y = main__y + 1;
 goto label_129;
 }
 else 
 {
 {
 int __tmp_1;
 __tmp_1 = main__y > 0;
 int __VERIFIER_assert__cond;
 __VERIFIER_assert__cond = __tmp_1;
 if (__VERIFIER_assert__cond == 0)
 {
 __VERIFIER_error();
 return __return_main;
 }
 else 
 {
  __return_144 = 0;
 return __return_144;
 }
 }
 }
 }
 }
 }
