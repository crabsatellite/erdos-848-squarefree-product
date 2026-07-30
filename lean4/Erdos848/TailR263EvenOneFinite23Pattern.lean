import Erdos848.TailR263EvenOneFinite23Core

namespace Erdos848

/-!
# Exact cutoff-23 root-pattern arithmetic for the R263 E1 branch

The seven prime-square coordinates are represented by the equality pattern
of the three quotient roots.  All densities and endpoint errors below are
integers over the full CRT modulus.  The later generated certificate checks
the resulting inequalities with `decide`, so no decimal or external solver
enters the trusted proof.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive E1FiniteRootPattern
  | allEqual
  | firstSecond
  | firstThird
  | secondThird
  | allDistinct
  deriving DecidableEq, Fintype

def e1FinitePatternPairCard
    (pattern : E1FiniteRootPattern) (pair : Fin 3) : Nat :=
  match pattern with
  | .allEqual => 1
  | .firstSecond => ![1, 2, 2] pair
  | .firstThird => ![2, 1, 2] pair
  | .secondThird => ![2, 2, 1] pair
  | .allDistinct => 2

def e1FinitePatternTripleCard
    (pattern : E1FiniteRootPattern) : Nat :=
  match pattern with
  | .allEqual => 1
  | .firstSecond | .firstThird | .secondThird => 2
  | .allDistinct => 3

def e1FinitePairCards
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern)
    (pair : Fin 3) : E1FinitePrimeIndex -> Nat :=
  ![e1FinitePatternPairCard p3 pair,
    e1FinitePatternPairCard p7 pair,
    e1FinitePatternPairCard p11 pair,
    e1FinitePatternPairCard p13 pair,
    e1FinitePatternPairCard p17 pair,
    e1FinitePatternPairCard p19 pair,
    e1FinitePatternPairCard p23 pair]

def e1FiniteTripleCards
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    E1FinitePrimeIndex -> Nat :=
  ![e1FinitePatternTripleCard p3,
    e1FinitePatternTripleCard p7,
    e1FinitePatternTripleCard p11,
    e1FinitePatternTripleCard p13,
    e1FinitePatternTripleCard p17,
    e1FinitePatternTripleCard p19,
    e1FinitePatternTripleCard p23]

def e1FiniteSingletonCards : E1FinitePrimeIndex -> Nat := fun _ => 1

def e1FiniteFullModulus : Nat := 497704286448369

def e1FiniteRankNumerator
    (cards : E1FinitePrimeIndex -> Nat) (rank : Nat) : Int :=
  match rank with
  | 1 =>
      55300476272041 * cards 0 +
      10157230335681 * cards 1 +
      4113258565689 * cards 2 +
      2944995777801 * cards 3 +
      1722160160721 * cards 4 +
      1378682233929 * cards 5 +
      940839860961 * cards 6
  | 2 =>
      1128581148409 * cards 0 * cards 1 +
      457028729521 * cards 0 * cards 2 +
      327221753089 * cards 0 * cards 3 +
      191351128969 * cards 0 * cards 4 +
      153186914881 * cards 0 * cards 5 +
      104537762329 * cards 0 * cards 6 +
      83944052361 * cards 1 * cards 2 +
      60101954649 * cards 1 * cards 3 +
      35146125729 * cards 1 * cards 4 +
      28136372121 * cards 1 * cards 5 +
      19200813489 * cards 1 * cards 6 +
      24338808081 * cards 2 * cards 3 +
      14232728601 * cards 2 * cards 4 +
      11394068049 * cards 2 * cards 5 +
      7775536041 * cards 2 * cards 6 +
      10190296809 * cards 3 * cards 4 +
      8157883041 * cards 3 * cards 5 +
      5567099769 * cards 3 * cards 6 +
      4770526761 * cards 4 * cards 5 +
      3255501249 * cards 4 * cards 6 +
      2606204601 * cards 5 * cards 6
  | 3 =>
      9327116929 * cards 0 * cards 1 * cards 2 +
      6677994961 * cards 0 * cards 1 * cards 3 +
      3905125081 * cards 0 * cards 1 * cards 4 +
      3126263569 * cards 0 * cards 1 * cards 5 +
      2133423721 * cards 0 * cards 1 * cards 6 +
      2704312009 * cards 0 * cards 2 * cards 3 +
      1581414289 * cards 0 * cards 2 * cards 4 +
      1266007561 * cards 0 * cards 2 * cards 5 +
      863948449 * cards 0 * cards 2 * cards 6 +
      1132255201 * cards 0 * cards 3 * cards 4 +
      906431449 * cards 0 * cards 3 * cards 5 +
      618566641 * cards 0 * cards 3 * cards 6 +
      530058529 * cards 0 * cards 4 * cards 5 +
      361722361 * cards 0 * cards 4 * cards 6 +
      289578289 * cards 0 * cards 5 * cards 6 +
      496710369 * cards 1 * cards 2 * cards 3 +
      290463849 * cards 1 * cards 2 * cards 4 +
      232532001 * cards 1 * cards 2 * cards 5 +
      158684409 * cards 1 * cards 2 * cards 6 +
      207965241 * cards 1 * cards 3 * cards 4 +
      166487409 * cards 1 * cards 3 * cards 5 +
      113614281 * cards 1 * cards 3 * cards 6 +
      97357689 * cards 1 * cards 4 * cards 5 +
      66438801 * cards 1 * cards 4 * cards 6 +
      53187849 * cards 1 * cards 5 * cards 6 +
      84217329 * cards 2 * cards 3 * cards 4 +
      67420521 * cards 2 * cards 3 * cards 5 +
      46009089 * cards 2 * cards 3 * cards 6 +
      39425841 * cards 2 * cards 4 * cards 5 +
      26904969 * cards 2 * cards 4 * cards 6 +
      21538881 * cards 2 * cards 5 * cards 6 +
      28227969 * cards 3 * cards 4 * cards 5 +
      19263321 * cards 3 * cards 4 * cards 6 +
      15421329 * cards 3 * cards 5 * cards 6 +
      9018009 * cards 4 * cards 5 * cards 6
  | _ => 0

def e1FiniteRankEndpoint
    (cards : E1FinitePrimeIndex -> Nat) (rank : Nat) : Nat :=
  match rank with
  | 1 =>
      cards 0 + cards 1 + cards 2 + cards 3 +
      cards 4 + cards 5 + cards 6
  | 2 =>
      cards 0 * cards 1 + cards 0 * cards 2 +
      cards 0 * cards 3 + cards 0 * cards 4 +
      cards 0 * cards 5 + cards 0 * cards 6 +
      cards 1 * cards 2 + cards 1 * cards 3 +
      cards 1 * cards 4 + cards 1 * cards 5 +
      cards 1 * cards 6 + cards 2 * cards 3 +
      cards 2 * cards 4 + cards 2 * cards 5 +
      cards 2 * cards 6 + cards 3 * cards 4 +
      cards 3 * cards 5 + cards 3 * cards 6 +
      cards 4 * cards 5 + cards 4 * cards 6 +
      cards 5 * cards 6
  | 3 =>
      cards 0 * cards 1 * cards 2 +
      cards 0 * cards 1 * cards 3 +
      cards 0 * cards 1 * cards 4 +
      cards 0 * cards 1 * cards 5 +
      cards 0 * cards 1 * cards 6 +
      cards 0 * cards 2 * cards 3 +
      cards 0 * cards 2 * cards 4 +
      cards 0 * cards 2 * cards 5 +
      cards 0 * cards 2 * cards 6 +
      cards 0 * cards 3 * cards 4 +
      cards 0 * cards 3 * cards 5 +
      cards 0 * cards 3 * cards 6 +
      cards 0 * cards 4 * cards 5 +
      cards 0 * cards 4 * cards 6 +
      cards 0 * cards 5 * cards 6 +
      cards 1 * cards 2 * cards 3 +
      cards 1 * cards 2 * cards 4 +
      cards 1 * cards 2 * cards 5 +
      cards 1 * cards 2 * cards 6 +
      cards 1 * cards 3 * cards 4 +
      cards 1 * cards 3 * cards 5 +
      cards 1 * cards 3 * cards 6 +
      cards 1 * cards 4 * cards 5 +
      cards 1 * cards 4 * cards 6 +
      cards 1 * cards 5 * cards 6 +
      cards 2 * cards 3 * cards 4 +
      cards 2 * cards 3 * cards 5 +
      cards 2 * cards 3 * cards 6 +
      cards 2 * cards 4 * cards 5 +
      cards 2 * cards 4 * cards 6 +
      cards 2 * cards 5 * cards 6 +
      cards 3 * cards 4 * cards 5 +
      cards 3 * cards 4 * cards 6 +
      cards 3 * cards 5 * cards 6 +
      cards 4 * cards 5 * cards 6
  | _ => 0

def e1FiniteNoEventNumerator
    (cards : E1FinitePrimeIndex -> Nat) (degree : Nat) : Int :=
  match degree with
  | 1 => e1FiniteFullModulus - e1FiniteRankNumerator cards 1
  | 2 => e1FiniteFullModulus - e1FiniteRankNumerator cards 1 +
      e1FiniteRankNumerator cards 2
  | 3 => e1FiniteFullModulus - e1FiniteRankNumerator cards 1 +
      e1FiniteRankNumerator cards 2 - e1FiniteRankNumerator cards 3
  | _ => 0

def e1FiniteNoEventEndpoint
    (cards : E1FinitePrimeIndex -> Nat) (degree : Nat) : Nat :=
  match degree with
  | 1 => e1FiniteRankEndpoint cards 1
  | 2 => e1FiniteRankEndpoint cards 1 + e1FiniteRankEndpoint cards 2
  | 3 => e1FiniteRankEndpoint cards 1 + e1FiniteRankEndpoint cards 2 +
      e1FiniteRankEndpoint cards 3
  | _ => 0

def e1FiniteAllThreeNumerator
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Int :=
  e1FiniteFullModulus -
      3 * e1FiniteNoEventNumerator e1FiniteSingletonCards 3 +
      (∑ pair : Fin 3,
        e1FiniteNoEventNumerator
          (e1FinitePairCards p3 p7 p11 p13 p17 p19 p23 pair) 2) -
      e1FiniteNoEventNumerator
        (e1FiniteTripleCards p3 p7 p11 p13 p17 p19 p23) 3

def e1FiniteAllThreeEndpoint
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Nat :=
  3 * e1FiniteNoEventEndpoint e1FiniteSingletonCards 3 +
    (∑ pair : Fin 3,
      e1FiniteNoEventEndpoint
        (e1FinitePairCards p3 p7 p11 p13 p17 p19 p23 pair) 2) +
    e1FiniteNoEventEndpoint
      (e1FiniteTripleCards p3 p7 p11 p13 p17 p19 p23) 3

def e1FiniteTwoOfThreeNumerator
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Int :=
  e1FiniteFullModulus -
      (∑ pair : Fin 3,
        e1FiniteNoEventNumerator
          (e1FinitePairCards p3 p7 p11 p13 p17 p19 p23 pair) 1) +
      2 * e1FiniteNoEventNumerator
        (e1FiniteTripleCards p3 p7 p11 p13 p17 p19 p23) 2

def e1FiniteTwoOfThreeEndpoint
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Nat :=
  (∑ pair : Fin 3,
    e1FiniteNoEventEndpoint
      (e1FinitePairCards p3 p7 p11 p13 p17 p19 p23 pair) 1) +
    2 * e1FiniteNoEventEndpoint
      (e1FiniteTripleCards p3 p7 p11 p13 p17 p19 p23) 2

inductive E1FiniteCellType
  | good
  | seven
  | eleven
  | both
  deriving DecidableEq, Fintype

def e1FiniteCellTypeOf
    (p7 p11 : E1FiniteRootPattern) : E1FiniteCellType :=
  if p7 = .allEqual then
    if p11 = .allEqual then .both else .seven
  else if p11 = .allEqual then .eleven else .good

def e1FiniteFourTargetMillion : E1FiniteCellType -> Nat
  | .good => 945
  | .seven => 1538
  | .eleven => 1169
  | .both => 1781

def e1FiniteThreeTargetMillion : E1FiniteCellType -> Nat
  | .good => 11988
  | .seven => 12442
  | .eleven => 12139
  | .both => 12616

/-!
The independent-pattern certificate above is intentionally valid without a
geometric premise and is also reused on later ranges.  The sharper
five-million certificate records the missing feasibility information for the
pair selected by the root completion: every prime whose two quotient roots
coincide contributes its square to that pivot distance.
-/

def e1FinitePatternPairFactor
    (prime : Nat) (pattern : E1FiniteRootPattern) (pair : Fin 3) : Nat :=
  if e1FinitePatternPairCard pattern pair = 1 then prime else 1

def e1FinitePatternPairProduct
    (pair : Fin 3)
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Nat :=
  e1FinitePatternPairFactor 3 p3 pair *
    e1FinitePatternPairFactor 7 p7 pair *
    e1FinitePatternPairFactor 11 p11 pair *
    e1FinitePatternPairFactor 13 p13 pair *
    e1FinitePatternPairFactor 17 p17 pair *
    e1FinitePatternPairFactor 19 p19 pair *
    e1FinitePatternPairFactor 23 p23 pair

def e1FinitePatternPairFeasibleBelowTenMillion
    (pair : Fin 3)
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Prop :=
  4 * e1FinitePatternPairProduct pair
        p3 p7 p11 p13 p17 p19 p23 ^ 2 < 10_000_000

instance e1FinitePatternPairFeasibleBelowTenMillionDecidable
    (pair : Fin 3)
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    Decidable (e1FinitePatternPairFeasibleBelowTenMillion pair
      p3 p7 p11 p13 p17 p19 p23) := by
  unfold e1FinitePatternPairFeasibleBelowTenMillion
  infer_instance

def e1FinitePatternAllPairsFeasibleBelowTenMillion
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Prop :=
  ∀ pair : Fin 3, e1FinitePatternPairFeasibleBelowTenMillion pair
    p3 p7 p11 p13 p17 p19 p23

instance e1FinitePatternAllPairsFeasibleBelowTenMillionDecidable
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    Decidable (e1FinitePatternAllPairsFeasibleBelowTenMillion
      p3 p7 p11 p13 p17 p19 p23) := by
  unfold e1FinitePatternAllPairsFeasibleBelowTenMillion
  infer_instance

def e1FinitePatternFeasibleBelowTenMillion
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Prop :=
  e1FinitePatternPairFeasibleBelowTenMillion 0
      p3 p7 p11 p13 p17 p19 p23 ∨
    e1FinitePatternPairFeasibleBelowTenMillion 1
      p3 p7 p11 p13 p17 p19 p23 ∨
    e1FinitePatternPairFeasibleBelowTenMillion 2
      p3 p7 p11 p13 p17 p19 p23

instance e1FinitePatternFeasibleBelowTenMillionDecidable
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    Decidable (e1FinitePatternFeasibleBelowTenMillion
      p3 p7 p11 p13 p17 p19 p23) := by
  unfold e1FinitePatternFeasibleBelowTenMillion
  infer_instance

def e1FiniteFourPaymentCrossInequality
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Prop :=
  let density :=
    e1FiniteAllThreeNumerator p3 p7 p11 p13 p17 p19 p23
  let endpoint :=
    e1FiniteAllThreeEndpoint p3 p7 p11 p13 p17 p19 p23
  0 <= density ∧
    1_000_000 *
        (density * 5_000_000 +
          25 * (density + endpoint * e1FiniteFullModulus)) <=
      e1FiniteFourTargetMillion (e1FiniteCellTypeOf p7 p11) *
        e1FiniteFullModulus * 25 * 5_000_000

def e1FiniteThreePaymentCrossInequality
    (p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Prop :=
  let allThree :=
    e1FiniteAllThreeNumerator
      .allEqual p7 p11 p13 p17 p19 p23
  let twoOfThree :=
    e1FiniteTwoOfThreeNumerator
      .allEqual p7 p11 p13 p17 p19 p23
  let endpoint :=
    e1FiniteAllThreeEndpoint
        .allEqual p7 p11 p13 p17 p19 p23 +
      e1FiniteTwoOfThreeEndpoint
        .allEqual p7 p11 p13 p17 p19 p23
  0 <= allThree ∧ 0 <= twoOfThree ∧
    1_000_000 *
        ((allThree + twoOfThree) * 5_000_000 +
          25 * ((allThree + twoOfThree) +
            endpoint * e1FiniteFullModulus)) <=
      e1FiniteThreeTargetMillion (e1FiniteCellTypeOf p7 p11) *
        e1FiniteFullModulus * 25 * 5_000_000

instance e1FiniteFourPaymentCrossInequalityDecidable
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    Decidable (e1FiniteFourPaymentCrossInequality
      p3 p7 p11 p13 p17 p19 p23) := by
  unfold e1FiniteFourPaymentCrossInequality
  infer_instance

instance e1FiniteThreePaymentCrossInequalityDecidable
    (p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    Decidable (e1FiniteThreePaymentCrossInequality
      p7 p11 p13 p17 p19 p23) := by
  unfold e1FiniteThreePaymentCrossInequality
  infer_instance

def e1FinitePatternForallDecidable
    (P : E1FiniteRootPattern -> Prop) [∀ p, Decidable (P p)] :
    Decidable (∀ p, P p) := by
  let statement :=
    P .allEqual ∧ P .firstSecond ∧ P .firstThird ∧
      P .secondThird ∧ P .allDistinct
  by_cases h : statement
  · exact isTrue (by
      intro p
      cases p <;> simp_all [statement])
  · exact isFalse (by
      intro hall
      apply h
      exact ⟨hall .allEqual, hall .firstSecond, hall .firstThird,
        hall .secondThird, hall .allDistinct⟩)

end Erdos848
