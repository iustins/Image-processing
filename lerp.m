function value = lerp(v, x)
 n=length(v);
 if x>=1 && x<=n
    if x==floor(x)        %daca x e un numar intreg atunci se va intoarce v(x),nemaivand sens sa aplicam o interpolare
       value=v(x);
    else
      pint=floor(x);
      a=v(pint+1)-v(pint);  
      b=v(pint)-a*pint;     %consider functia f=a*x+b si determin a si b pentru a putea determina valoarea functiei intr-un punct
      value=a*x+b;          %interpolarea se bazeaza pe ecuatia dreptei
    endif
 else 
    value=0;        %daca x nu e intervalul [1,n], atunci functia va intoarce 0 
 endif 
endfunction

