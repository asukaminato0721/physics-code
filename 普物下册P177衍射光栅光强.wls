<<JavaGraphics`

Module[{d, λ, NN, β, II},
    d = 4*10^(-5);
    λ = 5*10^(-7);
    NN = 2;
    β = Pi d Sin[θ]/λ;
    II = (Sin[NN β]/Sin[β])^2;
    ParametricPlot[{Sin[θ], (Sin[NN β]/Sin[β])^2},
        {θ, -0.05, 0.05},
        Frame -> True, 
        PlotRange -> {{-0.05, 0.05}, {0, 4}},
        AspectRatio -> Full,
        PlotLabel -> "N=2",
        FrameLabel -> {Sin[θ], "I/I0"}]//Show
    ]
Module[{d, λ, NN, β, II},
    d = 4*10^(-5);
    λ = 5*10^(-7);
    NN = 4;
    β = Pi d Sin[θ]/λ;
    II = (Sin[NN β]/Sin[β])^2;
    ParametricPlot[{Sin[θ], (Sin[NN β]/Sin[β])^2},
        {θ, -0.05, 0.05},
        Frame -> True, 
        PlotRange -> {{-0.05, 0.05}, {0, 20}},
        AspectRatio -> Full,
        PlotLabel -> "N=4",
        FrameLabel -> {Sin[θ], "I/I0"}]//Show
    ]
Module[{d, λ, NN, β, II},
    d = 4*10^(-5);
    λ = 5*10^(-7);
    NN = 10;
    β = Pi d Sin[θ]/λ;
    II = (Sin[NN β]/Sin[β])^2;
    ParametricPlot[{Sin[θ], (Sin[NN β]/
                    Sin[β])^2}, {θ, -0.05, 0.05},
        Frame -> True, 
        AspectRatio -> Full,
        PlotLabel -> "N=10",
        PlotRange -> {{-0.05, 0.05}, {0, 100}},
        FrameLabel -> {Sin[θ], "I/I0"}]//Show
    ]
Module[{d, λ, NN, β, II},
    d = 4*10^(-5);
    λ = 5*10^(-7);
    NN = 10;
    β = Pi d Sin[θ]/λ;
    II = (Sin[NN β]/Sin[β])^2;
    ParametricPlot[{Sin[θ], (Sin[NN β]/
                    Sin[β])^2}, {θ, -0.05, 0.05},
        PlotRange -> {{-0.002, 0.015}, {0, 45}},
            Frame -> True,
            AspectRatio -> Full,
        PlotLabel -> "N=10",
        FrameLabel -> {Sin[θ], "I/I0"}]//Show
    ]
Module[{d, λ, NN, β, II},
    d = 4*10^(-5);
    λ = 5*10^(-7);
    NN = 20;
    β = Pi d Sin[θ]/λ;
    II = (Sin[NN β]/Sin[β])^2;
    ParametricPlot[{Sin[θ], (Sin[NN β]/
                    Sin[β])^2}, {θ, -0.05, 0.05},
        Frame -> True,
            AspectRatio -> Full,
        PlotRange -> {{-0.05, 0.05}, {0, 400}},
        PlotLabel -> "N=20",
        FrameLabel -> {Sin[θ], "I/I0"}]//Show
    ]
Module[{d, λ, NN, β, II},
    d = 4*10^(-5);
    λ = 5*10^(-7);
    NN = 20;
    β = Pi d Sin[θ]/λ;
    II = (Sin[NN β]/Sin[β])^2;
    ParametricPlot[{Sin[θ], (Sin[NN β]/
                    Sin[β])^2}, {θ, -0.05, 0.05},
        Frame -> True,
            AspectRatio -> Full,
        PlotRange -> {{-0.002, 0.015}, {0, 90}},
        PlotLabel -> "N=20",
        FrameLabel -> {Sin[θ], "I/I0"}]//Show
    ]
Input[]