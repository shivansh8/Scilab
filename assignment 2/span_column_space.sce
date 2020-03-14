
function colspace(a)
    disp(a,'the given matrix is ')
    a(2,:)=a(2,:)-(a(2,1)/a(1,1))*a(1,:)
    a(3,:)=a(3,:)-(a(3,1)/a(1,1))*a(1,:)
    disp(a)
    a(3,:)=a(3,:)-(a(3,2)/a(2,2))*a(2,:)
    disp(a)
    a(1,:)=a(1,:)/a(1,1)
    a(2,:)=a(2,:)/a(2,2)
    disp(a)
    for i=1:3
        for j=i:3
            if(a(i,j)<>0)
                disp("is a pivot column",j,'column')
                break
            end
        end
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

a=[a11 a12 a13;a21 a22 a23;a31 a32 a33]
colspace(a);



