pragma circom 2.1.4;

// Input 3 values using 'a'(array of length 3) and check if they all are equal.
// Return using signal 'c'.

template Equality() {
   // Your Code Here..
   signal input a[3];
   signal output c;
   signal eq01;
   signal eq12;
   eq01 <-- a[0] != a[1] ? 0 : 1;
   eq12 <-- a[1] != a[2] ? 0 : 1;
   c <== eq01 * eq12;
}

component main = Equality();