import Erdos848.TailR263EvenOneFinite23Checker
import Erdos848.TailTenMillionBudget

namespace Erdos848

/-!
# Exact cutoff-29 arithmetic for the ten-million four-pivot rows

The eight coordinates are `3, 7, 11, 13, 17, 19, 23, 29`.  A leaf checker
receives the equality pattern of the three quotient roots at every
coordinate.  It verifies the all-three finite density and endpoint bound
whenever prime `3` is not common and the product of the remaining common
primes satisfies the close-pair gap bound.

The producer may enumerate the pattern tuples, but every inequality below is
decided by kernel reduction.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

abbrev TenMillionEvenFinite29Index := Fin 8

def tenMillionEvenFinite29Prime :
    TenMillionEvenFinite29Index -> Nat :=
  ![3, 7, 11, 13, 17, 19, 23, 29]

def tenMillionEvenFinite29Modulus :
    TenMillionEvenFinite29Index -> Nat :=
  ![9, 49, 121, 169, 289, 361, 529, 841]

def tenMillionEvenFinite29FullModulus : Nat :=
  418_569_304_903_078_329

def tenMillionEvenFinite29RankNumerator
    (cards : TenMillionEvenFinite29Index -> Nat)
    (rank : Nat) : Nat :=
  ∑ subset ∈
      (Finset.univ :
        Finset TenMillionEvenFinite29Index).powersetCard rank,
    (tenMillionEvenFinite29FullModulus /
      ∏ index ∈ subset, tenMillionEvenFinite29Modulus index) *
        ∏ index ∈ subset, cards index

def tenMillionEvenFinite29RankEndpoint
    (cards : TenMillionEvenFinite29Index -> Nat)
    (rank : Nat) : Nat :=
  ∑ subset ∈
      (Finset.univ :
        Finset TenMillionEvenFinite29Index).powersetCard rank,
    ∏ index ∈ subset, cards index

def tenMillionEvenFinite29NoEventNumerator
    (cards : TenMillionEvenFinite29Index -> Nat)
    (degree : Nat) : Int :=
  match degree with
  | 1 =>
      tenMillionEvenFinite29FullModulus -
        tenMillionEvenFinite29RankNumerator cards 1
  | 2 =>
      tenMillionEvenFinite29FullModulus -
        tenMillionEvenFinite29RankNumerator cards 1 +
        tenMillionEvenFinite29RankNumerator cards 2
  | 3 =>
      tenMillionEvenFinite29FullModulus -
        tenMillionEvenFinite29RankNumerator cards 1 +
        tenMillionEvenFinite29RankNumerator cards 2 -
        tenMillionEvenFinite29RankNumerator cards 3
  | _ => 0

def tenMillionEvenFinite29NoEventEndpoint
    (cards : TenMillionEvenFinite29Index -> Nat)
    (degree : Nat) : Nat :=
  match degree with
  | 1 => tenMillionEvenFinite29RankEndpoint cards 1
  | 2 =>
      tenMillionEvenFinite29RankEndpoint cards 1 +
        tenMillionEvenFinite29RankEndpoint cards 2
  | 3 =>
      tenMillionEvenFinite29RankEndpoint cards 1 +
        tenMillionEvenFinite29RankEndpoint cards 2 +
        tenMillionEvenFinite29RankEndpoint cards 3
  | _ => 0

def tenMillionEvenFinite29SingletonCards :
    TenMillionEvenFinite29Index -> Nat :=
  fun _ => 1

def tenMillionEvenFinite29PairCards
    (p3 p7 p11 p13 p17 p19 p23 p29 : E1FiniteRootPattern)
    (pair : Fin 3) : TenMillionEvenFinite29Index -> Nat :=
  ![e1FinitePatternPairCard p3 pair,
    e1FinitePatternPairCard p7 pair,
    e1FinitePatternPairCard p11 pair,
    e1FinitePatternPairCard p13 pair,
    e1FinitePatternPairCard p17 pair,
    e1FinitePatternPairCard p19 pair,
    e1FinitePatternPairCard p23 pair,
    e1FinitePatternPairCard p29 pair]

def tenMillionEvenFinite29TripleCards
    (p3 p7 p11 p13 p17 p19 p23 p29 : E1FiniteRootPattern) :
    TenMillionEvenFinite29Index -> Nat :=
  ![e1FinitePatternTripleCard p3,
    e1FinitePatternTripleCard p7,
    e1FinitePatternTripleCard p11,
    e1FinitePatternTripleCard p13,
    e1FinitePatternTripleCard p17,
    e1FinitePatternTripleCard p19,
    e1FinitePatternTripleCard p23,
    e1FinitePatternTripleCard p29]

def tenMillionEvenFinite29AllThreeNumerator
    (p3 p7 p11 p13 p17 p19 p23 p29 : E1FiniteRootPattern) : Int :=
  tenMillionEvenFinite29FullModulus -
      3 * tenMillionEvenFinite29NoEventNumerator
        tenMillionEvenFinite29SingletonCards 3 +
      (∑ pair : Fin 3,
        tenMillionEvenFinite29NoEventNumerator
          (tenMillionEvenFinite29PairCards
            p3 p7 p11 p13 p17 p19 p23 p29 pair) 2) -
      tenMillionEvenFinite29NoEventNumerator
        (tenMillionEvenFinite29TripleCards
          p3 p7 p11 p13 p17 p19 p23 p29) 3

def tenMillionEvenFinite29AllThreeEndpoint
    (p3 p7 p11 p13 p17 p19 p23 p29 : E1FiniteRootPattern) : Nat :=
  3 * tenMillionEvenFinite29NoEventEndpoint
        tenMillionEvenFinite29SingletonCards 3 +
    (∑ pair : Fin 3,
      tenMillionEvenFinite29NoEventEndpoint
        (tenMillionEvenFinite29PairCards
          p3 p7 p11 p13 p17 p19 p23 p29 pair) 2) +
    tenMillionEvenFinite29NoEventEndpoint
      (tenMillionEvenFinite29TripleCards
        p3 p7 p11 p13 p17 p19 p23 p29) 3

def tenMillionEvenFinite29CommonFactor
    (prime : Nat) (pattern : E1FiniteRootPattern) : Nat :=
  if pattern = .allEqual then prime else 1

def tenMillionEvenFinite29CommonProduct
    (p7 p11 p13 p17 p19 p23 p29 : E1FiniteRootPattern) : Nat :=
  tenMillionEvenFinite29CommonFactor 7 p7 *
    tenMillionEvenFinite29CommonFactor 11 p11 *
    tenMillionEvenFinite29CommonFactor 13 p13 *
    tenMillionEvenFinite29CommonFactor 17 p17 *
    tenMillionEvenFinite29CommonFactor 19 p19 *
    tenMillionEvenFinite29CommonFactor 23 p23 *
    tenMillionEvenFinite29CommonFactor 29 p29

def TenMillionEvenFinite29CrossInequality
    (p3 p7 p11 p13 p17 p19 p23 p29 : E1FiniteRootPattern) : Prop :=
  p3 != .allEqual ->
  4 * tenMillionEvenFinite29CommonProduct
        p7 p11 p13 p17 p19 p23 p29 ^ 2 < 1_000_001 ->
  0 <= tenMillionEvenFinite29AllThreeNumerator
      p3 p7 p11 p13 p17 p19 p23 p29 ∧
    (tenMillionEvenFinite29AllThreeNumerator
        p3 p7 p11 p13 p17 p19 p23 p29 : Rat) /
        tenMillionEvenFinite29FullModulus <=
      tenMillionEvenFourDensity ∧
    tenMillionEvenFinite29AllThreeEndpoint
      p3 p7 p11 p13 p17 p19 p23 p29 <=
        tenMillionEvenFourEndpoint

instance tenMillionEvenFinite29CrossInequalityDecidable
    (p3 p7 p11 p13 p17 p19 p23 p29 : E1FiniteRootPattern) :
    Decidable (TenMillionEvenFinite29CrossInequality
      p3 p7 p11 p13 p17 p19 p23 p29) := by
  unfold TenMillionEvenFinite29CrossInequality
  infer_instance

def tenMillionEvenFinite29BlockPasses
    (p3 p7 p11 p13 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p17 =>
    e1FinitePatternList.all fun p19 =>
      e1FinitePatternList.all fun p23 =>
        e1FinitePatternList.all fun p29 =>
          decide (TenMillionEvenFinite29CrossInequality
            p3 p7 p11 p13 p17 p19 p23 p29)

theorem tenMillionEvenFinite29BlockPasses_sound
    {p3 p7 p11 p13 : E1FiniteRootPattern}
    (hpass : tenMillionEvenFinite29BlockPasses p3 p7 p11 p13 = true)
    (p17 p19 p23 p29 : E1FiniteRootPattern) :
    TenMillionEvenFinite29CrossInequality
      p3 p7 p11 p13 p17 p19 p23 p29 := by
  have h17 := (List.all_eq_true.mp hpass)
    p17 (mem_e1FinitePatternList p17)
  have h19 := (List.all_eq_true.mp h17)
    p19 (mem_e1FinitePatternList p19)
  have h23 := (List.all_eq_true.mp h19)
    p23 (mem_e1FinitePatternList p23)
  have h29 := (List.all_eq_true.mp h23)
    p29 (mem_e1FinitePatternList p29)
  exact of_decide_eq_true h29

#print axioms tenMillionEvenFinite29BlockPasses_sound

end Erdos848
