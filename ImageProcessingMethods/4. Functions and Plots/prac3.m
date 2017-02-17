clc
typer=input('Enter type of connection: S/P','s');
r=0;r1=0;
if typer=='S'|typer=='s'
    n=input('Number of resistors:')
      resi=equres(n);
      for k=1:n
          r=r+resi(k)
      end
      disp(r)
elseif typer=='P'|typer=='p'
        n=input('Number of resistors:')
      resi=equres(n);
      for k=1:n
          r1=r1+(1/resi(k));
      end
      disp(1/r1)
end

