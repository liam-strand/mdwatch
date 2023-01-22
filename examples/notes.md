# September 6th: Origins

## Big math beef

- Math in a theoretical sense, building up knowlege from axioms
- For 2000ish years, people were trying to use the following 4 axioms to prove a fifth axiom:
  1. To draw a straight line from any point to any point
  2. To produce a finite staight line continuously in a straight line
  3. To describe a circle with any center and distance
  4. That all right angles are equal to one another
- The 5th axiom was that: If a straight line falling on two straight lines make the interior angles on the same side less than two right angles, the two straight lines, if produced indefinitely, meet on that side on which are the angles less than the two right angles.
- The big problem was that "indefinitely". Infinity is really hard :(
- If we can prove the 5th axiom from the other 4, then that 5th axiom isn't necessary.
- A novel approach in the 1830s was to replace that 5th axiom with a contradictory one...and it like totally worked
  - This means that we just have more "worlds of geometry" than the flat one that we usually think of.
- At the same time, we get proofs that squaring a circle and trisecting an angle are impossible.
- woah. new math.

## First Order Logic

- Provides the syntax and rules for how we describe logic

| Symbol     | Definition              |
| ---------- | ----------------------- |
| $()$       | grouping                |
| $\lnot$    | not                     |
| $\lor$     | or                      |
| $\implies$ | implies                 |
| $=$        | equals                  |
| $\exists$  | exists                  |
| $\forall$  | for all                 |
| $x$        | variables               |
| $a$        | constants               |
| $T$        | functions/relationships |

- If you have $S$ and $S \implies T$, then $T$
- If you have $T(a)$, you can deduce $\exists xT(a)$
- If you have $\forall xT(x)$, you can deduce $T(a)$
- If you have $S$ and $S$ does not contain the variable name $x$, you can deduce $\forall xS$
- What do we get from this system?
  1. It's easy to determine a valid formula
  2. Formulas have one, unambiguous meaning
  3. Deductions are purely syntactic
- ok cool, but we've gotten really far away from reality...
- if the axioms aren't legit, then we just wasted 100 years on proving nonsense

## What makes axioms good?

- Independent
  - no axiom can be proved from the other axioms
- Complete
  - everything is either true or not true
  - luckily we can just add an axiom if something is ambiguous
- Consistent
  - If anything can be true and not true at the same time, you're fucked.
  - If there is an inconsistency, you have to go back to the drawing board
  - This is the big scary one

## The Bottom of the Axioms

- We can map axioms from one universe of math to another
  - We can prove that if one set of axioms is consistent, then another set in another realm of math is also consistent
  - Eventually, though, we need some last true set of axioms
- Set theory is a really good choice because we can represent lots of cool things in a natural way
  - Natural numbers? The set with that number of elements
  - Abstract concepts? The set with all the things that adhere to that concept
  - Infinity? Infinite sets!
- Really, we only run in to problems with all real numbers. But with set theory we can **prove** that the real numbers are uncountable, unlike algebraic, rational, integer, and natural numbers, which are all countable.
