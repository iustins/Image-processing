function value = bilerp(img, row, col)
  [m n]=size(img);
  for i=1:m             
    for j=1:n
      v(j)=img(i,j);     %in v(j) retin valorile functiei pentru punctele din matricea img
    endfor
    rez(i)=lerp(v,col);   %interpolare pe directia x
  endfor
  value=lerp(rez,row);   % interpolare pe directia y
endfunction
