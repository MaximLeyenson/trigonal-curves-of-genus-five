# Trigonal curves of genus 5, canonical model


**Subject**

Projective algebraic geometry

**Geometric introduction**

For a Geometric introduction to genus five trigonal curves, please see
[Geometric introduction](Geometric-introduction.md)

(Also, the Macaulay 2 code is really commented and explained).

**Synopsis**

Construct a random canonically embedded trigonal curve of genus five in $`\mathbb{P}^4`$.

I am merely using the ideas of David Eisenbud, who was testing Mark
Green's conjecture on the gonality and projective resolutions of curves.
believe). There are no new ideas involved.  

Email any suggestions to the ![email address](images/email-address-image.resample-100.gif), please

**Typical output, abridged, without equations**

 [constructing a random nodal plane curve $`C'`$ of degree 5 ..]

 [computing the canonical model of $`C'`$, i.e., the image under the linear system $`|2l - p|`$]

 [constructing the map $`f: C \mapsto P^4`$, or $`\phi:  T \leftarrow S`$ ] 

 [computing kernel of the map  $`\phi: \;  k[P^4] \rightarrow k[C]`$ ] 

 [that is, the equations of the canonical model of $`C`$ ] 

 [degrees of the generators of the ideal: ]

{2}

{2}

{2}

{3}

{3}

**Full output with equations, example**

 [Full output, example](output-example.txt)

**Usage**

```bash
$ M2 trigonal-curve-of-genus-5.m2
```

**Requirements**

   * M2:  [Macaulay2](https://en.wikipedia.org/wiki/Macaulay2) is a free computer algebra system created by Daniel Grayson 
and Michael Stillman for computation in algebraic geometry


For installation, please see: [INSTALL.md](INSTALL.md)


**Attributions**

Maxim Leyenson, ![email address](images/email-address-image.resample-100.gif)

Using ideas of David Eisenbud, in his study of the Mark Green conjectures on minimal resolutions of canonical curves.


