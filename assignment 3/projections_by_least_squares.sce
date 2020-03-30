function f()
    str = input("Enter a space-separated 3x3 matrix in this order a11 a12 a13 .a32 33 ", "string");
    v = evstr(strsplit(str, " "));

    a11=v(1);
    a12=v(2);
    a21=v(3);
    a22=v(4);
    a31=v(5);
    a32=v(6);

    A=[a11 a12;a21 a22; a31 a32];
    
    str = input("Enter a space-separated 3x3 matrix in this order a11 a12 a13 .a32 33 ", "string");
    av = evstr(strsplit(str, " "));
    b11=av(1);
    b12=av(2);
    b13=av(3);
    b=[b11;b12;b13];
    
    
    
    disp(A,"A= ");              
    disp(b,"B=");
    xx=(A' * A) \ (A' * b);
    disp(xx,"x= ");
    C=xx(1,1);
    D=xx(2,1);
    disp(C,"C= ")
    disp(D,"D=");
    disp("the line of best fit is b=C+Dt");
endfunction

f();
