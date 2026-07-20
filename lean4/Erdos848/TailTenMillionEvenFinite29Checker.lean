import Erdos848.TailR263EvenOneFinite23Checker
import Erdos848.TailTenMillionBudget

namespace Erdos848

/-!
# Exact cutoff-29 arithmetic for the ten-million four-pivot rows

The eight coordinates are `3, 7, 11, 13, 17, 19, 23, 29`.  A leaf checker
receives the equality pattern of the three quotient roots at every
coordinate.  It verifies the all-three finite density and endpoint bound
whenever prime `3` is not common and at least one of the three root pairs
satisfies the close-pair gap bound.

The endpoint allowance is `941`, rather than the paper audit's `901`.
The extra forty counts are necessary because the four-pivot selection only
proves that each selected triple contains one of the two close pivot pairs;
it does not prove that all three pairs inside that triple are close.  Exact
enumeration leaves positive slack with this corrected allowance.

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
  match rank with
  | 1 =>
      46507700544786481 * cards 0 +
      8542230712307721 * cards 1 +
      3459250453744449 * cards 2 +
      2476741449130641 * cards 3 +
      1448336695166361 * cards 4 +
      1159471758734289 * cards 5 +
      791246323068201 * cards 6 +
      497704286448369 * cards 7
  | 2 =>
      949136745811969 * cards 0 * cards 1 +
      384361161527161 * cards 0 * cards 2 +
      275193494347849 * cards 0 * cards 3 +
      160926299462929 * cards 0 * cards 4 +
      128830195414921 * cards 0 * cards 5 +
      87916258118689 * cards 0 * cards 6 +
      55300476272041 * cards 0 * cards 7 +
      70596948035601 * cards 1 * cards 2 +
      50545743859809 * cards 1 * cards 3 +
      29557891738089 * cards 1 * cards 4 +
      23662688953761 * cards 1 * cards 5 +
      16147884144249 * cards 1 * cards 6 +
      10157230335681 * cards 1 * cards 7 +
      20468937596121 * cards 2 * cards 3 +
      11969724753441 * cards 2 * cards 4 +
      9582411229209 * cards 2 * cards 5 +
      6539225810481 * cards 2 * cards 6 +
      4113258565689 * cards 2 * cards 7 +
      8570039616369 * cards 3 * cards 4 +
      6860779637481 * cards 3 * cards 5 +
      4681930905729 * cards 3 * cards 6 +
      2944995777801 * cards 3 * cards 7 +
      4012013006001 * cards 4 * cards 5 +
      2737876550409 * cards 4 * cards 6 +
      1722160160721 * cards 4 * cards 7 +
      2191818069441 * cards 5 * cards 6 +
      1378682233929 * cards 5 * cards 7 +
      940839860961 * cards 6 * cards 7
  | 3 =>
      7844105337289 * cards 0 * cards 1 * cards 2 +
      5616193762201 * cards 0 * cards 1 * cards 3 +
      3284210193121 * cards 0 * cards 1 * cards 4 +
      2629187661529 * cards 0 * cards 1 * cards 5 +
      1794209349361 * cards 0 * cards 1 * cards 6 +
      1128581148409 * cards 0 * cards 1 * cards 7 +
      2274326399569 * cards 0 * cards 2 * cards 3 +
      1329969417049 * cards 0 * cards 2 * cards 4 +
      1064712358801 * cards 0 * cards 2 * cards 5 +
      726580645609 * cards 0 * cards 2 * cards 6 +
      457028729521 * cards 0 * cards 2 * cards 7 +
      952226624041 * cards 0 * cards 3 * cards 4 +
      762308848609 * cards 0 * cards 3 * cards 5 +
      520214545081 * cards 0 * cards 3 * cards 6 +
      327221753089 * cards 0 * cards 3 * cards 7 +
      445779222889 * cards 0 * cards 4 * cards 5 +
      304208505601 * cards 0 * cards 4 * cards 6 +
      191351128969 * cards 0 * cards 4 * cards 7 +
      243535341049 * cards 0 * cards 5 * cards 6 +
      153186914881 * cards 0 * cards 5 * cards 7 +
      104537762329 * cards 0 * cards 6 * cards 7 +
      417733420329 * cards 1 * cards 2 * cards 3 +
      244280097009 * cards 1 * cards 2 * cards 4 +
      195559412841 * cards 1 * cards 2 * cards 5 +
      133453587969 * cards 1 * cards 2 * cards 6 +
      83944052361 * cards 1 * cards 2 * cards 7 +
      174898767681 * cards 1 * cards 3 * cards 4 +
      140015910969 * cards 1 * cards 3 * cards 5 +
      95549610321 * cards 1 * cards 3 * cards 6 +
      60101954649 * cards 1 * cards 3 * cards 7 +
      81877816449 * cards 1 * cards 4 * cards 5 +
      55875031641 * cards 1 * cards 4 * cards 6 +
      35146125729 * cards 1 * cards 4 * cards 7 +
      44730981009 * cards 1 * cards 5 * cards 6 +
      28136372121 * cards 1 * cards 5 * cards 7 +
      19200813489 * cards 1 * cards 6 * cards 7 +
      70826773689 * cards 2 * cards 3 * cards 4 +
      56700658161 * cards 2 * cards 3 * cards 5 +
      38693643849 * cards 2 * cards 3 * cards 6 +
      24338808081 * cards 2 * cards 3 * cards 7 +
      33157132281 * cards 2 * cards 4 * cards 5 +
      22627078929 * cards 2 * cards 4 * cards 6 +
      14232728601 * cards 2 * cards 4 * cards 7 +
      18114198921 * cards 2 * cards 5 * cards 6 +
      11394068049 * cards 2 * cards 5 * cards 7 +
      7775536041 * cards 2 * cards 6 * cards 7 +
      23739721929 * cards 3 * cards 4 * cards 5 +
      16200452961 * cards 3 * cards 4 * cards 6 +
      10190296809 * cards 3 * cards 4 * cards 7 +
      12969337689 * cards 3 * cards 5 * cards 6 +
      8157883041 * cards 3 * cards 5 * cards 7 +
      5567099769 * cards 3 * cards 6 * cards 7 +
      7584145569 * cards 4 * cards 5 * cards 6 +
      4770526761 * cards 4 * cards 5 * cards 7 +
      3255501249 * cards 4 * cards 6 * cards 7 +
      2606204601 * cards 5 * cards 6 * cards 7
  | _ => 0

def tenMillionEvenFinite29RankEndpoint
    (cards : TenMillionEvenFinite29Index -> Nat)
    (rank : Nat) : Nat :=
  match rank with
  | 1 =>
      cards 0 + cards 1 + cards 2 + cards 3 +
      cards 4 + cards 5 + cards 6 + cards 7
  | 2 =>
      cards 0 * cards 1 + cards 0 * cards 2 +
      cards 0 * cards 3 + cards 0 * cards 4 +
      cards 0 * cards 5 + cards 0 * cards 6 +
      cards 0 * cards 7 + cards 1 * cards 2 +
      cards 1 * cards 3 + cards 1 * cards 4 +
      cards 1 * cards 5 + cards 1 * cards 6 +
      cards 1 * cards 7 + cards 2 * cards 3 +
      cards 2 * cards 4 + cards 2 * cards 5 +
      cards 2 * cards 6 + cards 2 * cards 7 +
      cards 3 * cards 4 + cards 3 * cards 5 +
      cards 3 * cards 6 + cards 3 * cards 7 +
      cards 4 * cards 5 + cards 4 * cards 6 +
      cards 4 * cards 7 + cards 5 * cards 6 +
      cards 5 * cards 7 + cards 6 * cards 7
  | 3 =>
      cards 0 * cards 1 * cards 2 +
      cards 0 * cards 1 * cards 3 +
      cards 0 * cards 1 * cards 4 +
      cards 0 * cards 1 * cards 5 +
      cards 0 * cards 1 * cards 6 +
      cards 0 * cards 1 * cards 7 +
      cards 0 * cards 2 * cards 3 +
      cards 0 * cards 2 * cards 4 +
      cards 0 * cards 2 * cards 5 +
      cards 0 * cards 2 * cards 6 +
      cards 0 * cards 2 * cards 7 +
      cards 0 * cards 3 * cards 4 +
      cards 0 * cards 3 * cards 5 +
      cards 0 * cards 3 * cards 6 +
      cards 0 * cards 3 * cards 7 +
      cards 0 * cards 4 * cards 5 +
      cards 0 * cards 4 * cards 6 +
      cards 0 * cards 4 * cards 7 +
      cards 0 * cards 5 * cards 6 +
      cards 0 * cards 5 * cards 7 +
      cards 0 * cards 6 * cards 7 +
      cards 1 * cards 2 * cards 3 +
      cards 1 * cards 2 * cards 4 +
      cards 1 * cards 2 * cards 5 +
      cards 1 * cards 2 * cards 6 +
      cards 1 * cards 2 * cards 7 +
      cards 1 * cards 3 * cards 4 +
      cards 1 * cards 3 * cards 5 +
      cards 1 * cards 3 * cards 6 +
      cards 1 * cards 3 * cards 7 +
      cards 1 * cards 4 * cards 5 +
      cards 1 * cards 4 * cards 6 +
      cards 1 * cards 4 * cards 7 +
      cards 1 * cards 5 * cards 6 +
      cards 1 * cards 5 * cards 7 +
      cards 1 * cards 6 * cards 7 +
      cards 2 * cards 3 * cards 4 +
      cards 2 * cards 3 * cards 5 +
      cards 2 * cards 3 * cards 6 +
      cards 2 * cards 3 * cards 7 +
      cards 2 * cards 4 * cards 5 +
      cards 2 * cards 4 * cards 6 +
      cards 2 * cards 4 * cards 7 +
      cards 2 * cards 5 * cards 6 +
      cards 2 * cards 5 * cards 7 +
      cards 2 * cards 6 * cards 7 +
      cards 3 * cards 4 * cards 5 +
      cards 3 * cards 4 * cards 6 +
      cards 3 * cards 4 * cards 7 +
      cards 3 * cards 5 * cards 6 +
      cards 3 * cards 5 * cards 7 +
      cards 3 * cards 6 * cards 7 +
      cards 4 * cards 5 * cards 6 +
      cards 4 * cards 5 * cards 7 +
      cards 4 * cards 6 * cards 7 +
      cards 5 * cards 6 * cards 7
  | _ => 0

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

def tenMillionEvenFinite29PairFactor
    (prime : Nat) (pattern : E1FiniteRootPattern) (pair : Fin 3) : Nat :=
  if e1FinitePatternPairCard pattern pair = 1 then prime else 1

def tenMillionEvenFinite29PairProduct
    (pair : Fin 3)
    (p3 p7 p11 p13 p17 p19 p23 p29 : E1FiniteRootPattern) : Nat :=
  tenMillionEvenFinite29PairFactor 3 p3 pair *
    tenMillionEvenFinite29PairFactor 7 p7 pair *
    tenMillionEvenFinite29PairFactor 11 p11 pair *
    tenMillionEvenFinite29PairFactor 13 p13 pair *
    tenMillionEvenFinite29PairFactor 17 p17 pair *
    tenMillionEvenFinite29PairFactor 19 p19 pair *
    tenMillionEvenFinite29PairFactor 23 p23 pair *
    tenMillionEvenFinite29PairFactor 29 p29 pair

def TenMillionEvenFinite29CrossInequality
    (p3 p7 p11 p13 p17 p19 p23 p29 : E1FiniteRootPattern) : Prop :=
  p3 != .allEqual ->
  (4 * tenMillionEvenFinite29PairProduct 0
        p3 p7 p11 p13 p17 p19 p23 p29 ^ 2 < 1_000_001 ∨
    4 * tenMillionEvenFinite29PairProduct 1
        p3 p7 p11 p13 p17 p19 p23 p29 ^ 2 < 1_000_001 ∨
    4 * tenMillionEvenFinite29PairProduct 2
        p3 p7 p11 p13 p17 p19 p23 p29 ^ 2 < 1_000_001) ->
  0 <= tenMillionEvenFinite29AllThreeNumerator
      p3 p7 p11 p13 p17 p19 p23 p29 ∧
    10_000_000 * 46_507_700_544_786_481 *
        tenMillionEvenFinite29AllThreeNumerator
          p3 p7 p11 p13 p17 p19 p23 p29 +
        25 * 46_507_700_544_786_481 *
          tenMillionEvenFinite29FullModulus *
          tenMillionEvenFinite29AllThreeEndpoint
            p3 p7 p11 p13 p17 p19 p23 p29 <=
      10_000_000 * tenMillionEvenFinite29FullModulus *
          1_517_595_533_571_443 +
        25 * tenMillionEvenFinite29FullModulus *
          46_507_700_544_786_481 * 941

instance tenMillionEvenFinite29CrossInequalityDecidable
    (p3 p7 p11 p13 p17 p19 p23 p29 : E1FiniteRootPattern) :
    Decidable (TenMillionEvenFinite29CrossInequality
      p3 p7 p11 p13 p17 p19 p23 p29) := by
  unfold TenMillionEvenFinite29CrossInequality
  infer_instance

def tenMillionEvenFinite29BlockPasses
    (p3 p7 p11 p13 p17 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p19 =>
    e1FinitePatternList.all fun p23 =>
      e1FinitePatternList.all fun p29 =>
        decide (TenMillionEvenFinite29CrossInequality
          p3 p7 p11 p13 p17 p19 p23 p29)

theorem tenMillionEvenFinite29BlockPasses_sound
    {p3 p7 p11 p13 p17 : E1FiniteRootPattern}
    (hpass :
      tenMillionEvenFinite29BlockPasses p3 p7 p11 p13 p17 = true)
    (p19 p23 p29 : E1FiniteRootPattern) :
    TenMillionEvenFinite29CrossInequality
      p3 p7 p11 p13 p17 p19 p23 p29 := by
  have h19 := (List.all_eq_true.mp hpass)
    p19 (mem_e1FinitePatternList p19)
  have h23 := (List.all_eq_true.mp h19)
    p23 (mem_e1FinitePatternList p23)
  have h29 := (List.all_eq_true.mp h23)
    p29 (mem_e1FinitePatternList p29)
  exact of_decide_eq_true h29

def tenMillionEvenFinite29WideBlockPasses
    (p3 p7 p11 p13 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p17 =>
    tenMillionEvenFinite29BlockPasses p3 p7 p11 p13 p17

theorem tenMillionEvenFinite29WideBlockPasses_sound
    {p3 p7 p11 p13 : E1FiniteRootPattern}
    (hpass :
      tenMillionEvenFinite29WideBlockPasses p3 p7 p11 p13 = true)
    (p17 p19 p23 p29 : E1FiniteRootPattern) :
    TenMillionEvenFinite29CrossInequality
      p3 p7 p11 p13 p17 p19 p23 p29 := by
  exact tenMillionEvenFinite29BlockPasses_sound
    ((List.all_eq_true.mp hpass)
      p17 (mem_e1FinitePatternList p17))
    p19 p23 p29

def tenMillionEvenFinite29SuperBlockPasses
    (p3 p7 p11 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p13 =>
    tenMillionEvenFinite29WideBlockPasses p3 p7 p11 p13

theorem tenMillionEvenFinite29SuperBlockPasses_sound
    {p3 p7 p11 : E1FiniteRootPattern}
    (hpass :
      tenMillionEvenFinite29SuperBlockPasses p3 p7 p11 = true)
    (p13 p17 p19 p23 p29 : E1FiniteRootPattern) :
    TenMillionEvenFinite29CrossInequality
      p3 p7 p11 p13 p17 p19 p23 p29 := by
  exact tenMillionEvenFinite29WideBlockPasses_sound
    ((List.all_eq_true.mp hpass)
      p13 (mem_e1FinitePatternList p13))
    p17 p19 p23 p29

#print axioms tenMillionEvenFinite29BlockPasses_sound
#print axioms tenMillionEvenFinite29WideBlockPasses_sound
#print axioms tenMillionEvenFinite29SuperBlockPasses_sound

end Erdos848
