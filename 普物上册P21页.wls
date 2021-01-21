<<JavaGraphics`
{y + (g x^2 Sec[θ]^2)/(2 v^2) == x Tan[θ]}~Solve~v

With[{x = 1000,y = 50,g = 98/10},
Minimize[{(Sqrt[g] x Sec[θ])/(Sqrt[2] Sqrt[-y + x Tan[θ] ] ), 0 < θ < Pi/2}, θ] // FullSimplify // ToRadicals;
Plot[(Sqrt[g] x Sec[θ])/(Sqrt[2] Sqrt[-y + x Tan[θ] ]), {θ, 0, Pi/2}]//Show
]
Input[]