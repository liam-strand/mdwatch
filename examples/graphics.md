---
title: COMP 170 HW 7
author: Ayda Aricanli, Cece Crumlish, Liam Strand
date: November 8, 2022
geometry: margin=1in
output: pdf_document
header-includes:
  - \pagenumbering{gobble}
  - \usepackage{tikz}
  - \usepackage{tabularx}
  - \usepackage{tikz}
---

\pagebreak


Write a CFG for the following langauge over the alphabet $\Sigma = \{\texttt{a}, \texttt{b}\}$:

$$L_1 = \{\texttt{a}^n\texttt{b}^n \mid n > 0 \text{ and } n \text{ is not a multiple of 5}\}$$

---

```{=latex}
\begin{tabularx}{\linewidth}{@{}l c X@{}}

$S_0$ & $\longrightarrow$ & \texttt{a} $S_1$ \texttt{b} \\
$S_1$ & $\longrightarrow$ & \texttt{a} $S_2$ \texttt{b} | \texttt{aa} $S_3$ \texttt{bb} | \texttt{aaa} $S_4$ \texttt{bbb} | $\varepsilon$ \\
$S_2$ & $\longrightarrow$ & \texttt{a} $S_3$ \texttt{b} | \texttt{aa} $S_4$ \texttt{bb} | $\varepsilon$ \\
$S_3$ & $\longrightarrow$ & \texttt{a} $S_4$ \texttt{b} | $\varepsilon$ \\
$S_4$ & $\longrightarrow$ & \texttt{aa} $S_1$ \texttt{bb} | $\varepsilon$ \\

\end{tabularx}
```

\pagebreak


Prove that the following language is not context-free where $\Sigma = \{0, 1\}$:

$$L_2 = \{w \mid w \text{ is a palindrome that contains an equal number of 1s and 0s}\}$$

---

**Proof by Contradiction**: via the Pumping Lemma

**Initial Assumption**: $L_2$ is context-free and thus satisfies the Pumping Lemma let $p$ be the pumping length given by the Pumping Lemma.

**Test Input**: $w = 1^p0^{2p}1^p$ This input is in $L_2$.

By the Pumping Lemma, $w$ can be broken down into five components $uvxyz$ such that:

- $|vxy| \leq p$
- $|vy| > 0$

Given that $|vxy| \leq p$, $vxy$ cannot span across both the boarder between 1s and 0s and the boarder between 0s and 1s. Thus, when we pump $vxy$, we _either_ pump 0s, 1s, or a string of the form ...0011...or a string of the form ...1100...

**Cases**:

1. $vxy$ contains only 0s. By pumping $uvxyz$ up to $uv^2xy^2z$, we produce a string with more 0s than 1s, and thus is not in $L_2$.

2. $vxy$ contains only 1s. By pumping $uvxyz$ up to $uv^2xy^2z$, we produce a string with more 1s than 0s, and thus is not in $L_2$. (it's also not a palindrome but let's not get into it)

3. $vxy$ spans a ...0011... or ...1100...transition. By pumping $uvxyz$ up to $uv^2xy^2z$, we produce a string that is no longer a palindrome, since $vxy$ cannot also contain the other transition.

In all of these cases, by pumping $uvxyz$ to $uv^2xy^2z$, we produce a string that is no longer in $L_2$. Thus $L_2$ does not satisfy the Pumping Lemma.

$$\Longrightarrow \Longleftarrow$$

Thus $L_2$ is not context-free. $\Box$

\pagebreak


Consider the following context-free grammar:


```{=latex}
\begin{tabularx}{\linewidth}{@{}l c X@{}}

S & $\longrightarrow$ & NP VP \\
S & $\longrightarrow$ & NP VP PP \\
NP & $\longrightarrow$ & det n \\
NP & $\longrightarrow$ & n \\
NP & $\longrightarrow$ & NP PP \\
VP & $\longrightarrow$ & aux VP \\
VP & $\longrightarrow$ & v NP \\
PP & $\longrightarrow$ & p NP \\
det & $\longrightarrow$ & \texttt{the} | \texttt{a} | \texttt{an} \\
n & $\longrightarrow$ & \texttt{students} | \texttt{professor} | \texttt{snacks} \\
aux & $\longrightarrow$ & \texttt{could} | \texttt{should} | \texttt{must} \\
v & $\longrightarrow$ & \texttt{bring} | \texttt{feed} \\
p & $\longrightarrow$ & \texttt{to} | \texttt{for} \\

\end{tabularx}
```

List every derevation of the following input: `the students could bring snacks to the professor`. Your solution should be formatted according to the Sipser derevation on page 104.

---

In Chomsky Normal Form, the CFG becomes:

```{=latex}
\begin{tabularx}{\linewidth}{@{}l c X@{}}

$\text{S}_0$ & $\longrightarrow$ & NP VP | NP VPP \\
VPP & $\longrightarrow$ & VP PP \\
NP & $\longrightarrow$ & det n | NP PP | \texttt{students} | \texttt{professors} | \texttt{snacks} \\
VP & $\longrightarrow$ & aux VP | v NP \\
PP & $\longrightarrow$ & p NP \\
det & $\longrightarrow$ & \texttt{the} | \texttt{a} | \texttt{an} \\
n & $\longrightarrow$ & \texttt{students} | \texttt{professor} | \texttt{snacks} \\
aux & $\longrightarrow$ & \texttt{could} | \texttt{should} | \texttt{must} \\
v & $\longrightarrow$ & \texttt{bring} | \texttt{feed} \\
p & $\longrightarrow$ & \texttt{to} | \texttt{for} \\

\end{tabularx}
```

\bigskip

Then we can apply the Ice Cream Cone algorithm... 

\bigskip

```{=latex}
\begin{center}
\begin{tikzpicture}[scale=1.0]

\draw [black] (0,8) -- (8,0);
\draw [black] (8,0) -- (16,8);
\draw [black] (0,8) -- (16,8);

\draw [black] (2,8) -- (9,1);
\draw [black] (4,8) -- (10,2);
\draw [black] (6,8) -- (11,3);
\draw [black] (8,8) -- (12,4);
\draw [black] (10,8) -- (13,5);
\draw [black] (12,8) -- (14,6);
\draw [black] (14,8) -- (15,7); 

\draw [black] (2,8) -- (1,7);
\draw [black] (4,8) -- (2,6);
\draw [black] (6,8) -- (3,5);
\draw [black] (8,8) -- (4,4);
\draw [black] (10,8) -- (5,3);
\draw [black] (12,8) -- (6,2);
\draw [black] (14,8) -- (7,1);

\draw  (1,8.3) node {\texttt{the}};
\draw  (3,8.3) node {\texttt{students}};
\draw  (5,8.3) node {\texttt{could}};
\draw  (7,8.3) node {\texttt{bring}};
\draw  (9,8.3) node {\texttt{snacks}};
\draw (11,8.3) node {\texttt{to}};
\draw (13,8.3) node {\texttt{the}};
\draw (15,8.3) node {\texttt{professor}};

\draw  (1,7.7) node {det};
\draw  (3,7.7) node {NP, n};
\draw  (5,7.7) node {aux};
\draw  (7,7.7) node {v};
\draw  (9,7.7) node {NP, n};
\draw (11,7.7) node {p};
\draw (13,7.7) node {det};
\draw (15,7.7) node {NP, n};

\draw  (2,7) node {NP};
\draw  (8,7) node {VP};
\draw (14,7) node {NP};

\draw  (7,6) node {VP};
\draw (13,6) node {PP};

\draw  (6,5) node {$\text{S}_0$};
\draw (12,5) node {NP};

\draw  (5,4) node {$\text{S}_0$};
\draw (11,4) node {VP, VPP};

\draw (10,3) node {VP, VPP};

\draw  (9,2) node {$\text{S}_0$};

\draw  (8,1) node {$\text{S}_0$};

\end{tikzpicture}
\end{center}
```
\pagebreak

```{=latex}
\begin{tabularx}{\linewidth}{@{}l c X@{}}
$\text{S}_0$ & $\Longrightarrow$ & $\langle\text{NP}\rangle$ $\langle\text{VP}\rangle$  \\
             & $\Longrightarrow$ & $\langle\text{det}\rangle$ $\langle\text{n}\rangle$ $\langle\text{VP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} $\langle\text{n}\rangle$ $\langle\text{VP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} $\langle\text{VP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} $\langle\text{aux}\rangle$ $\langle\text{VP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} $\langle\text{VP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} $\langle\text{v}\rangle$ $\langle\text{NP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} $\langle\text{NP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} $\langle\text{NP}\rangle$ $\langle\text{PP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} $\langle\text{PP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} $\langle\text{p}\rangle$ $\langle\text{NP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} \texttt{to} $\langle\text{NP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} \texttt{to} $\langle\text{det}\rangle$ $\langle\text{n}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} \texttt{to} \texttt{the} $\langle\text{n}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} \texttt{to} \texttt{the} \texttt{professor} \\
\end{tabularx}
\hfill \break

\begin{tabularx}{\linewidth}{@{}l c X@{}}
$\text{S}_0$ & $\Longrightarrow$ & $\langle\text{NP}\rangle$ $\langle\text{VPP}\rangle$  \\
             & $\Longrightarrow$ & $\langle\text{det}\rangle$ $\langle\text{n}\rangle$ $\langle\text{VPP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} $\langle\text{n}\rangle$ $\langle\text{VPP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} $\langle\text{VPP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} $\langle\text{VP}\rangle$ $\langle\text{PP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} $\langle\text{aux}\rangle$ $\langle\text{VP}\rangle$ $\langle\text{PP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} $\langle\text{VP}\rangle$ $\langle\text{PP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} $\langle\text{v}\rangle$ $\langle\text{NP}\rangle$ $\langle\text{PP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} $\langle\text{NP}\rangle$ $\langle\text{PP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} $\langle\text{PP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} $\langle\text{p}\rangle$ $\langle\text{NP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} \texttt{to} $\langle\text{NP}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} \texttt{to} $\langle\text{det}\rangle$ $\langle\text{n}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} \texttt{to} \texttt{the} $\langle\text{n}\rangle$ \\
             & $\Longrightarrow$ & \texttt{the} \texttt{students} \texttt{could} \texttt{bring} \texttt{snacks} \texttt{to} \texttt{the} \texttt{professor} \\
\end{tabularx}
```
