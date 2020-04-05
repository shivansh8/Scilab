function func(A)
    disp(A,"A=");
    [m,n]=size(A);
    for k=1:n
        V(:,k)=A(:,k);
        for j=1:k-1
            R(j,k)=V(:,j)'*A(:,k)
            
            V(:,k)=V(:,k)-R(j,k)*V(:,j);
        end
        R(k,k)=norm(V(:,k));
        V(:,k)=V(:,k)/R(k,k);
    end
    disp(V,'Q=');
    
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
A=[a11 a12 a13;a21 a22 a23;a31 a32 a33];
func(A);
