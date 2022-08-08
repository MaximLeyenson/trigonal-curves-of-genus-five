
-- here i am merely using the ideas of David Eisenbud, who was testing
-- Mark Green conjecture on the gonality of curves. there are no new ideas
-- involved. Maxim

---------------------------------------------------------------------

-- starting with P^2

 kk = ZZ/13            -- characteristics should not be 2 or 5 

 R = kk[a,b,c]

-- ----------------------------------------------------------------------------------
-- g = 5; a trigonal  curve is a plane quintic with one node; |g_5^2| = |K_C - g_3^1| 
-- ----------------------------------------------------------------------------------

-- notations: Gamma is a plane quintic with one node;

-- C is the resolution of singularities

-- (Macaulay does not deal with notations like C^prime well, hence I use Gamma)


-- need  a quintic with one node.

  m = ideal(a,b)

      -- point p = (0,0,1)

 -- For a plane curve Gamma to have a node at the point p, we should have f is in the ideal m^2:

curves = m^2

 -- | a2 ab b2 |
 -- that is, curves_0 = a^2, curves_1 = ab, curves_2 = b^2 

 -- a general equation of a curve Gamma with node at p is 

  --       f = h_0 a^2 + h_1 ab + h_2 b^2, 

  --   where deg h_i = 5 - 2 = 3 

 -- ( M2 enumerates indicies as 0,1,2 ... )

-- -------------------------------------------------------------------------
-- = constructing a random curve Gamma (with equation f) with a node at p =
-- --------------------------------------------------------------------------

-- | a2 ab b2 |  = |f1 f2 f3|;  degrees |2 2 2| 

-- f is a random polynomials of the form h_0 f_0 + h_1 f_1 + h_2 f_2;

-- now I need three random polynomials h_i of degree 3 

h0 = random(3,R)
h1 = random(3,R)
h2 = random(3,R)

f = h0 * curves_0  + h1 * curves_1 + h2 * curves_2 

  -- this will give the sum (h_i f_i),
  -- f_i are generators of curves 

   -- now f is a random curve of degree 5 with [hopefully, just a]  node at the point p. 
   -- will be checking that it has just a node, and no other singularities

print " [computed a random nodal curve of degree 5, f = "
print " "
print f
print " "
print "need to check that it has a node at the point p (and not some higher singularity), "
print "and that it has no singularities at any other points "

-- ---------------------------------------------------------------------
print " [sanity check: if we are unlucky, f can land in  m^3! ] "
-- ---------------------------------------------------------------------

if (f % m^3) == 0 
   then error "so unlucky that f vanishes at p with order 3! run again." else 
   print "  -> [OK; f is not in m^3] " ;


-- ---------------------------------------------------------------------
print " [sanity check: if we are unlucky, quadratic part of f at p could be degenerate; ] "
print " [that is, the tangent cone will be the double line ] "

quadraticPart = f % m^3
       -- it is still homogeneous; need an affine part; c -> 1

q = sub(quadraticPart , c => 1)

print " quadratic part of f at p: "

print q

-- f.e., 5a^2  + 2a*b + 6b^2

  q1 = coefficient(a^2,q)
  q2 = coefficient(a * b ,q)
  q3 = coefficient(b^2,q)

   Discr = 4 * q1 * q3 - q2^2

print "Discriminant of q: " 
print Discr

if (Discr == 0 )                    -- Discriminant is zero
   then error "so unlucky that the tangent at p is a double line; p is  not a node; exiting; run again" else 
   print "  -> [OK; lucky; point p is just a node ] " ;

-- ---------------------------------------------------------------------
-- sanity check: need to check that there are no other singularities!
-- that would be incredibly unlucky
-- ---------------------------------------------------------------------

s = radical ideal singularLocus(R/f)

print "singularities of the curve Gamma: "
print s 

-- hopefully, ideal (b, a)

if not (radical ideal singularLocus(R/f)  == ideal(a,b) )
   then error "so incredibly unlucky that the curve Gamma has other singularities!! exiting; run again! " else 
   print "  -> [OK; point p is the only singularity ] " ;

-- ---------------------------------------------------------------------

--  The canonical series of C is cut out by |2l - p| on its plane model, Gamma
-- remark: |2l - p| = P^4, with basis a^2, ..., ac --- all monomials besides c^2

-- conics in P^2 through the point p: 

canonicalSeries = basis(2, m)

--  "canonicalSeries" for the "canonical linear system" 

        -- this gives basis in the vector space of polynomials of degree 2
        -- (conics) passing through this point
        -- i.e., this is basis(degree = 2, Ideal)
   
-- canonicalSeries = canonicalSeries ** R

canonicalSeries = super canonicalSeries

print " [computed the canonical map on the resolution C~, i.e., |2l - p|;  canonicalSeries = "
print " "
print canonicalSeries
print " "

-- | a2 ab ac b2 bc |
            
-- Matrix R^1  <--- R^5        (i.e., five elements of the ring R; map: P^2 -> P^4) 



---------------------------------------------------------------------
-- = canonical embedding =
---------------------------------------------------------------------

-- To compute the homogeneous coordinate rings of the canonical curves,
-- we must find the algebraic relations among the generators of canonicalSeries
-- modulo f.

-- (Indeed! we compute (a^2, ,,,. bc) on the curve; i.e., take its image in the P^4

-- The coordinate ring of P4

print " [constructing P^4 with coordinates x_i] "
print " "

S = kk[x_0..x_4]

-- S = k[P^2]
print "[ S = k[P^2], homogeneous ] "


-- find the canonical ideal IdealC of C, that is, the kernel of the map S -> R/(f) defined by the canonical series.

-- T = k[C] for a plane nodal curve
print " [T = k[C], homogeneous ] "
print " "
T = R/ideal f


-- now: 

 -- R = kk[a,b,c]  is the graded ring of functions on P^2;
 -- T  is the graded ring of functions on the curve C;

 -- C -> P^4
 -- is (S -> T)
 -- = (S -> R/ ideal f1)

print " [constructing the map f: C -> P^4, or phi:  T <- S ] "
print " "


phi = map(T,S,substitute(canonicalSeries, T))

-- x_i = (conics restricted to C)
--  (a^2, ab, etc)

describe phi

--               2             2
--  map (T, S, {a , a*b, a*c, b , b*c})



--    (he intends T <- S)
--
--               Spec T -> Spec S = (projective space)
--
--          kernel of phi = (equations defining C!!!)
--

print " [computing kernel of the map phi: k[P^4] -> k[C] ] "
print " [that is, the equations of the canonical model of C ] "
print " "

IdealC = mingens ker phi

print " [computed IdealC, ideal of the canonical model of C] "
print " "

print IdealC
print " "

print " [number of generators of the IdealC: ]"
numberOfGens= # IdealC

print numberOfGens


-- 5 образующих; 3 квадрики; 2е кубики

print " [degrees of the generators of the IdealC: ]"

for i from 0 to numberOfGens - 1 do (
	  print degree(IdealC_i)
          )



print " [the generators of the IdealC: ]"

for i from 0 to numberOfGens - 1 do (
	  print IdealC_i;
          print " "
          )

-- error "debug me"


