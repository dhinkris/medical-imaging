function A=specmat(n)
A=ones(n);
for r=1:n
    for c=1:n
        if (r>1)&(c>1)
        s=A(r-1,c)+A(r,c-1);
        if s<20
            A(r,c)=s;
        else
            A(r,c)=max(A(r-1,c),A(r,c-1));
        end
        end
    end
end
            
            