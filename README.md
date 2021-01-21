# 平时闲着无聊写的

看到普物上只有 matlab，不禁很悲伤，就把 matlab 代码拿 mathematica 改写了一遍。

## 预览

---

P21

```mathematica
{y + (g x^2 Sec[\[Theta]]^2)/(2 v^2) == x Tan[\[Theta]]}~Solve~v
```

$$
\left\{\left\{v\to -\frac{\sqrt{g} x \sec (\theta )}{\sqrt{2} \sqrt{x \tan (\theta )-y}}\right\},\left\{v\to \frac{\sqrt{g} x \sec (\theta )}{\sqrt{2} \sqrt{x \tan (\theta )-y}}\right\}\right\}
$$

取正解

```mathematica
x = 1000; y = 50; g = 98/10;
Minimize[{(Sqrt[g] x Sec[\[Theta]])/(Sqrt[2] Sqrt[-y + x Tan[\[Theta]]]), 0 < \[Theta] < Pi/2}, \[Theta]] // FullSimplify // ToRadicals
```

$$
\left\{7 \sqrt{10 \left(\sqrt{401}+1\right)},\left\{\theta \to 2 \arctan \left(\frac{1}{20} \left(-\sqrt{401}+\sqrt{2 \left(401-\sqrt{401}\right)}+1\right)\right)\right\}\right\}
$$

画个图

```mathematica
Plot[(Sqrt[g] x Sec[\[Theta]])/(Sqrt[2] Sqrt[-y + x Tan[\[Theta]]]), {\[Theta], 0, Pi/2}]
```

---

P89

去掉注释，效果和书上一样

```mathematica
V[t] := V0 Exp[-t]/t;
V0 = 500;
Plot[V[t],{t, 0, 2}, (*PlotRange -> {0, 6000}, Ticks -> {Range[0, 2, 0.2], Range[0, 6000, 2000]}*)]
```

```mathematica
V[t_] := V0 Exp[-t]/t;
d[t_] = D[V[t], t];
V0 = 500;
Plot[d[t], {t, 0, 2}, Ticks -> {Range[0, 2, 0.2], Automatic}]
```

---

P190

由于比较懒，vmin，vmax 都不赋值了

```mathematica
(*vmin=;
vmax=;*)
vp = 1578;
c = (4/Sqrt[Pi])/vp^3;
f[x_] := c*x^2*Exp[-x^2/vp^2];
Integrate[f[x], {x, vmin, vmax}]
```

$$
\text{erf}\left(\frac{\text{vmax}}{1578}\right)-\text{erf}\left(\frac{\text{vmin}}{1578}\right)+\frac{e^{-\frac{\text{vmin}^2}{2490084}} \text{vmin}-e^{-\frac{\text{vmax}^2}{2490084}} \text{vmax}}{789 \sqrt{\pi }}
$$

取书中的例子代入

vmin = 0; vmax = 1578;

$$
\text{erf}(1)-\frac{2}{e \sqrt{\pi }}
$$

$0.427593$

vmin=0; vmax=5207

$$
\text{erf}\left(\frac{5207}{1578}\right)-\frac{5207}{789 e^{27112849/2490084} \sqrt{\pi }}
$$

$0.999927$

vmin = 3\*10^4;
vmax = 3\*10^8;

$$
-\text{erf}\left(\frac{5000}{263}\right)+\text{erf}\left(\frac{50000000}{263}\right)+\frac{10000 \left(e^{2499999975000000/69169}-10000\right)}{263 e^{2500000000000000/69169} \sqrt{\pi }}
$$

计算机表示

```mathematica
General::munfl: Exp[-3.61434*10^10] 太小，不适合被表示为归一化机器数；可能无法保持原来的精度.
```

---

P255

```mathematica
a = 1; F[x_] := 2*(Q q)/(4 Pi xi r^2) Cost - (Q q)/(4 Pi xi x^2);
r = Sqrt[a^2/4 + (x - Sqrt[3]/2 a)^2];
Cost = (x - Sqrt[3]/2 a)/r;
f[x_] = D[F[x], x] // Expand // FullSimplify
```

得到

$$
\frac{q Q \left(-8 x^5+8 \sqrt{3} x^4-5 x^3+4 \left(x^2-\sqrt{3} x+1\right)^{5/2}\right)}{8 \pi  x^3 \left(x^2-\sqrt{3} x+1\right)^{5/2} \text{xi}}
$$

$xi= \varepsilon_0$ 书上说 $Qq=4\pi \varepsilon_0$

那就化简一波，得到

$$
\frac{-8 x^5+8 \sqrt{3} x^4-5 x^3+4 \left(x^2-\sqrt{3} x+1\right)^{5/2}}{2 x^3 \left(x^2-\sqrt{3} x+1\right)^{5/2}}=0
$$

零点是 ,记 $A​$ 是 $-3+x^2=0​$ 的第二个根

$-16 + 80 Ax- 560 x^2 + 800 Ax^3 - 2320 x^4 + 1584 A x^5 - 2295x^6 + 720A x^7 - 288 x^8 - 48 A x^9 + 48 x^{10} =0$ 的第 4 个根,约为 $1.25431$

附上作图代码

```mathematica
a = 1; F[x_] := 2*(Q q)/(4 Pi xi r^2) Cost - (Q q)/(4 Pi xi x^2);
r = Sqrt[a^2/4 + (x - Sqrt[3]/2 a)^2];
Cost = (x - Sqrt[3]/2 a)/r;
Q = 4 Pi xi/q;
Plot[F[x], {x, 0, 4}]
```

So easy

---

P297

```mathematica
U = 50; ra = 85/100; E1[rb_] := U/(rb Log[ra/rb]);
Plot[{E1[rb]/1000, 6}, {rb, 0, 1}, PlotRange -> {Full, {0, 10}}]
```

解析解为

```mathematica
{(U/(rb Log[ra/rb]))/1000 == 6}~Reduce~rb
```

$$
\text{rb}=\frac{17}{20} e^{W\left(-\frac{1}{102}\right)}\lor \text{rb}=\frac{17}{20} e^{W_{-1}\left(-\frac{1}{102}\right)}
$$

数值解为

```mathematica
In[73]:= {(U/(rb Log[ra/rb]))/1000 == 6}~Reduce~rb // N

Out[73]= rb == 0.841625 || rb == 0.0012828
```
