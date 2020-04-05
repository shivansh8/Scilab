function func(A)
    disp(A,"the matrix ix")
    u0=[1 1 1]';
    disp(u0,"initial vector is")
    v=A*u0;
    a=max(u0);
    disp(a,"1st approximation to eigen value is");
    while (abs(max(v)-a)>0.002)
        disp(v,"current eigen vector is");
        a=max(v);
        disp(a,"current eigen value is");
        u0=v/max(v);
        v=A*u0;
    end
    format('v',4);
    disp(max(v),"the largest eigen value is");
    format('v',5);
    disp(u0,"the corresponding eigen vector is");

endfunction



str = input("Enter a space-separated 3x3 matrix in this order a11 a12 a13 ..... a32 a33 ", "string")
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
a=[a11 a12 a13;a21 a22 a23;a31 a32 a33];
func (a);
