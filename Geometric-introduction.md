
   <!-- Required extensions: mdx_math(enable_dollar_delimiter=1)  -->

**Synopsis**

Construct a [random] canonically embedded trigonal curve of genus 5 in
its canonical projective embedding.

I am merely using the ideas of David Eisenbud, who was testing Mark
Green's conjecture on curve gonality for curves of genus 7 (I
believe). There are no new ideas involved.  

Email any suggestions and improvements to <leyenson@google mail server dot com>, please

**Geometric introduction to genus five trigonal curves **


1. Let C be [non-hyperelliptic] trigonal  curve of genus five (assume for a moment that it
exists). Then it has a plane model C' which is a quintic with a double point.

Indeed, let $`g_3^1 = |p + q + r|`$, where the points p, q and r on C are distinct.
Then, by the geometric Riemann-Roch theorem, the points p, q and r 
all belong to the same line l in the canonical embedding of C. (When we vary the divisor
$`D = p + q + r`$ in the linear system $`g_3^1`$, the span $`<D\>`$ varies, too, forming a ruled surface
in $`P^4`$ containing C. More on this in a moment.)
  
In the canonical embedding of C the linear system of hyperplanes
$`|H|`$ cuts out the linear system $`|K_C|`$ of dimension 4 and degree 2g - 2 = 8.

the linear subsystem $`|K_C - l|`$ of hyperplanes containing the 
trisecant line l is of dimension 4 - 2 = 2 and degree 8 - 3 = 5:

```math
    K_C - g_3^1 = g_5^2
```

This g_5^2 gives a plane model C' of the curve C which is a curve of degree 5.
Since p_a(C') = 4 * 3 / 2 = 6, we have $`delta(C') = p_a(C') - p_g(C') = 
6 - 5 = 1`$, and thus C' contains either one node or one cusp.

---------------------------------------------------------------------

2. We can now prove the existence of such a curve C. Consider a plane curve C'
of degree 5 with one node p. (We omit the case of a cusp.)

The geometric genus of C' is 4 * 3 / 2 - 1 = 5. Let C be the smooth model of C'.
It can be constructed by blowing up the point p on P^2, $`Bl_p(P^2)`$, and taking the proper
pre-image of C'.

It is immediately clear that C is trigonal: the linear system of lines
on the plane through p, |l - p|, gives a pencil of [effective] divisors
of degree 3 on C.

     <!--
Since C' has a node at the point p, the curve C is naturally embedded into the
blowup, 
    -->

---------------------------------------------------------------------- 
3. The linears system of conics through p on the plane, |2 l - p|,
cuts out a linear system of degree 10 on C' and on C. The base locus of this linear 
system is 2p. By the adjunction formula for nodal curves, (cf. 
Enrico Arbarello, Maurizio Cornalba, Phillip Griffiths, Joseph Harris,
Geometry of Algebraic Curves: Volume I, Appendix A), after removing the base point 2p, 
it gives the _canonical_ linear system on C. 

Note that the linear system |2l - p| embeds $`Bl_p(P^2)`$ as a ruled surface in P^4.

This gives an embedding

```math
   i(C) < i(Bl(P^2)) < P^4 = |K_C|^*
```

where i is givenby the linear system |2l - p|.

4. note that any line $l_0$ on P^2 via p becomes a line under the embedding
i(). (It followa, or example, from the computation C \dot l_0 = p + p' for
any conic C in |2l - p|.

It follows that the image S = Bl(P^2) in P^4  is a ruled surface, with every line 
of the ruling giving a trisecan to the i(C). Thus, S is the spanned by the trisecant lines
to C.

---------------------------------------------------------------------- 
5. It is easy to see that S = Bl(P^2) is the intersection of quadrocs through S.


Note that i(C) is not an intersection of quadrics: for a trisecant line L,
L intersect any quadric  Q through C at three points, i(p1),.., i(p3),
and this is contained in Q. Thus, S is the intersection of quadrics through
C.


---------------------------------------------------------------------- 

6. In fact, S is clearlt the same for all the crves C' with node
at p. A computation with Riemann-Roch theorem gives that every C is cut ut in S
by its own pencil of cubic hypersurfaces in P^4. The attached program computes this pencil.


---------------------------------------------------------------------- 

     <!-- need one node.

K_C - g_3^1:
      deg = (2g - 2) - 3 = 5;
      r = h^0(K_C - g_3^1) - 1 = {planes in P^4 via a line} = 2

geometric meaning: 
    |K_C - g_3^1 | = {divisors in K_C, containing 3 points on a line} - {the base locus} = g_5^2 -->

---------------------------------------------------------------------- 
