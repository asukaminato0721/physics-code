(*李萨如*)
With[{A1=3, A2= 3, φ1=2, φ2=Pi/3,ω1=Pi,ω2=5},
 Animate[
  ParametricPlot[{A1 Cos[ω1 t + φ1], 
    A2 Cos[ω2  t + φ2]}, {t, 0, x}, 
   PlotRange -> {{-A1, A1}, {-A2, A2}}, PlotPoints -> 100], {x, 0.01, 
   5 Pi}
  ]
 ]
