<<JavaGraphics`
a = 1; F[x_] := 2*(Q q)/(4 Pi xi r^2) Cost - (Q q)/(4 Pi xi x^2);
r = Sqrt[a^2/4 + (x - Sqrt[3]/2 a)^2];
Cost = (x - Sqrt[3]/2 a)/r;
f[x_] = D[F[x], x] // Expand // FullSimplify

a = 1; F[x_] := 2*(Q q)/(4 Pi xi r^2) Cost - (Q q)/(4 Pi xi x^2);
r = Sqrt[a^2/4 + (x - Sqrt[3]/2 a)^2];
Cost = (x - Sqrt[3]/2 a)/r;
Q = 4 Pi xi/q;
Plot[F[x], {x, 0, 4}]//Show
Input[]