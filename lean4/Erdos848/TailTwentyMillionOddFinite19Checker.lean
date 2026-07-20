import Erdos848.TailR263EvenOneFinite23Checker

namespace Erdos848

/-!
# Exact cutoff-19 arithmetic for the odd terminal rows

Prime two is handled exactly.  In the two-odd-class row its root pattern is
one of the three pair coincidences; in the one-odd-class row it is common.
All five coordinates after prime three are left unrestricted.  Thus the
certificate needs no close-gap support premise beyond the split according
to whether prime three is common.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

abbrev TwentyMillionOddFinite19Index := Fin 7

def twentyMillionOddFinite19Modulus :
    TwentyMillionOddFinite19Index -> Nat :=
  ![4, 9, 49, 121, 169, 289, 361]

def twentyMillionOddFinite19OddModulus :
    TwentyMillionOddFinite19Index -> Nat :=
  ![1, 9, 49, 121, 169, 289, 361]

def twentyMillionOddFinite19FullModulus : Nat := 3_763_359_443_844

def twentyMillionOddFinite19OddFullModulus : Nat := 940_839_860_961

def twentyMillionOddFinite19RankNumerator
    (modulus : TwentyMillionOddFinite19Index -> Nat)
    (fullModulus : Nat)
    (cards : TwentyMillionOddFinite19Index -> Nat)
    (rank : Nat) : Nat :=
  ∑ subset ∈
      (Finset.univ :
        Finset TwentyMillionOddFinite19Index).powersetCard rank,
    (fullModulus / ∏ index ∈ subset, modulus index) *
      ∏ index ∈ subset, cards index

def twentyMillionOddFinite19RankEndpoint
    (cards : TwentyMillionOddFinite19Index -> Nat)
    (rank : Nat) : Nat :=
  ∑ subset ∈
      (Finset.univ :
        Finset TwentyMillionOddFinite19Index).powersetCard rank,
    ∏ index ∈ subset, cards index

def twentyMillionOddFinite19NoEventNumerator
    (modulus : TwentyMillionOddFinite19Index -> Nat)
    (fullModulus : Nat)
    (cards : TwentyMillionOddFinite19Index -> Nat)
    (degree : Nat) : Int :=
  match degree with
  | 1 =>
      fullModulus -
        twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 1
  | 2 =>
      fullModulus -
        twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 1 +
        twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 2
  | 3 =>
      fullModulus -
        twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 1 +
        twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 2 -
        twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 3
  | _ => 0

def twentyMillionOddFinite19NoEventEndpoint
    (cards : TwentyMillionOddFinite19Index -> Nat)
    (degree : Nat) : Nat :=
  match degree with
  | 1 => twentyMillionOddFinite19RankEndpoint cards 1
  | 2 =>
      twentyMillionOddFinite19RankEndpoint cards 1 +
        twentyMillionOddFinite19RankEndpoint cards 2
  | 3 =>
      twentyMillionOddFinite19RankEndpoint cards 1 +
        twentyMillionOddFinite19RankEndpoint cards 2 +
        twentyMillionOddFinite19RankEndpoint cards 3
  | _ => 0

def twentyMillionOddFinite19SingletonCards :
    TwentyMillionOddFinite19Index -> Nat :=
  fun _ => 1

def twentyMillionOddFinite19FullPairCards
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern)
    (pair : Fin 3) : TwentyMillionOddFinite19Index -> Nat :=
  ![e1FinitePatternPairCard p2 pair,
    e1FinitePatternPairCard p3 pair,
    e1FinitePatternPairCard p7 pair,
    e1FinitePatternPairCard p11 pair,
    e1FinitePatternPairCard p13 pair,
    e1FinitePatternPairCard p17 pair,
    e1FinitePatternPairCard p19 pair]

def twentyMillionOddFinite19FullTripleCards
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    TwentyMillionOddFinite19Index -> Nat :=
  ![e1FinitePatternTripleCard p2,
    e1FinitePatternTripleCard p3,
    e1FinitePatternTripleCard p7,
    e1FinitePatternTripleCard p11,
    e1FinitePatternTripleCard p13,
    e1FinitePatternTripleCard p17,
    e1FinitePatternTripleCard p19]

def twentyMillionOddFinite19OddPairCards
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern)
    (pair : Fin 3) : TwentyMillionOddFinite19Index -> Nat :=
  ![0, e1FinitePatternPairCard p3 pair,
    e1FinitePatternPairCard p7 pair,
    e1FinitePatternPairCard p11 pair,
    e1FinitePatternPairCard p13 pair,
    e1FinitePatternPairCard p17 pair,
    e1FinitePatternPairCard p19 pair]

def twentyMillionOddFinite19OddTripleCards
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    TwentyMillionOddFinite19Index -> Nat :=
  ![0, e1FinitePatternTripleCard p3,
    e1FinitePatternTripleCard p7,
    e1FinitePatternTripleCard p11,
    e1FinitePatternTripleCard p13,
    e1FinitePatternTripleCard p17,
    e1FinitePatternTripleCard p19]

def twentyMillionOddFinite19AllThreeNumerator
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Int :=
  twentyMillionOddFinite19FullModulus -
      3 * twentyMillionOddFinite19NoEventNumerator
        twentyMillionOddFinite19Modulus
        twentyMillionOddFinite19FullModulus
        twentyMillionOddFinite19SingletonCards 3 +
      (∑ pair : Fin 3,
        twentyMillionOddFinite19NoEventNumerator
          twentyMillionOddFinite19Modulus
          twentyMillionOddFinite19FullModulus
          (twentyMillionOddFinite19FullPairCards
            p2 p3 p7 p11 p13 p17 p19 pair) 2) -
      twentyMillionOddFinite19NoEventNumerator
        twentyMillionOddFinite19Modulus
        twentyMillionOddFinite19FullModulus
        (twentyMillionOddFinite19FullTripleCards
          p2 p3 p7 p11 p13 p17 p19) 3

def twentyMillionOddFinite19AllThreeEndpoint
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Nat :=
  3 * twentyMillionOddFinite19NoEventEndpoint
      twentyMillionOddFinite19SingletonCards 3 +
    (∑ pair : Fin 3,
      twentyMillionOddFinite19NoEventEndpoint
        (twentyMillionOddFinite19FullPairCards
          p2 p3 p7 p11 p13 p17 p19 pair) 2) +
    twentyMillionOddFinite19NoEventEndpoint
      (twentyMillionOddFinite19FullTripleCards
        p2 p3 p7 p11 p13 p17 p19) 3

def twentyMillionOddFinite19OddTwoOfThreeNumerator
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Int :=
  twentyMillionOddFinite19OddFullModulus -
      (∑ pair : Fin 3,
        twentyMillionOddFinite19NoEventNumerator
          twentyMillionOddFinite19OddModulus
          twentyMillionOddFinite19OddFullModulus
          (twentyMillionOddFinite19OddPairCards
            p3 p7 p11 p13 p17 p19 pair) 1) +
      2 * twentyMillionOddFinite19NoEventNumerator
        twentyMillionOddFinite19OddModulus
        twentyMillionOddFinite19OddFullModulus
        (twentyMillionOddFinite19OddTripleCards
          p3 p7 p11 p13 p17 p19) 2

def twentyMillionOddFinite19OddTwoOfThreeEndpoint
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Nat :=
  (∑ pair : Fin 3,
    twentyMillionOddFinite19NoEventEndpoint
      (twentyMillionOddFinite19OddPairCards
        p3 p7 p11 p13 p17 p19 pair) 1) +
    2 * twentyMillionOddFinite19NoEventEndpoint
      (twentyMillionOddFinite19OddTripleCards
        p3 p7 p11 p13 p17 p19) 2

def twentyMillionOddFinite19ClosePair :
    E1FiniteRootPattern -> Fin 3
  | .firstSecond => 0
  | .firstThird => 1
  | .secondThird => 2
  | _ => 0

def twentyMillionOddFinite19PairUnionNumerator
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Int :=
  twentyMillionOddFinite19OddFullModulus -
    twentyMillionOddFinite19NoEventNumerator
      twentyMillionOddFinite19OddModulus
      twentyMillionOddFinite19OddFullModulus
      (twentyMillionOddFinite19OddPairCards
        p3 p7 p11 p13 p17 p19
        (twentyMillionOddFinite19ClosePair p2)) 3

def twentyMillionOddFinite19PairUnionEndpoint
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Nat :=
  twentyMillionOddFinite19NoEventEndpoint
    (twentyMillionOddFinite19OddPairCards
      p3 p7 p11 p13 p17 p19
      (twentyMillionOddFinite19ClosePair p2)) 3

def twentyMillionOddTwoFinite19Numerator
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Int :=
  twentyMillionOddFinite19AllThreeNumerator
      p2 p3 p7 p11 p13 p17 p19 +
    twentyMillionOddFinite19OddFullModulus +
    twentyMillionOddFinite19PairUnionNumerator
      p2 p3 p7 p11 p13 p17 p19 +
    2 * twentyMillionOddFinite19OddTwoOfThreeNumerator
      p3 p7 p11 p13 p17 p19

def twentyMillionOddTwoFinite19Endpoint
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Nat :=
  twentyMillionOddFinite19AllThreeEndpoint
      p2 p3 p7 p11 p13 p17 p19 +
    5 +
    twentyMillionOddFinite19PairUnionEndpoint
      p2 p3 p7 p11 p13 p17 p19 +
    2 * twentyMillionOddFinite19OddTwoOfThreeEndpoint
      p3 p7 p11 p13 p17 p19

def twentyMillionOddOneFinite19Numerator
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Int :=
  twentyMillionOddFinite19AllThreeNumerator
      .allEqual p3 p7 p11 p13 p17 p19 +
    twentyMillionOddFinite19OddFullModulus +
    3 * twentyMillionOddFinite19OddTwoOfThreeNumerator
      p3 p7 p11 p13 p17 p19

def twentyMillionOddOneFinite19Endpoint
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Nat :=
  twentyMillionOddFinite19AllThreeEndpoint
      .allEqual p3 p7 p11 p13 p17 p19 +
    5 +
    3 * twentyMillionOddFinite19OddTwoOfThreeEndpoint
      p3 p7 p11 p13 p17 p19

def twentyMillionOddTwoFinite19CrossInequality
    (target : Nat)
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Prop :=
  let numerator :=
    twentyMillionOddTwoFinite19Numerator
      p2 p3 p7 p11 p13 p17 p19
  let endpoint :=
    twentyMillionOddTwoFinite19Endpoint
      p2 p3 p7 p11 p13 p17 p19
  0 <= numerator ∧
    1_000_000 *
        (numerator * 20_000_000 +
          25 * (numerator +
            endpoint * twentyMillionOddFinite19FullModulus)) <=
      target * twentyMillionOddFinite19FullModulus *
        25 * 20_000_000

def twentyMillionOddOneFinite19CrossInequality
    (target : Nat)
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Prop :=
  let numerator :=
    twentyMillionOddOneFinite19Numerator
      p3 p7 p11 p13 p17 p19
  let endpoint :=
    twentyMillionOddOneFinite19Endpoint
      p3 p7 p11 p13 p17 p19
  0 <= numerator ∧
    1_000_000 *
        (numerator * 20_000_000 +
          25 * (numerator +
            endpoint * twentyMillionOddFinite19FullModulus)) <=
      target * twentyMillionOddFinite19FullModulus *
        25 * 20_000_000

instance twentyMillionOddTwoFinite19CrossInequalityDecidable
    (target : Nat)
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    Decidable (twentyMillionOddTwoFinite19CrossInequality
      target p2 p3 p7 p11 p13 p17 p19) := by
  unfold twentyMillionOddTwoFinite19CrossInequality
  infer_instance

instance twentyMillionOddOneFinite19CrossInequalityDecidable
    (target : Nat)
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    Decidable (twentyMillionOddOneFinite19CrossInequality
      target p3 p7 p11 p13 p17 p19) := by
  unfold twentyMillionOddOneFinite19CrossInequality
  infer_instance

def twentyMillionOddTwoFinite19BlockPasses
    (target : Nat)
    (p2 p3 p7 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p11 =>
    e1FinitePatternList.all fun p13 =>
      e1FinitePatternList.all fun p17 =>
        e1FinitePatternList.all fun p19 =>
          decide (twentyMillionOddTwoFinite19CrossInequality
            target p2 p3 p7 p11 p13 p17 p19)

def twentyMillionOddOneFinite19BlockPasses
    (target : Nat)
    (p3 p7 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p11 =>
    e1FinitePatternList.all fun p13 =>
      e1FinitePatternList.all fun p17 =>
        e1FinitePatternList.all fun p19 =>
          decide (twentyMillionOddOneFinite19CrossInequality
            target p3 p7 p11 p13 p17 p19)

def twentyMillionOddTwoFinite19SubBlockPasses
    (target : Nat)
    (p2 p3 p7 p11 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p13 =>
    e1FinitePatternList.all fun p17 =>
      e1FinitePatternList.all fun p19 =>
        decide (twentyMillionOddTwoFinite19CrossInequality
          target p2 p3 p7 p11 p13 p17 p19)

def twentyMillionOddOneFinite19SubBlockPasses
    (target : Nat)
    (p3 p7 p11 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p13 =>
    e1FinitePatternList.all fun p17 =>
      e1FinitePatternList.all fun p19 =>
        decide (twentyMillionOddOneFinite19CrossInequality
          target p3 p7 p11 p13 p17 p19)

theorem twentyMillionOddTwoFinite19BlockPasses_sound
    {target : Nat} {p2 p3 p7 : E1FiniteRootPattern}
    (hpass :
      twentyMillionOddTwoFinite19BlockPasses target p2 p3 p7 = true)
    (p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddTwoFinite19CrossInequality
      target p2 p3 p7 p11 p13 p17 p19 := by
  have h11 := (List.all_eq_true.mp hpass)
    p11 (mem_e1FinitePatternList p11)
  have h13 := (List.all_eq_true.mp h11)
    p13 (mem_e1FinitePatternList p13)
  have h17 := (List.all_eq_true.mp h13)
    p17 (mem_e1FinitePatternList p17)
  have h19 := (List.all_eq_true.mp h17)
    p19 (mem_e1FinitePatternList p19)
  exact of_decide_eq_true h19

theorem twentyMillionOddOneFinite19BlockPasses_sound
    {target : Nat} {p3 p7 : E1FiniteRootPattern}
    (hpass :
      twentyMillionOddOneFinite19BlockPasses target p3 p7 = true)
    (p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddOneFinite19CrossInequality
      target p3 p7 p11 p13 p17 p19 := by
  have h11 := (List.all_eq_true.mp hpass)
    p11 (mem_e1FinitePatternList p11)
  have h13 := (List.all_eq_true.mp h11)
    p13 (mem_e1FinitePatternList p13)
  have h17 := (List.all_eq_true.mp h13)
    p17 (mem_e1FinitePatternList p17)
  have h19 := (List.all_eq_true.mp h17)
    p19 (mem_e1FinitePatternList p19)
  exact of_decide_eq_true h19

theorem twentyMillionOddTwoFinite19SubBlockPasses_sound
    {target : Nat} {p2 p3 p7 p11 : E1FiniteRootPattern}
    (hpass :
      twentyMillionOddTwoFinite19SubBlockPasses
        target p2 p3 p7 p11 = true)
    (p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddTwoFinite19CrossInequality
      target p2 p3 p7 p11 p13 p17 p19 := by
  have h13 := (List.all_eq_true.mp hpass)
    p13 (mem_e1FinitePatternList p13)
  have h17 := (List.all_eq_true.mp h13)
    p17 (mem_e1FinitePatternList p17)
  have h19 := (List.all_eq_true.mp h17)
    p19 (mem_e1FinitePatternList p19)
  exact of_decide_eq_true h19

theorem twentyMillionOddOneFinite19SubBlockPasses_sound
    {target : Nat} {p3 p7 p11 : E1FiniteRootPattern}
    (hpass :
      twentyMillionOddOneFinite19SubBlockPasses
        target p3 p7 p11 = true)
    (p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddOneFinite19CrossInequality
      target p3 p7 p11 p13 p17 p19 := by
  have h13 := (List.all_eq_true.mp hpass)
    p13 (mem_e1FinitePatternList p13)
  have h17 := (List.all_eq_true.mp h13)
    p17 (mem_e1FinitePatternList p17)
  have h19 := (List.all_eq_true.mp h17)
    p19 (mem_e1FinitePatternList p19)
  exact of_decide_eq_true h19

#print axioms twentyMillionOddTwoFinite19BlockPasses_sound
#print axioms twentyMillionOddOneFinite19BlockPasses_sound
#print axioms twentyMillionOddTwoFinite19SubBlockPasses_sound
#print axioms twentyMillionOddOneFinite19SubBlockPasses_sound

end Erdos848
