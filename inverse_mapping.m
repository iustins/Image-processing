function img_out = forward_mapping(img_in, T)
    % Creati o noua imagine prin aplicarea transformarii T pe imaginea
    % img_in (grayscale image), folosind inverse mapping si interpolare
    % biliniara
    %
    % Inputs
    % ------
    % img_in: imaginea care trebuie sa fie transformata.
    %      T: transformarea care trebuie aplicata asupra imaginii.
    %         matrice de 2x2.
    %
    % Outputs
    % -------
    % img_out: imaginea transformata (grayscale).

    %TODO
 [m n]=size(img_in);
 xmin=1000000;
 ymin=1000000;
 xmax=-1000000;
 ymax=-1000000;
 for x=1:m
    for y=1:n
          indicelin=round(a*x+b*y);
          indicecol=round(c*x+d*y);
          if indicelin<xmin
              xmin=indicelin;
          endif
          if indicecol<ymin
              ymin=indicecol;
          endif
          if indicelin>xmax
              xmax=indicelin;
          endif
          if indicecol>ymax
              ymax=indicecol;
          endif
    endfor
 endfor
 