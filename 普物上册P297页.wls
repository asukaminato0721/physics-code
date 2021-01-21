<<JavaGraphics`
U = 50; ra = 85/100; E1[rb_] := U/(rb Log[ra/rb]);
Plot[{E1[rb]/1000, 6}, {rb, 0, 1}, PlotRange -> {Full, {0, 10}}]//Show

{(U/(rb Log[ra/rb]))/1000 == 6}~Reduce~rb//Print
Input[]