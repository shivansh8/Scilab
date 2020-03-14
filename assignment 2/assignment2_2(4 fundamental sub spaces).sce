//clear ;close;clc;
str = input("Enter a space-separated 3x3 matrix in this order a11 a12 a13 .a32 33 ", "string")
v = evstr(strsplit(str, " "))

a11=v(1)
a12=v(2)
a13=v(3)
a21=v(4)
a22=v(5)
a23=v(6)
a31=v(7)
a32=v(8)
a33=v(9)
A=[a11 a12 a13;a21 a22 a23;a31 a32 a33];

function ffss(A)
    disp(A,"A=");
    [m,n]=size(A);
    disp(m,"m=");
    disp(n,"n=");
    [vv,pivot]=rref(A);
    //disp(vv,pivot,"vv-pivot:");
    //
    disp(rref(A),"rref(a)");
    disp(vv,"vv");
    r=length(pivot);
    disp(r,"rank=");
    coluspa=A(:,pivot);
    disp(coluspa,"column space=");
    nullspa=kernel(A);
    disp(nullspa,"null space=");
    rowspa=vv(1:r,:)';
    disp(rowspa,"rowspace=");
    leftnspa=kernel(A');
    disp(leftnspa,"left null spaec=");
endfunction

ffss(A);

