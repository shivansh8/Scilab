function func(a)
    lam=poly(0,'lam');
    lam=lam
    charmat=a-lam*eye(3,3);
    disp(charmat,"the characteristic matrix is");
    charpoly=poly(a,'lam');
    disp(charpoly,"the characteristic polynomial is:");
    lam=spec(a);
    disp(lam,"the eigen values of A are");
        
endfunction
function[x,lam]=eigenvectors(a)
        [n,m]=size(a);
        lam=spec(a);
        x=[];
        for k=1:3
            B=a-lam(k)*eye(3,3);
            C=B(1:n-1,1:n-1);
            b=-B(1:n-1,n);
            y=C\b;
            y=[y;1];
            y=y/norm(y);
            x=[x y];
                    end
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
//get f("eigenvectors")
[x,lam]=eigenvectors(a)
disp(x,"the eigen vectors of a are");
