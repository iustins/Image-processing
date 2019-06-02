function img_out = forward_mapping(img_in, T)
 [m n]=size(img_in);
  
  a=T(1,1);
  b=T(1,2);
  c=T(2,1);
  d=T(2,2);
 
  xmin=1000000;           
  ymin=1000000;           %iau niste valori foarte mari pentru a fi sigur ca se vor schimba ulterior
  
  for x=1:m
    for y=1:n                   %parcurg toti indicii matricei img_in
          indicelin=round(a*x+b*y);
          indicecol=round(c*x+d*y);
          if indicelin<xmin
              xmin=indicelin;  %daca gasesc o valoare pentru indicelin mai mica decat xmin atunci xmin ia valoarea acelui indice
          endif
          if indicecol<ymin
              ymin=indicecol;   %daca gasesc o valoare pentru indicecol mai mica decat ymin atunci ymin ia valoarea acelui indice
          endif
    endfor
  endfor   
  
  for x=1:m
    for y=1:n                       %parcurg din nou toti indicii matricei img_in
       indicelin=round(a*x+b*y-xmin+1);     %pentru a nu avea indici negativi fac aceasta operatie (intrucat valoarea minima a lui a*x+b*y este xmin ,atunci valoarea expresiei a*x+b*y-xmin+1 va fi mereu pozitiva ,oricare ar fi x si y  
       indicecol=round(c*x+d*y-ymin+1);     %acelasi rationament ca la indicecol,pentru a avea numai indici pozitivi
       img_out(indicelin,indicecol)=img_in(x,y);
    endfor
  endfor
endfunction
