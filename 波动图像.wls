With[{A = 5, ω = 1, φ = Pi, u = 1},
y[x_, t_] = A Cos[ω(t - x/u) + φ ];
Manipulate[Show[Plot3D[
   {y[x, t]}, {x, 0, 2 Pi}, {t, 0, 5}, AxesLabel -> Automatic, 
   PlotPoints -> 25, PlotStyle -> Opacity[0.5]
   ],
  ParametricPlot3D[{x, t, y[x, t]}, {x, 0, 2 Pi}]
  ], {t, 0, 5}]
]
