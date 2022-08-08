# Geometric introduction to trigonal curves of genus five..


1. Let $`C`$ be a non-hyperelliptic trigonal  curve of genus five (assume for a moment that it
exists). Then it has a plane model $`C'`$ which is a quintic with a double point:

Indeed, let $`g_3^1 = |p + q + r|`$, where the points p, q and r on $`C`$ are distinct.
Then, by the geometric Riemann-Roch theorem, the points p, q and r 
all belong to the same line $`l`$ in the canonical embedding of $`C`$. (When we vary the divisor
$`D = p + q + r`$ in the linear system $`g_3^1`$, the linear span $`<D\>`$ varies, too, forming a ruled surface
in $`P^4`$ containing $`C`$. More on this in a moment; this surface is important.)
  
Now consider the linear system of hyperplanes $`|H|`$ in $`\mathbb{P}^4`$ and the linear subsystem
$`|H - l|`$ of hyperplanes containing the line $`l`$. It cuts out a linear system  
$`|K_C - p - q - r| `$ of dimension $`4 - ( \dim l + 1) = 2`$ and degree 8 - 3 = 5 on $`C`$:

```math
    K_C - g_3^1 = g_5^2
```
This $`g_5^2`$ gives a plane model $`C'`$ of the curve $`C`$ which is a curve of degree 5;
of course, this is just a projection of $`C`$ with the center l.

Since $`p_a(C') = 4 \cdot 3 / 2 = 6`$, we have $` \delta(C') = p_a(C') - p_g(C') = 
6 - 5 = 1`$, and thus $`C'`$ is a singular curve with just one singularity, which is either a node or one cusp.
(See Serre, "Algebraic groups and class fields" for an excellent introduction to the $`\delta`$ - invariant of
singular curves.)

---------------------------------------------------------------------

2. We can now prove the existence of such a curve $`C`$. Consider a plane curve $`C'`$
of degree 5 with one node $`p`$. (We omit the case of a cusp.) It is clear that such a curve exists.

The geometric genus of $`C'`$ is $`4 \cdot 3 / 2 - 1 = 5`$. Let $`C`$ be the smooth model of $`C'`$.
It can be constructed by blowing up the point $`p`$ on $`\mathbb{P}^2`$, $`Bl_p(P^2)`$, and taking the proper
pre-image of $`C'`$.

It is immediately clear that $`C`$ is trigonal: the linear system of lines
on the plane through $`p`$, $`|l - p|`$, gives a pencil of (effective) divisors
of degree 3 on $`C`$.

---------------------------------------------------------------------- 
3. The linears system of conics through $`p`$ on the plane, $`|2 l - p|`$,
cuts out a linear system of degree 10 on $`C'`$. The base locus of this linear 
system is $`2p`$. By the adjunction formula for nodal curves, (cf. 
Enrico Arbarello, Maurizio Cornalba, Phillip Griffiths, Joseph Harris,
Geometry of Algebraic Curves: Volume I, Appendix A), after removing the base point $`2p`$, 
we get the _canonical_ linear system on $`C`$. (For any plane nodal curve $C'$,
the canonical class of its smooth model is $` (d-3) l - \{ `$ 0-cycle of nodes on  $`C' \} `$.)

Note that the linear system $`|2l - p|`$ embeds $`Bl_p(P^2)`$ $`Bl_p(P^2)`$ as a ruled surface in $`P^4`$.

This gives an embedding

```math
   i(C) \; \subset i(Bl(P^2)) \; \subset P^4 = |K_C|^*
```

where $`i`$ is givenby the linear system $`|2l - p|`$.

4. note that any line $`l_0`$ on $`P^2`$ via p becomes a line $`L_0`$ under the embedding
$`i()`$. (It follows, or example, from the computation $`C \cdot l_0 = p + p'`$ for
any conic $`C`$ in $`|2l - p|`$.

It follows that the image $` S = Bl(P^2) `$ in $`P^4`$  is a ruled surface, with every line 
of the ruling giving a trisecan to the $` i(C) `$. Thus, $` S `$ is the spanned by the trisecant lines
to $` C `$.

---------------------------------------------------------------------- 
5. It is easy to see that $` S = Bl(P^2) `$ is the intersection of quadrocs through $` S `$ (and even
through $` C `$, as we will see in a moment):

Note that $` i(C) `$ is not an intersection of quadrics: for a trisecant line $` L `$,
$` L`$ intersects any quadric  $` Q `$ through $`C`$ at three points, $`  i(p1),.., i(p3) `$ ,
and this is contained in $` Q `$ . Thus, $` S `$ is the intersection of quadrics through
$` C `$ .


---------------------------------------------------------------------- 

6. In fact, $` S `$ is clearlt the same for all the crves $`C'`$ with node
at $` p `$  . A computation with Riemann-Roch theorem gives that every $`C`$ is cut ut in $` S `$ 
by its own pencil of cubic hypersurfaces in $`\mathbb{P}^4`$. The attached program computes this pencil.


---------------------------------------------------------------------- 
Author: Maxim Leyenson, ![email address](images/email-address-image.resample-100.gif)
---------------------------------------------------------------------- 
 [Go back to README](README.md)

