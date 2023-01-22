---
geometry: margin=1.5in
header-includes:
  - \pagenumbering{gobble}
  - \usepackage{syntax}
---

```{=latex}
\setlength{\grammarindent}{70pt} % increase separation between LHS/RHS 
\renewcommand{\syntleft}{\normalfont\itshape}
\renewcommand{\syntright}{}
\begin{grammar}

<statement> ::= <ident> "=" <expr>
\alt "for" <ident> "=" <expr> "to" <expr> "do" <statement>
\alt "{" <stat-list> "}"
\alt <empty> 

<stat-list> ::= <statement> ";" <stat-list> | <statement>

\end{grammar}
```

