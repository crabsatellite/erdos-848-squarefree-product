import Erdos848.TailR263EvenThreeFinite19

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive ScratchE3RootPattern
  | allEqual
  | firstSecond
  | firstThird
  | secondThird
  | allDistinct
  deriving DecidableEq, Fintype

def scratchE3PatternPairCard
    (pattern : ScratchE3RootPattern) (pair : Fin 3) : Nat :=
  match pattern with
  | .allEqual => 1
  | .firstSecond => ![1, 2, 2] pair
  | .firstThird => ![2, 1, 2] pair
  | .secondThird => ![2, 2, 1] pair
  | .allDistinct => 2

def scratchE3PatternTripleCard
    (pattern : ScratchE3RootPattern) : Nat :=
  match pattern with
  | .allEqual => 1
  | .firstSecond | .firstThird | .secondThird => 2
  | .allDistinct => 3

def scratchE3PairCards
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) (pair : Fin 3) :
    E3FinitePrimeIndex -> Nat :=
  ![1,
    scratchE3PatternPairCard p1 pair,
    scratchE3PatternPairCard p2 pair,
    scratchE3PatternPairCard p3 pair,
    scratchE3PatternPairCard p4 pair,
    scratchE3PatternPairCard p5 pair]

def scratchE3TripleCards
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) :
    E3FinitePrimeIndex -> Nat :=
  ![1,
    scratchE3PatternTripleCard p1,
    scratchE3PatternTripleCard p2,
    scratchE3PatternTripleCard p3,
    scratchE3PatternTripleCard p4,
    scratchE3PatternTripleCard p5]

def scratchE3FullModulus : Nat :=
  940839860961

def scratchE3RankNumerator
    (cards : E3FinitePrimeIndex -> Nat) (rank : Nat) : Int :=
  match rank with
  | 1 =>
      104537762329 * cards 0 + 19200813489 * cards 1 +
      7775536041 * cards 2 + 5567099769 * cards 3 +
      3255501249 * cards 4 + 2606204601 * cards 5
  | 2 =>
      2133423721 * cards 0 * cards 1 +
      863948449 * cards 0 * cards 2 +
      618566641 * cards 0 * cards 3 +
      361722361 * cards 0 * cards 4 +
      289578289 * cards 0 * cards 5 +
      158684409 * cards 1 * cards 2 +
      113614281 * cards 1 * cards 3 +
      66438801 * cards 1 * cards 4 +
      53187849 * cards 1 * cards 5 +
      46009089 * cards 2 * cards 3 +
      26904969 * cards 2 * cards 4 +
      21538881 * cards 2 * cards 5 +
      19263321 * cards 3 * cards 4 +
      15421329 * cards 3 * cards 5 +
      9018009 * cards 4 * cards 5
  | 3 =>
      17631601 * cards 0 * cards 1 * cards 2 +
      12623809 * cards 0 * cards 1 * cards 3 +
      7382089 * cards 0 * cards 1 * cards 4 +
      5909761 * cards 0 * cards 1 * cards 5 +
      5112121 * cards 0 * cards 2 * cards 3 +
      2989441 * cards 0 * cards 2 * cards 4 +
      2393209 * cards 0 * cards 2 * cards 5 +
      2140369 * cards 0 * cards 3 * cards 4 +
      1713481 * cards 0 * cards 3 * cards 5 +
      1002001 * cards 0 * cards 4 * cards 5 +
      938961 * cards 1 * cards 2 * cards 3 +
      549081 * cards 1 * cards 2 * cards 4 +
      439569 * cards 1 * cards 2 * cards 5 +
      393129 * cards 1 * cards 3 * cards 4 +
      314721 * cards 1 * cards 3 * cards 5 +
      184041 * cards 1 * cards 4 * cards 5 +
      159201 * cards 2 * cards 3 * cards 4 +
      127449 * cards 2 * cards 3 * cards 5 +
      74529 * cards 2 * cards 4 * cards 5 +
      53361 * cards 3 * cards 4 * cards 5
  | 4 =>
      104329 * cards 0 * cards 1 * cards 2 * cards 3 +
      61009 * cards 0 * cards 1 * cards 2 * cards 4 +
      48841 * cards 0 * cards 1 * cards 2 * cards 5 +
      43681 * cards 0 * cards 1 * cards 3 * cards 4 +
      34969 * cards 0 * cards 1 * cards 3 * cards 5 +
      20449 * cards 0 * cards 1 * cards 4 * cards 5 +
      17689 * cards 0 * cards 2 * cards 3 * cards 4 +
      14161 * cards 0 * cards 2 * cards 3 * cards 5 +
      8281 * cards 0 * cards 2 * cards 4 * cards 5 +
      5929 * cards 0 * cards 3 * cards 4 * cards 5 +
      3249 * cards 1 * cards 2 * cards 3 * cards 4 +
      2601 * cards 1 * cards 2 * cards 3 * cards 5 +
      1521 * cards 1 * cards 2 * cards 4 * cards 5 +
      1089 * cards 1 * cards 3 * cards 4 * cards 5 +
      441 * cards 2 * cards 3 * cards 4 * cards 5
  | _ => 0

def scratchE3RankEndpoint
    (cards : E3FinitePrimeIndex -> Nat) (rank : Nat) : Nat :=
  match rank with
  | 1 => cards 0 + cards 1 + cards 2 + cards 3 + cards 4 + cards 5
  | 2 =>
      cards 0 * cards 1 + cards 0 * cards 2 + cards 0 * cards 3 +
      cards 0 * cards 4 + cards 0 * cards 5 + cards 1 * cards 2 +
      cards 1 * cards 3 + cards 1 * cards 4 + cards 1 * cards 5 +
      cards 2 * cards 3 + cards 2 * cards 4 + cards 2 * cards 5 +
      cards 3 * cards 4 + cards 3 * cards 5 + cards 4 * cards 5
  | 3 =>
      cards 0 * cards 1 * cards 2 + cards 0 * cards 1 * cards 3 +
      cards 0 * cards 1 * cards 4 + cards 0 * cards 1 * cards 5 +
      cards 0 * cards 2 * cards 3 + cards 0 * cards 2 * cards 4 +
      cards 0 * cards 2 * cards 5 + cards 0 * cards 3 * cards 4 +
      cards 0 * cards 3 * cards 5 + cards 0 * cards 4 * cards 5 +
      cards 1 * cards 2 * cards 3 + cards 1 * cards 2 * cards 4 +
      cards 1 * cards 2 * cards 5 + cards 1 * cards 3 * cards 4 +
      cards 1 * cards 3 * cards 5 + cards 1 * cards 4 * cards 5 +
      cards 2 * cards 3 * cards 4 + cards 2 * cards 3 * cards 5 +
      cards 2 * cards 4 * cards 5 + cards 3 * cards 4 * cards 5
  | 4 =>
      cards 0 * cards 1 * cards 2 * cards 3 +
      cards 0 * cards 1 * cards 2 * cards 4 +
      cards 0 * cards 1 * cards 2 * cards 5 +
      cards 0 * cards 1 * cards 3 * cards 4 +
      cards 0 * cards 1 * cards 3 * cards 5 +
      cards 0 * cards 1 * cards 4 * cards 5 +
      cards 0 * cards 2 * cards 3 * cards 4 +
      cards 0 * cards 2 * cards 3 * cards 5 +
      cards 0 * cards 2 * cards 4 * cards 5 +
      cards 0 * cards 3 * cards 4 * cards 5 +
      cards 1 * cards 2 * cards 3 * cards 4 +
      cards 1 * cards 2 * cards 3 * cards 5 +
      cards 1 * cards 2 * cards 4 * cards 5 +
      cards 1 * cards 3 * cards 4 * cards 5 +
      cards 2 * cards 3 * cards 4 * cards 5
  | _ => 0

def scratchE3PairLowerNumerator
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) (pair : Fin 3) : Int :=
  let cards := scratchE3PairCards p1 p2 p3 p4 p5 pair
  scratchE3FullModulus - scratchE3RankNumerator cards 1 +
    scratchE3RankNumerator cards 2 - scratchE3RankNumerator cards 3

def scratchE3PairEndpoint
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) (pair : Fin 3) : Nat :=
  let cards := scratchE3PairCards p1 p2 p3 p4 p5 pair
  scratchE3RankEndpoint cards 1 + scratchE3RankEndpoint cards 2 +
    scratchE3RankEndpoint cards 3

def scratchE3TripleUpperNumerator
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) : Int :=
  let cards := scratchE3TripleCards p1 p2 p3 p4 p5
  scratchE3FullModulus - scratchE3RankNumerator cards 1 +
    scratchE3RankNumerator cards 2 - scratchE3RankNumerator cards 3 +
    scratchE3RankNumerator cards 4

def scratchE3TripleEndpoint
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) : Nat :=
  let cards := scratchE3TripleCards p1 p2 p3 p4 p5
  scratchE3RankEndpoint cards 1 + scratchE3RankEndpoint cards 2 +
    scratchE3RankEndpoint cards 3 + scratchE3RankEndpoint cards 4

def scratchE3ThresholdNumerator
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) : Int :=
  scratchE3FullModulus -
      (∑ pair : Fin 3, scratchE3PairLowerNumerator p1 p2 p3 p4 p5 pair) +
    2 * scratchE3TripleUpperNumerator p1 p2 p3 p4 p5

def scratchE3ThresholdEndpoint
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) : Nat :=
  (∑ pair : Fin 3, scratchE3PairEndpoint p1 p2 p3 p4 p5 pair) +
    2 * scratchE3TripleEndpoint p1 p2 p3 p4 p5

def scratchE3PaymentCrossInequality
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) : Prop :=
  let densityNumerator := scratchE3ThresholdNumerator p1 p2 p3 p4 p5
  let endpoint := scratchE3ThresholdEndpoint p1 p2 p3 p4 p5
  100000 *
      (2 * densityNumerator * 5_000_000 +
        2 * 25 * (densityNumerator + endpoint * scratchE3FullModulus)) <=
    1221 * scratchE3FullModulus * 25 * 5_000_000

instance scratchE3PaymentCrossInequalityDecidable
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) :
    Decidable (scratchE3PaymentCrossInequality p1 p2 p3 p4 p5) := by
  unfold scratchE3PaymentCrossInequality
  infer_instance

def scratchE3ForallDecidable
    (P : ScratchE3RootPattern -> Prop) [∀ p, Decidable (P p)] :
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
