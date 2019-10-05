//별 1
public class Star1 {
 public static void main(String[] args) {
  int i = 0;
  int j = 0;
  for (i = 1; i < 4; i++) {
   for (j = 1; j < 5; j++) {
    System.out.print("*");
   }
   System.out.println("");
  }}}


//별 2
public class Star2 {
 public static void main(String[] args) {
  int i=0;
  int j=0;
  for(i=1;i<4;i++) {
   for(j=1;j<4;j++) {
    if(i<j) {
     System.out.print(" ");
    }
    else {
    System.out.print("*");}}
   System.out.println("");
 }}}

//별 3
public class Star3 {
 public static void main(String[] args) {
  int i=0;
  int j=0;
  for(i=1;i<4;i++) {
   for(j=1;j<4;j++) {
    if(4-i<=j) {
    System.out.print("*");
   }else {
    System.out.print(" ");
  }}
   System.out.println("");
 }}}

//별 4
public class Star4 {
 public static void main(String[] args) {
  int i=0;
  int j=0;
  for(i=1;i<4;i++) {
   for(j=1;j<6;j++) {
    if(i>Math.abs(j-3)) {
    System.out.print("*");
   }else {
    System.out.print(" ");
  }
 }
   System.out.println("");
 }
}
}

//별 5
public class Star5 {
 public static void main(String[] args) {
  int i=0;
  int j=0;
  for(i=-2;i<3;i++) {
   for(j=-2;j<3;j++) {
    if(Math.abs(i)+Math.abs(j)<=2) {
    System.out.print("*");
   }
    else {
     System.out.print(" ");
    }
  }
   System.out.println("");
 }
}
}