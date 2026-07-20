import Erdos848.TailTwentyMillionOddFinite19Semantics

namespace Erdos848

/-!
# Prefix bounds for the cutoff-19 odd root families

The all-three event is bounded on the full CRT system.  Later sections use
the same rank bounds inside a fixed residue class modulo four.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable


noncomputable def twentyMillionOddFinite19NoEventDensityRat
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (fullModulus : Nat)
    (cards : TwentyMillionOddFinite19Index → Nat)
    (degree : Nat) : Rat :=
  (twentyMillionOddFinite19NoEventNumerator
      modulus fullModulus cards degree : Rat) / fullModulus

def twentyMillionOddFinite19NoEventEndpointRat
    (cards : TwentyMillionOddFinite19Index → Nat)
    (degree : Nat) : Rat :=
  twentyMillionOddFinite19NoEventEndpoint cards degree

noncomputable def twentyMillionOddFinite19AllThreeDensityRat
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Rat :=
  (twentyMillionOddFinite19AllThreeNumerator
      p2 p3 p7 p11 p13 p17 p19 : Rat) /
    twentyMillionOddFinite19FullModulus

def twentyMillionOddFinite19AllThreeEndpointRat
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Rat :=
  twentyMillionOddFinite19AllThreeEndpoint
    p2 p3 p7 p11 p13 p17 p19

noncomputable def twentyMillionOddFinite19OddTwoOfThreeDensityRat
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Rat :=
  (twentyMillionOddFinite19OddTwoOfThreeNumerator
      p3 p7 p11 p13 p17 p19 : Rat) /
    twentyMillionOddFinite19OddFullModulus

def twentyMillionOddFinite19OddTwoOfThreeEndpointRat
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Rat :=
  twentyMillionOddFinite19OddTwoOfThreeEndpoint
    p3 p7 p11 p13 p17 p19

noncomputable def twentyMillionOddFinite19PairUnionDensityRat
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Rat :=
  (twentyMillionOddFinite19PairUnionNumerator
      p2 p3 p7 p11 p13 p17 p19 : Rat) /
    twentyMillionOddFinite19OddFullModulus

def twentyMillionOddFinite19PairUnionEndpointRat
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Rat :=
  twentyMillionOddFinite19PairUnionEndpoint
    p2 p3 p7 p11 p13 p17 p19

private theorem twentyMillionOddFinite19AllThree_linear_bound
    (length allThree singles pairs triple
      singleDensity pairDensity tripleDensity
      singleEndpoint pairEndpoint tripleEndpoint : Rat)
    (hsingle :
      3 * (length * singleDensity - singleEndpoint) ≤ singles)
    (hpair :
      pairs ≤ length * pairDensity + pairEndpoint)
    (htriple :
      length * tripleDensity - tripleEndpoint ≤ triple)
    (hidentity :
      allThree = length - singles + pairs - triple) :
    allThree ≤
      length * (1 - 3 * singleDensity + pairDensity - tripleDensity) +
        (3 * singleEndpoint + pairEndpoint + tripleEndpoint) := by
  linarith

private theorem twentyMillionOddFinite19FixedTwoOfThree_linear_bound
    (length twoOfThree points pairs triple
      pairComplementDensity tripleDensity
      pairEndpoint tripleEndpoint : Rat)
    (hpair :
      3 * points - length * pairComplementDensity - pairEndpoint ≤ pairs)
    (htriple :
      triple ≤
        points - length * (1 - tripleDensity) / 4 + tripleEndpoint)
    (hidentity :
      twoOfThree = points - pairs + 2 * triple) :
    twoOfThree ≤
      length * (pairComplementDensity - (1 - tripleDensity) / 2) +
        (pairEndpoint + 2 * tripleEndpoint) := by
  linarith

private theorem twentyMillionOddFinite19AllThreeDensityRat_algebra
    (full single triple : Rat) (pairs : Fin 3 → Rat)
    (hfull : full ≠ 0) :
    (full - 3 * single + (∑ pair, pairs pair) - triple) / full =
      1 - 3 * (single / full) +
        (∑ pair, pairs pair / full) - triple / full := by
  rw [← Finset.sum_div]
  field_simp [hfull]
  <;> ring

private theorem twentyMillionOddFinite19PairUnionDensityRat_algebra
    (full noEvent : Rat) (hfull : full ≠ 0) :
    (full - noEvent) / full = 1 - noEvent / full := by
  field_simp [hfull]

private theorem twentyMillionOddFinite19OddTwoOfThreeDensityRat_algebra
    (full triple : Rat) (pairs : Fin 3 → Rat)
    (hfull : full ≠ 0) :
    (full - (∑ pair, pairs pair) + 2 * triple) / full =
      1 - (∑ pair, pairs pair / full) + 2 * (triple / full) := by
  rw [← Finset.sum_div]
  field_simp [hfull]
  <;> ring

private theorem twentyMillionOddFinite19NoEventDensityRat_three_algebra
    (full first second third : Rat) (hfull : full ≠ 0) :
    (full - first + second - third) / full =
      1 - first / full + second / full - third / full := by
  field_simp [hfull]

private theorem twentyMillionOddFinite19NoEventDensityRat_two_algebra
    (full first second : Rat) (hfull : full ≠ 0) :
    (full - first + second) / full =
      1 - first / full + second / full := by
  field_simp [hfull]

private theorem twentyMillionOddFinite19NoEventDensityRat_two_eq
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (fullModulus : Nat)
    (cards : TwentyMillionOddFinite19Index → Nat)
    (hfull : (fullModulus : Rat) ≠ 0) :
    twentyMillionOddFinite19NoEventDensityRat
        modulus fullModulus cards 2 =
      1 -
        (twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 1 : Rat) / fullModulus +
        (twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 2 : Rat) / fullModulus := by
  unfold twentyMillionOddFinite19NoEventDensityRat
    twentyMillionOddFinite19NoEventNumerator
  push_cast
  exact twentyMillionOddFinite19NoEventDensityRat_two_algebra
    _ _ _ hfull

private theorem twentyMillionOddFinite19NoEventEndpointRat_two_eq
    (cards : TwentyMillionOddFinite19Index → Nat) :
    twentyMillionOddFinite19NoEventEndpointRat cards 2 =
      (twentyMillionOddFinite19RankEndpoint cards 1 : Rat) +
        twentyMillionOddFinite19RankEndpoint cards 2 := by
  unfold twentyMillionOddFinite19NoEventEndpointRat
    twentyMillionOddFinite19NoEventEndpoint
  push_cast
  rfl

private theorem twentyMillionOddFinite19NoEventDensityRat_three_eq
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (fullModulus : Nat)
    (cards : TwentyMillionOddFinite19Index → Nat)
    (hfull : (fullModulus : Rat) ≠ 0) :
    twentyMillionOddFinite19NoEventDensityRat
        modulus fullModulus cards 3 =
      1 -
        (twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 1 : Rat) / fullModulus +
        (twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 2 : Rat) / fullModulus -
        (twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 3 : Rat) / fullModulus := by
  unfold twentyMillionOddFinite19NoEventDensityRat
    twentyMillionOddFinite19NoEventNumerator
  push_cast
  exact twentyMillionOddFinite19NoEventDensityRat_three_algebra
    _ _ _ _ hfull

private theorem twentyMillionOddFinite19NoEventEndpointRat_three_eq
    (cards : TwentyMillionOddFinite19Index → Nat) :
    twentyMillionOddFinite19NoEventEndpointRat cards 3 =
      (twentyMillionOddFinite19RankEndpoint cards 1 : Rat) +
        twentyMillionOddFinite19RankEndpoint cards 2 +
        twentyMillionOddFinite19RankEndpoint cards 3 := by
  unfold twentyMillionOddFinite19NoEventEndpointRat
    twentyMillionOddFinite19NoEventEndpoint
  push_cast
  rfl

private theorem twentyMillionOddFinite19NoEventComplementRat_one_eq
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (fullModulus : Nat)
    (cards : TwentyMillionOddFinite19Index → Nat)
    (hfull : (fullModulus : Rat) ≠ 0) :
    1 - twentyMillionOddFinite19NoEventDensityRat
        modulus fullModulus cards 1 =
      (twentyMillionOddFinite19RankNumerator
        modulus fullModulus cards 1 : Rat) / fullModulus := by
  unfold twentyMillionOddFinite19NoEventDensityRat
    twentyMillionOddFinite19NoEventNumerator
  push_cast
  field_simp [hfull]
  ring

private theorem twentyMillionOddFinite19NoEventEndpointRat_one_eq
    (cards : TwentyMillionOddFinite19Index → Nat) :
    twentyMillionOddFinite19NoEventEndpointRat cards 1 =
      (twentyMillionOddFinite19RankEndpoint cards 1 : Rat) := by
  rfl

private theorem twentyMillionOddFinite19NoEventComplementRat_two_eq
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (fullModulus : Nat)
    (cards : TwentyMillionOddFinite19Index → Nat)
    (hfull : (fullModulus : Rat) ≠ 0) :
    1 - twentyMillionOddFinite19NoEventDensityRat
        modulus fullModulus cards 2 =
      (twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 1 : Rat) / fullModulus -
        (twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 2 : Rat) / fullModulus := by
  rw [twentyMillionOddFinite19NoEventDensityRat_two_eq
    modulus fullModulus cards hfull]
  ring

private theorem twentyMillionOddFinite19NoEventComplementRat_three_eq
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (fullModulus : Nat)
    (cards : TwentyMillionOddFinite19Index → Nat)
    (hfull : (fullModulus : Rat) ≠ 0) :
    1 - twentyMillionOddFinite19NoEventDensityRat
        modulus fullModulus cards 3 =
      (twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 1 : Rat) / fullModulus -
        (twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 2 : Rat) / fullModulus +
        (twentyMillionOddFinite19RankNumerator
          modulus fullModulus cards 3 : Rat) / fullModulus := by
  rw [twentyMillionOddFinite19NoEventDensityRat_three_eq
    modulus fullModulus cards hfull]
  ring

private theorem twentyMillionOddFinite19AllThreeDensityRat_decomposition
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddFinite19AllThreeDensityRat
        p2 p3 p7 p11 p13 p17 p19 =
      1 -
        3 * twentyMillionOddFinite19NoEventDensityRat
          twentyMillionOddFinite19Modulus
          twentyMillionOddFinite19FullModulus
          twentyMillionOddFinite19SingletonCards 3 +
        (∑ pair : Fin 3,
          twentyMillionOddFinite19NoEventDensityRat
            twentyMillionOddFinite19Modulus
            twentyMillionOddFinite19FullModulus
            (twentyMillionOddFinite19FullPairCards
              p2 p3 p7 p11 p13 p17 p19 pair) 2) -
        twentyMillionOddFinite19NoEventDensityRat
          twentyMillionOddFinite19Modulus
          twentyMillionOddFinite19FullModulus
          (twentyMillionOddFinite19FullTripleCards
            p2 p3 p7 p11 p13 p17 p19) 3 := by
  unfold twentyMillionOddFinite19AllThreeDensityRat
    twentyMillionOddFinite19AllThreeNumerator
    twentyMillionOddFinite19NoEventDensityRat
  push_cast
  apply twentyMillionOddFinite19AllThreeDensityRat_algebra
  norm_num [twentyMillionOddFinite19FullModulus]


private theorem twentyMillionOddFinite19AllThreeEndpointRat_decomposition
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddFinite19AllThreeEndpointRat
        p2 p3 p7 p11 p13 p17 p19 =
      3 * twentyMillionOddFinite19NoEventEndpointRat
          twentyMillionOddFinite19SingletonCards 3 +
        (∑ pair : Fin 3,
          twentyMillionOddFinite19NoEventEndpointRat
            (twentyMillionOddFinite19FullPairCards
              p2 p3 p7 p11 p13 p17 p19 pair) 2) +
        twentyMillionOddFinite19NoEventEndpointRat
          (twentyMillionOddFinite19FullTripleCards
            p2 p3 p7 p11 p13 p17 p19) 3 := by
  unfold twentyMillionOddFinite19AllThreeEndpointRat
    twentyMillionOddFinite19AllThreeEndpoint
    twentyMillionOddFinite19NoEventEndpointRat
  push_cast
  rfl


private theorem twentyMillionOddFinite19PairUnionDensityRat_decomposition
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddFinite19PairUnionDensityRat
        p2 p3 p7 p11 p13 p17 p19 =
      1 -
        twentyMillionOddFinite19NoEventDensityRat
          twentyMillionOddFinite19OddModulus
          twentyMillionOddFinite19OddFullModulus
          (twentyMillionOddFinite19OddPairCards
            p3 p7 p11 p13 p17 p19
            (twentyMillionOddFinite19ClosePair p2)) 3 := by
  unfold twentyMillionOddFinite19PairUnionDensityRat
    twentyMillionOddFinite19PairUnionNumerator
    twentyMillionOddFinite19NoEventDensityRat
  push_cast
  apply twentyMillionOddFinite19PairUnionDensityRat_algebra
  norm_num [twentyMillionOddFinite19OddFullModulus]


private theorem twentyMillionOddFinite19PairUnionEndpointRat_decomposition
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddFinite19PairUnionEndpointRat
        p2 p3 p7 p11 p13 p17 p19 =
      twentyMillionOddFinite19NoEventEndpointRat
        (twentyMillionOddFinite19OddPairCards
          p3 p7 p11 p13 p17 p19
          (twentyMillionOddFinite19ClosePair p2)) 3 := by
  rfl


private theorem twentyMillionOddFinite19OddTwoOfThreeDensityRat_decomposition
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddFinite19OddTwoOfThreeDensityRat
        p3 p7 p11 p13 p17 p19 =
      1 -
        (∑ pair : Fin 3,
          twentyMillionOddFinite19NoEventDensityRat
            twentyMillionOddFinite19OddModulus
            twentyMillionOddFinite19OddFullModulus
            (twentyMillionOddFinite19OddPairCards
              p3 p7 p11 p13 p17 p19 pair) 1) +
        2 * twentyMillionOddFinite19NoEventDensityRat
          twentyMillionOddFinite19OddModulus
          twentyMillionOddFinite19OddFullModulus
          (twentyMillionOddFinite19OddTripleCards
            p3 p7 p11 p13 p17 p19) 2 := by
  unfold twentyMillionOddFinite19OddTwoOfThreeDensityRat
    twentyMillionOddFinite19OddTwoOfThreeNumerator
    twentyMillionOddFinite19NoEventDensityRat
  push_cast
  apply twentyMillionOddFinite19OddTwoOfThreeDensityRat_algebra
  norm_num [twentyMillionOddFinite19OddFullModulus]


private theorem twentyMillionOddFinite19OddTwoOfThreeEndpointRat_decomposition
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddFinite19OddTwoOfThreeEndpointRat
        p3 p7 p11 p13 p17 p19 =
      (∑ pair : Fin 3,
        twentyMillionOddFinite19NoEventEndpointRat
          (twentyMillionOddFinite19OddPairCards
            p3 p7 p11 p13 p17 p19 pair) 1) +
        2 * twentyMillionOddFinite19NoEventEndpointRat
          (twentyMillionOddFinite19OddTripleCards
            p3 p7 p11 p13 p17 p19) 2 := by
  unfold twentyMillionOddFinite19OddTwoOfThreeEndpointRat
    twentyMillionOddFinite19OddTwoOfThreeEndpoint
    twentyMillionOddFinite19NoEventEndpointRat
  push_cast
  rfl


private theorem twentyMillionOddFinite19Modulus_pos_of_mode
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (hmode :
      modulus = twentyMillionOddFinite19Modulus ∨
        modulus = twentyMillionOddFinite19OddModulus)
    (index : TwentyMillionOddFinite19Index) :
    0 < modulus index := by
  rcases hmode with rfl | rfl <;>
    fin_cases index <;>
    norm_num [twentyMillionOddFinite19Modulus,
      twentyMillionOddFinite19OddModulus]


private theorem twentyMillionOddFinite19Modulus_coprime_of_mode
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (hmode :
      modulus = twentyMillionOddFinite19Modulus ∨
        modulus = twentyMillionOddFinite19OddModulus)
    (i j : TwentyMillionOddFinite19Index) (hij : i ≠ j) :
    Nat.Coprime (modulus i) (modulus j) := by
  rcases hmode with rfl | rfl <;>
    fin_cases i <;> fin_cases j <;>
    simp_all [twentyMillionOddFinite19Modulus,
      twentyMillionOddFinite19OddModulus] <;>
    norm_num


private theorem twentyMillionOddFinite19FullModulus_ne_of_mode
    (fullModulus : Nat)
    (hmode :
      fullModulus = twentyMillionOddFinite19FullModulus ∨
        fullModulus = twentyMillionOddFinite19OddFullModulus) :
    (fullModulus : Rat) ≠ 0 := by
  rcases hmode with rfl | rfl <;>
    norm_num [twentyMillionOddFinite19FullModulus,
      twentyMillionOddFinite19OddFullModulus]


private theorem twentyMillionOddFinite19NoEvent_lower_one
    (length : Nat)
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (fullModulus : Nat)
    (hmode :
      modulus = twentyMillionOddFinite19Modulus ∧
          fullModulus = twentyMillionOddFinite19FullModulus ∨
        modulus = twentyMillionOddFinite19OddModulus ∧
          fullModulus = twentyMillionOddFinite19OddFullModulus)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (hrootBound : ∀ index, ∀ r ∈ roots index, r < modulus index) :
    (length : Rat) *
          twentyMillionOddFinite19NoEventDensityRat
            modulus fullModulus (fun i => (roots i).card) 1 -
        twentyMillionOddFinite19NoEventEndpointRat
          (fun i => (roots i).card) 1 ≤
      ((noEventPoints (Finset.range length)
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        (fun i q => q % modulus i ∈ roots i)).card : Rat) := by
  have hmod :
      modulus = twentyMillionOddFinite19Modulus ∨
        modulus = twentyMillionOddFinite19OddModulus :=
    hmode.elim (fun h => Or.inl h.1) (fun h => Or.inr h.1)
  have h := scratch_noEvent_lower_one
    length
    (Finset.univ : Finset TwentyMillionOddFinite19Index)
    modulus roots
    (by
      intro i _hi
      exact twentyMillionOddFinite19Modulus_pos_of_mode modulus hmod i)
    (by
      intro i _hi j _hj hij
      exact twentyMillionOddFinite19Modulus_coprime_of_mode
        modulus hmod i j hij)
    (by intro i _hi r hr; exact hrootBound i r hr)
  rw [twentyMillionOddFinite19RankDensity_eq_numerator
      modulus fullModulus hmode roots 1 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 1 (by norm_num) (by norm_num)] at h
  unfold twentyMillionOddFinite19NoEventDensityRat
    twentyMillionOddFinite19NoEventEndpointRat
    twentyMillionOddFinite19NoEventEndpoint
    twentyMillionOddFinite19NoEventNumerator
  have hfullNe := twentyMillionOddFinite19FullModulus_ne_of_mode
    fullModulus (hmode.elim (fun hm => Or.inl hm.2) (fun hm => Or.inr hm.2))
  push_cast
  convert h using 1 <;> field_simp [hfullNe] <;> ring


private theorem twentyMillionOddFinite19NoEvent_lower_three
    (length : Nat)
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (fullModulus : Nat)
    (hmode :
      modulus = twentyMillionOddFinite19Modulus ∧
          fullModulus = twentyMillionOddFinite19FullModulus ∨
        modulus = twentyMillionOddFinite19OddModulus ∧
          fullModulus = twentyMillionOddFinite19OddFullModulus)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (hrootBound : ∀ index, ∀ r ∈ roots index, r < modulus index) :
    (length : Rat) *
          twentyMillionOddFinite19NoEventDensityRat
            modulus fullModulus (fun i => (roots i).card) 3 -
        twentyMillionOddFinite19NoEventEndpointRat
          (fun i => (roots i).card) 3 ≤
      ((noEventPoints (Finset.range length)
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        (fun i q => q % modulus i ∈ roots i)).card : Rat) := by
  have hmod :
      modulus = twentyMillionOddFinite19Modulus ∨
        modulus = twentyMillionOddFinite19OddModulus :=
    hmode.elim (fun h => Or.inl h.1) (fun h => Or.inr h.1)
  have h := scratch_noEvent_lower_three
    length
    (Finset.univ : Finset TwentyMillionOddFinite19Index)
    modulus roots
    (by
      intro i _hi
      exact twentyMillionOddFinite19Modulus_pos_of_mode modulus hmod i)
    (by
      intro i _hi j _hj hij
      exact twentyMillionOddFinite19Modulus_coprime_of_mode
        modulus hmod i j hij)
    (by intro i _hi r hr; exact hrootBound i r hr)
  rw [twentyMillionOddFinite19RankDensity_eq_numerator
      modulus fullModulus hmode roots 1 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankDensity_eq_numerator
      modulus fullModulus hmode roots 2 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankDensity_eq_numerator
      modulus fullModulus hmode roots 3 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 1 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 2 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 3 (by norm_num) (by norm_num)] at h
  have hfullNe := twentyMillionOddFinite19FullModulus_ne_of_mode
    fullModulus (hmode.elim (fun hm => Or.inl hm.2) (fun hm => Or.inr hm.2))
  rw [twentyMillionOddFinite19NoEventDensityRat_three_eq
      modulus fullModulus (fun i => (roots i).card) hfullNe,
    twentyMillionOddFinite19NoEventEndpointRat_three_eq]
  exact h


private theorem twentyMillionOddFinite19NoEvent_upper_two
    (length : Nat)
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (fullModulus : Nat)
    (hmode :
      modulus = twentyMillionOddFinite19Modulus ∧
          fullModulus = twentyMillionOddFinite19FullModulus ∨
        modulus = twentyMillionOddFinite19OddModulus ∧
          fullModulus = twentyMillionOddFinite19OddFullModulus)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (hrootBound : ∀ index, ∀ r ∈ roots index, r < modulus index) :
    ((noEventPoints (Finset.range length)
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        (fun i q => q % modulus i ∈ roots i)).card : Rat) ≤
      (length : Rat) *
          twentyMillionOddFinite19NoEventDensityRat
            modulus fullModulus (fun i => (roots i).card) 2 +
        twentyMillionOddFinite19NoEventEndpointRat
          (fun i => (roots i).card) 2 := by
  have hmod :
      modulus = twentyMillionOddFinite19Modulus ∨
        modulus = twentyMillionOddFinite19OddModulus :=
    hmode.elim (fun h => Or.inl h.1) (fun h => Or.inr h.1)
  have h := scratch_noEvent_upper_two
    length
    (Finset.univ : Finset TwentyMillionOddFinite19Index)
    modulus roots
    (by
      intro i _hi
      exact twentyMillionOddFinite19Modulus_pos_of_mode modulus hmod i)
    (by
      intro i _hi j _hj hij
      exact twentyMillionOddFinite19Modulus_coprime_of_mode
        modulus hmod i j hij)
    (by intro i _hi r hr; exact hrootBound i r hr)
  rw [twentyMillionOddFinite19RankDensity_eq_numerator
      modulus fullModulus hmode roots 1 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankDensity_eq_numerator
      modulus fullModulus hmode roots 2 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 1 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 2 (by norm_num) (by norm_num)] at h
  have hfullNe := twentyMillionOddFinite19FullModulus_ne_of_mode
    fullModulus (hmode.elim (fun hm => Or.inl hm.2) (fun hm => Or.inr hm.2))
  rw [twentyMillionOddFinite19NoEventDensityRat_two_eq
      modulus fullModulus (fun i => (roots i).card) hfullNe,
    twentyMillionOddFinite19NoEventEndpointRat_two_eq]
  exact h


private theorem twentyMillionOddFinite19FullSingleSurvivor_eq_noEvent
    (length : Nat) (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pivot : Fin 3) :
    (Finset.range length).filter (fun q =>
        e1FiniteSingleSurvives
          (twentyMillionOddFinite19RootBad roots) pivot q) =
      noEventPoints (Finset.range length)
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        (fun index q =>
          q % twentyMillionOddFinite19Modulus index ∈
            twentyMillionOddFinite19FullSingleRoots
              roots pivot index) := by
  classical
  ext q
  simp [e1FiniteSingleSurvives,
    twentyMillionOddFinite19RootBad,
    twentyMillionOddFinite19FullSingleRoots,
    noEventPoints, activeIndices, Finset.card_eq_zero] <;>
    aesop


private theorem twentyMillionOddFinite19FullPairSurvivor_eq_noEvent
    (length : Nat) (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pair : Fin 3) :
    (Finset.range length).filter (fun q =>
        e1FinitePairSurvives
          (twentyMillionOddFinite19RootBad roots) pair q) =
      noEventPoints (Finset.range length)
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        (fun index q =>
          q % twentyMillionOddFinite19Modulus index ∈
            twentyMillionOddFinite19FullPairRoots
              roots pair index) := by
  classical
  ext q
  fin_cases pair <;>
    simp [e1FinitePairSurvives,
      twentyMillionOddFinite19RootBad,
      twentyMillionOddFinite19FullPairRoots,
      e1FinitePairRootSet, noEventPoints, activeIndices,
      Finset.card_eq_zero] <;>
    aesop


private theorem twentyMillionOddFinite19FullTripleSurvivor_eq_noEvent
    (length : Nat) (roots : TwentyMillionOddFinite19PivotRootFamily) :
    (Finset.range length).filter (fun q =>
        e1FiniteTripleSurvives
          (twentyMillionOddFinite19RootBad roots) q) =
      noEventPoints (Finset.range length)
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        (fun index q =>
          q % twentyMillionOddFinite19Modulus index ∈
            twentyMillionOddFinite19FullTripleRoots roots index) := by
  classical
  ext q
  simp [e1FiniteTripleSurvives,
    twentyMillionOddFinite19RootBad,
    twentyMillionOddFinite19FullTripleRoots,
    e1FiniteTripleRootSet, noEventPoints, activeIndices,
    Finset.card_eq_zero] <;>
    aesop


theorem twentyMillionOddFinite19RootAllThree_card_rat_le
    (length : Nat) (roots : TwentyMillionOddFinite19PivotRootFamily) :
    (((Finset.range length).filter fun q =>
        e1FiniteAllThreeBad
          (twentyMillionOddFinite19RootBad roots) q).card : Rat) ≤
      (length : Rat) * twentyMillionOddFinite19AllThreeDensityRat
        (twentyMillionOddFinite19RootPatternAt roots 0)
        (twentyMillionOddFinite19RootPatternAt roots 1)
        (twentyMillionOddFinite19RootPatternAt roots 2)
        (twentyMillionOddFinite19RootPatternAt roots 3)
        (twentyMillionOddFinite19RootPatternAt roots 4)
        (twentyMillionOddFinite19RootPatternAt roots 5)
        (twentyMillionOddFinite19RootPatternAt roots 6) +
      twentyMillionOddFinite19AllThreeEndpointRat
        (twentyMillionOddFinite19RootPatternAt roots 0)
        (twentyMillionOddFinite19RootPatternAt roots 1)
        (twentyMillionOddFinite19RootPatternAt roots 2)
        (twentyMillionOddFinite19RootPatternAt roots 3)
        (twentyMillionOddFinite19RootPatternAt roots 4)
        (twentyMillionOddFinite19RootPatternAt roots 5)
        (twentyMillionOddFinite19RootPatternAt roots 6) := by
  classical
  let patterns : TwentyMillionOddFinite19Index → E1FiniteRootPattern :=
    twentyMillionOddFinite19RootPatternAt roots
  have hsingle : ∀ pivot : Fin 3,
      (length : Rat) *
          twentyMillionOddFinite19NoEventDensityRat
            twentyMillionOddFinite19Modulus
            twentyMillionOddFinite19FullModulus
            twentyMillionOddFinite19SingletonCards 3 -
        twentyMillionOddFinite19NoEventEndpointRat
          twentyMillionOddFinite19SingletonCards 3 ≤
      (((Finset.range length).filter fun q =>
        e1FiniteSingleSurvives
          (twentyMillionOddFinite19RootBad roots) pivot q).card : Rat) := by
    intro pivot
    have h := twentyMillionOddFinite19NoEvent_lower_three
      length twentyMillionOddFinite19Modulus
      twentyMillionOddFinite19FullModulus
      (Or.inl ⟨rfl, rfl⟩)
      (twentyMillionOddFinite19FullSingleRoots roots pivot)
      (twentyMillionOddFinite19FullSingleRoots_bound roots pivot)
    rw [← twentyMillionOddFinite19FullSingleSurvivor_eq_noEvent] at h
    simpa [twentyMillionOddFinite19FullSingleRoots_cards] using h
  have hpair : ∀ pair : Fin 3,
      (((Finset.range length).filter fun q =>
        e1FinitePairSurvives
          (twentyMillionOddFinite19RootBad roots) pair q).card : Rat) ≤
      (length : Rat) *
          twentyMillionOddFinite19NoEventDensityRat
            twentyMillionOddFinite19Modulus
            twentyMillionOddFinite19FullModulus
            (twentyMillionOddFinite19FullPairCards
              (patterns 0) (patterns 1) (patterns 2) (patterns 3)
              (patterns 4) (patterns 5) (patterns 6) pair) 2 +
        twentyMillionOddFinite19NoEventEndpointRat
          (twentyMillionOddFinite19FullPairCards
            (patterns 0) (patterns 1) (patterns 2) (patterns 3)
            (patterns 4) (patterns 5) (patterns 6) pair) 2 := by
    intro pair
    have h := twentyMillionOddFinite19NoEvent_upper_two
      length twentyMillionOddFinite19Modulus
      twentyMillionOddFinite19FullModulus
      (Or.inl ⟨rfl, rfl⟩)
      (twentyMillionOddFinite19FullPairRoots roots pair)
      (twentyMillionOddFinite19FullPairRoots_bound roots pair)
    rw [← twentyMillionOddFinite19FullPairSurvivor_eq_noEvent] at h
    rw [twentyMillionOddFinite19FullPairRoots_cards] at h
    exact h
  have htriple :
      (length : Rat) *
          twentyMillionOddFinite19NoEventDensityRat
            twentyMillionOddFinite19Modulus
            twentyMillionOddFinite19FullModulus
            (twentyMillionOddFinite19FullTripleCards
              (patterns 0) (patterns 1) (patterns 2) (patterns 3)
              (patterns 4) (patterns 5) (patterns 6)) 3 -
        twentyMillionOddFinite19NoEventEndpointRat
          (twentyMillionOddFinite19FullTripleCards
            (patterns 0) (patterns 1) (patterns 2) (patterns 3)
            (patterns 4) (patterns 5) (patterns 6)) 3 ≤
      (((Finset.range length).filter fun q =>
        e1FiniteTripleSurvives
          (twentyMillionOddFinite19RootBad roots) q).card : Rat) := by
    have h := twentyMillionOddFinite19NoEvent_lower_three
      length twentyMillionOddFinite19Modulus
      twentyMillionOddFinite19FullModulus
      (Or.inl ⟨rfl, rfl⟩)
      (twentyMillionOddFinite19FullTripleRoots roots)
      (twentyMillionOddFinite19FullTripleRoots_bound roots)
    rw [← twentyMillionOddFinite19FullTripleSurvivor_eq_noEvent] at h
    rw [twentyMillionOddFinite19FullTripleRoots_cards] at h
    exact h
  have hsingleSum := Finset.sum_le_sum (s := Finset.univ)
    (fun pivot _hpivot => hsingle pivot)
  have hpairSum := Finset.sum_le_sum (s := Finset.univ)
    (fun pair _hpair => hpair pair)
  have hidInt := e1FiniteAllThree_card_identity
    (Finset.range length) (twentyMillionOddFinite19RootBad roots)
  simp only [Finset.card_range] at hidInt
  have hidRat :
      (((Finset.range length).filter fun q =>
        e1FiniteAllThreeBad
          (twentyMillionOddFinite19RootBad roots) q).card : Rat) =
      length -
        (∑ pivot : Fin 3,
          (((Finset.range length).filter fun q =>
            e1FiniteSingleSurvives
              (twentyMillionOddFinite19RootBad roots) pivot q).card : Rat)) +
        (∑ pair : Fin 3,
          (((Finset.range length).filter fun q =>
            e1FinitePairSurvives
              (twentyMillionOddFinite19RootBad roots) pair q).card : Rat)) -
        ((Finset.range length).filter fun q =>
          e1FiniteTripleSurvives
            (twentyMillionOddFinite19RootBad roots) q).card := by
    exact_mod_cast hidInt
  dsimp [patterns] at hpair htriple hpairSum ⊢
  rw [twentyMillionOddFinite19AllThreeDensityRat_decomposition,
    twentyMillionOddFinite19AllThreeEndpointRat_decomposition]
  rw [Finset.sum_sub_distrib] at hsingleSum
  simp only [Finset.sum_const, Finset.card_fin,
    nsmul_eq_mul] at hsingleSum
  rw [Finset.sum_add_distrib, ← Finset.mul_sum] at hpairSum
  eapply twentyMillionOddFinite19AllThree_linear_bound
  · convert hsingleSum using 1 <;> ring
  · convert hpairSum using 1 <;> ring
  · exact htriple
  · exact hidRat


noncomputable def twentyMillionOddFinite19FixedFiber
    (length rootFour : Nat) : Finset Nat :=
  (Finset.range length).filter fun q => q % 4 = rootFour

noncomputable def twentyMillionOddFinite19FixedIntersection
    (length rootFour : Nat)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (subset : Finset TwentyMillionOddFinite19Index) : Finset Nat :=
  (Finset.range length).filter fun q =>
    q % 4 = rootFour ∧
      ∀ index ∈ subset,
        q % twentyMillionOddFinite19OddModulus index ∈ roots index

private def twentyMillionOddFinite19FixedFullRoots
    (rootFour : Nat)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (index : TwentyMillionOddFinite19Index) : Finset Nat :=
  if index = 0 then {rootFour} else roots index

private theorem twentyMillionOddFinite19FixedIntersection_bounds
    (length rootFour : Nat)
    (hrootFour : rootFour < 4)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (hrootsZero : roots 0 = ∅)
    (hrootBound : ∀ index, ∀ r ∈ roots index,
      r < twentyMillionOddFinite19OddModulus index)
    (subset : Finset TwentyMillionOddFinite19Index) :
    (length : Rat) *
          (scratchRootDensity
            twentyMillionOddFinite19OddModulus roots subset / 4) -
        scratchRootEndpoint roots subset ≤
      ((twentyMillionOddFinite19FixedIntersection
        length rootFour roots subset).card : Rat) ∧
    ((twentyMillionOddFinite19FixedIntersection
        length rootFour roots subset).card : Rat) ≤
      (length : Rat) *
          (scratchRootDensity
            twentyMillionOddFinite19OddModulus roots subset / 4) +
        scratchRootEndpoint roots subset := by
  classical
  by_cases hzero : (0 : TwentyMillionOddFinite19Index) ∈ subset
  · have hprodZero :
        (∏ index ∈ subset, (roots index).card) = 0 := by
      apply Finset.prod_eq_zero hzero
      simp [hrootsZero]
    have hdensity :
        scratchRootDensity
          twentyMillionOddFinite19OddModulus roots subset = 0 := by
      unfold scratchRootDensity
      rw [Finset.prod_map_toList, hprodZero]
      norm_num
    have hendpoint : scratchRootEndpoint roots subset = 0 := by
      unfold scratchRootEndpoint
      exact_mod_cast hprodZero
    have hset :
        twentyMillionOddFinite19FixedIntersection
          length rootFour roots subset = ∅ := by
      ext q
      constructor
      · intro hq
        have hparts := Finset.mem_filter.mp hq
        have hz := hparts.2.2 0 hzero
        exact False.elim (by simpa [hrootsZero] using hz)
      · simp
    simp [hset, hdensity, hendpoint]
  · let augmented := insert (0 : TwentyMillionOddFinite19Index) subset
    let fullRoots :=
      twentyMillionOddFinite19FixedFullRoots rootFour roots
    have hfullBound :
        ∀ index ∈ augmented, ∀ r ∈ fullRoots index,
          r < twentyMillionOddFinite19Modulus index := by
      intro index _hindex r hr
      by_cases hi : index = 0
      · subst index
        have hre : r = rootFour := by
          simpa [fullRoots,
            twentyMillionOddFinite19FixedFullRoots] using hr
        subst r
        simpa [twentyMillionOddFinite19Modulus] using hrootFour
      · have hr' : r ∈ roots index := by
          simpa [fullRoots,
            twentyMillionOddFinite19FixedFullRoots, hi] using hr
        have hb := hrootBound index r hr'
        fin_cases index <;>
          simp_all [twentyMillionOddFinite19Modulus,
            twentyMillionOddFinite19OddModulus]
    have hraw := scratch_modMem_card_rat_bounds
      length augmented twentyMillionOddFinite19Modulus fullRoots
      (by
        intro index _hindex
        exact twentyMillionOddDegreeModulus_pos index)
      (by
        intro i _hi j _hj hij
        exact twentyMillionOddDegreeModulus_pairwise_coprime i j hij)
      hfullBound
    have hset :
        scratchModMemPoints length augmented
            twentyMillionOddFinite19Modulus fullRoots =
          twentyMillionOddFinite19FixedIntersection
            length rootFour roots subset := by
      ext q
      simp only [scratchModMemPoints,
        twentyMillionOddFinite19FixedIntersection,
        Finset.mem_filter, Finset.mem_range]
      constructor
      · intro hq
        have hfour := hq.2 0 (Finset.mem_insert_self 0 subset)
        have hrest : ∀ index ∈ subset,
            q % twentyMillionOddFinite19OddModulus index ∈ roots index := by
          intro index hindex
          have hi : index ≠ 0 := fun heq => hzero (heq ▸ hindex)
          have hiFull := hq.2 index (Finset.mem_insert_of_mem hindex)
          have hmod :
              twentyMillionOddFinite19Modulus index =
                twentyMillionOddFinite19OddModulus index := by
            fin_cases index <;>
              simp_all [twentyMillionOddFinite19Modulus,
                twentyMillionOddFinite19OddModulus]
          simpa [fullRoots,
            twentyMillionOddFinite19FixedFullRoots, hi, hmod] using hiFull
        exact ⟨hq.1, by
          simpa [fullRoots,
            twentyMillionOddFinite19FixedFullRoots,
            twentyMillionOddFinite19Modulus] using hfour, hrest⟩
      · intro hq
        refine ⟨hq.1, ?_⟩
        intro index hindex
        rcases Finset.mem_insert.mp hindex with rfl | hindex
        · simpa [fullRoots,
            twentyMillionOddFinite19FixedFullRoots,
            twentyMillionOddFinite19Modulus] using hq.2.1
        · have hi : index ≠ 0 := fun heq => hzero (heq ▸ hindex)
          have hmod :
              twentyMillionOddFinite19Modulus index =
                twentyMillionOddFinite19OddModulus index := by
            fin_cases index <;>
              simp_all [twentyMillionOddFinite19Modulus,
                twentyMillionOddFinite19OddModulus]
          simpa [fullRoots,
            twentyMillionOddFinite19FixedFullRoots, hi, hmod] using
              hq.2.2 index hindex
    have hmodProd :
        (augmented.toList.map
          twentyMillionOddFinite19Modulus).prod =
        4 * (subset.toList.map
          twentyMillionOddFinite19OddModulus).prod := by
      rw [Finset.prod_map_toList, Finset.prod_map_toList]
      dsimp [augmented]
      rw [Finset.prod_insert hzero]
      have hprod :
          ∏ index ∈ subset, twentyMillionOddFinite19Modulus index =
            ∏ index ∈ subset,
              twentyMillionOddFinite19OddModulus index := by
        apply Finset.prod_congr rfl
        intro index hindex
        have hi : index ≠ 0 := fun heq => hzero (heq ▸ hindex)
        fin_cases index <;>
          simp_all [twentyMillionOddFinite19Modulus,
            twentyMillionOddFinite19OddModulus]
      rw [hprod]
      norm_num [twentyMillionOddFinite19Modulus]
    have hrootProd :
        (∏ index ∈ augmented, (fullRoots index).card) =
          ∏ index ∈ subset, (roots index).card := by
      dsimp [augmented]
      rw [Finset.prod_insert hzero]
      have hprod :
          ∏ index ∈ subset, (fullRoots index).card =
            ∏ index ∈ subset, (roots index).card := by
        apply Finset.prod_congr rfl
        intro index hindex
        have hi : index ≠ 0 := fun heq => hzero (heq ▸ hindex)
        simp [fullRoots,
          twentyMillionOddFinite19FixedFullRoots, hi]
      rw [hprod]
      simp [fullRoots, twentyMillionOddFinite19FixedFullRoots]
    rw [hset, hmodProd] at hraw
    unfold scratchRootDensity scratchRootEndpoint
    rw [Finset.prod_map_toList]
    rw [hrootProd] at hraw
    rw [Finset.prod_map_toList] at hraw
    simpa [div_div, mul_comm, mul_left_comm, mul_assoc] using hraw


private theorem twentyMillionOddFinite19FixedIntersection_rank_bounds
    (length rootFour : Nat)
    (hrootFour : rootFour < 4)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (hrootsZero : roots 0 = ∅)
    (hrootBound : ∀ index, ∀ r ∈ roots index,
      r < twentyMillionOddFinite19OddModulus index)
    (rank : Nat) :
    (length : Rat) *
          (scratchRankDensity
            (Finset.univ : Finset TwentyMillionOddFinite19Index)
            twentyMillionOddFinite19OddModulus roots rank / 4) -
        scratchRankEndpoint
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          roots rank ≤
      ∑ subset ∈
          (Finset.univ :
            Finset TwentyMillionOddFinite19Index).powersetCard rank,
        ((twentyMillionOddFinite19FixedIntersection
          length rootFour roots subset).card : Rat) ∧
    (∑ subset ∈
          (Finset.univ :
            Finset TwentyMillionOddFinite19Index).powersetCard rank,
        ((twentyMillionOddFinite19FixedIntersection
          length rootFour roots subset).card : Rat)) ≤
      (length : Rat) *
          (scratchRankDensity
            (Finset.univ : Finset TwentyMillionOddFinite19Index)
            twentyMillionOddFinite19OddModulus roots rank / 4) +
        scratchRankEndpoint
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          roots rank := by
  have hper : ∀ subset ∈
      (Finset.univ :
        Finset TwentyMillionOddFinite19Index).powersetCard rank,
      (length : Rat) *
            (scratchRootDensity
              twentyMillionOddFinite19OddModulus roots subset / 4) -
          scratchRootEndpoint roots subset ≤
        ((twentyMillionOddFinite19FixedIntersection
          length rootFour roots subset).card : Rat) ∧
      ((twentyMillionOddFinite19FixedIntersection
          length rootFour roots subset).card : Rat) ≤
        (length : Rat) *
            (scratchRootDensity
              twentyMillionOddFinite19OddModulus roots subset / 4) +
          scratchRootEndpoint roots subset := by
    intro subset _hsubset
    exact twentyMillionOddFinite19FixedIntersection_bounds
      length rootFour hrootFour roots hrootsZero hrootBound subset
  constructor
  · have hsum := Finset.sum_le_sum fun subset hsubset =>
      (hper subset hsubset).1
    unfold scratchRankDensity scratchRankEndpoint
    rw [Finset.sum_sub_distrib] at hsum
    have hdensity :
        (∑ subset ∈
            (Finset.univ :
              Finset TwentyMillionOddFinite19Index).powersetCard rank,
          (length : Rat) *
            (scratchRootDensity
              twentyMillionOddFinite19OddModulus roots subset / 4)) =
        (length : Rat) *
          ((∑ subset ∈
              (Finset.univ :
                Finset TwentyMillionOddFinite19Index).powersetCard rank,
            scratchRootDensity
              twentyMillionOddFinite19OddModulus roots subset) / 4) := by
      rw [← Finset.mul_sum, Finset.sum_div]
    rw [hdensity] at hsum
    exact hsum
  · have hsum := Finset.sum_le_sum fun subset hsubset =>
      (hper subset hsubset).2
    unfold scratchRankDensity scratchRankEndpoint
    rw [Finset.sum_add_distrib] at hsum
    have hdensity :
        (∑ subset ∈
            (Finset.univ :
              Finset TwentyMillionOddFinite19Index).powersetCard rank,
          (length : Rat) *
            (scratchRootDensity
              twentyMillionOddFinite19OddModulus roots subset / 4)) =
        (length : Rat) *
          ((∑ subset ∈
              (Finset.univ :
                Finset TwentyMillionOddFinite19Index).powersetCard rank,
            scratchRootDensity
              twentyMillionOddFinite19OddModulus roots subset) / 4) := by
      rw [← Finset.mul_sum, Finset.sum_div]
    rw [hdensity] at hsum
    exact hsum


private theorem twentyMillionOddFinite19Fixed_eventIntersection
    (length rootFour : Nat)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (subset : Finset TwentyMillionOddFinite19Index) :
    eventIntersection
        (twentyMillionOddFinite19FixedFiber length rootFour)
        (fun index q =>
          q % twentyMillionOddFinite19OddModulus index ∈ roots index)
        subset =
      twentyMillionOddFinite19FixedIntersection
        length rootFour roots subset := by
  classical
  ext q
  simp [eventIntersection, twentyMillionOddFinite19FixedFiber,
    twentyMillionOddFinite19FixedIntersection, and_assoc]

private theorem twentyMillionOddFinite19FixedNoEvent_lower_one
    (length rootFour : Nat)
    (hrootFour : rootFour < 4)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (hrootsZero : roots 0 = ∅)
    (hrootBound : ∀ index, ∀ r ∈ roots index,
      r < twentyMillionOddFinite19OddModulus index) :
    ((twentyMillionOddFinite19FixedFiber
        length rootFour).card : Rat) -
          (length : Rat) *
            (1 - twentyMillionOddFinite19NoEventDensityRat
              twentyMillionOddFinite19OddModulus
              twentyMillionOddFinite19OddFullModulus
              (fun i => (roots i).card) 1) / 4 -
          twentyMillionOddFinite19NoEventEndpointRat
            (fun i => (roots i).card) 1 ≤
      ((noEventPoints
        (twentyMillionOddFinite19FixedFiber length rootFour)
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        (fun index q =>
          q % twentyMillionOddFinite19OddModulus index ∈
            roots index)).card : Rat) := by
  classical
  let points := twentyMillionOddFinite19FixedFiber length rootFour
  let event := fun index q =>
    q % twentyMillionOddFinite19OddModulus index ∈ roots index
  have hbonfInt := bonferroni_one_le_noEvent_card
    points (Finset.univ : Finset TwentyMillionOddFinite19Index) event
  have hbonf :
      ((bonferroniIntersectionSum points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event 1 : Int) : Rat) ≤
        ((noEventPoints points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event).card : Rat) := by
    exact_mod_cast hbonfInt
  have hrank :=
    twentyMillionOddFinite19FixedIntersection_rank_bounds
      length rootFour hrootFour roots hrootsZero hrootBound 1
  have hexpand :
      ((bonferroniIntersectionSum points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event 1 : Int) : Rat) =
        (points.card : Rat) -
          ∑ subset ∈
            (Finset.univ :
              Finset TwentyMillionOddFinite19Index).powersetCard 1,
            ((eventIntersection points event subset).card : Rat) := by
    norm_num [bonferroniIntersectionSum, Finset.sum_range_succ,
      eventIntersection]
    ring
  rw [hexpand] at hbonf
  dsimp [points, event] at hbonf
  simp_rw [twentyMillionOddFinite19Fixed_eventIntersection] at hbonf
  have hraw :
      (points.card : Rat) -
          (length : Rat) *
            (scratchRankDensity
              (Finset.univ : Finset TwentyMillionOddFinite19Index)
              twentyMillionOddFinite19OddModulus roots 1 / 4) -
          scratchRankEndpoint
            (Finset.univ : Finset TwentyMillionOddFinite19Index)
            roots 1 ≤
        ((noEventPoints points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event).card : Rat) := by
    linarith [hrank.2]
  rw [twentyMillionOddFinite19RankDensity_eq_numerator
      twentyMillionOddFinite19OddModulus
      twentyMillionOddFinite19OddFullModulus
      (Or.inr ⟨rfl, rfl⟩) roots 1 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 1 (by norm_num) (by norm_num)] at hraw
  dsimp [points, event] at hraw ⊢
  have hfullNe :
      (twentyMillionOddFinite19OddFullModulus : Rat) ≠ 0 := by
    norm_num [twentyMillionOddFinite19OddFullModulus]
  rw [twentyMillionOddFinite19NoEventComplementRat_one_eq
      twentyMillionOddFinite19OddModulus
      twentyMillionOddFinite19OddFullModulus
      (fun i => (roots i).card) hfullNe,
    twentyMillionOddFinite19NoEventEndpointRat_one_eq]
  convert hraw using 1 <;> ring

private theorem twentyMillionOddFinite19FixedNoEvent_lower_three
    (length rootFour : Nat)
    (hrootFour : rootFour < 4)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (hrootsZero : roots 0 = ∅)
    (hrootBound : ∀ index, ∀ r ∈ roots index,
      r < twentyMillionOddFinite19OddModulus index) :
    ((twentyMillionOddFinite19FixedFiber
        length rootFour).card : Rat) -
          (length : Rat) *
            (1 - twentyMillionOddFinite19NoEventDensityRat
              twentyMillionOddFinite19OddModulus
              twentyMillionOddFinite19OddFullModulus
              (fun i => (roots i).card) 3) / 4 -
          twentyMillionOddFinite19NoEventEndpointRat
            (fun i => (roots i).card) 3 ≤
      ((noEventPoints
        (twentyMillionOddFinite19FixedFiber length rootFour)
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        (fun index q =>
          q % twentyMillionOddFinite19OddModulus index ∈
            roots index)).card : Rat) := by
  classical
  let points := twentyMillionOddFinite19FixedFiber length rootFour
  let event := fun index q =>
    q % twentyMillionOddFinite19OddModulus index ∈ roots index
  have hbonfInt := bonferroni_three_le_noEvent_card
    points (Finset.univ : Finset TwentyMillionOddFinite19Index) event
  have hbonf :
      ((bonferroniIntersectionSum points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event 3 : Int) : Rat) ≤
        ((noEventPoints points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event).card : Rat) := by
    exact_mod_cast hbonfInt
  have h1 := twentyMillionOddFinite19FixedIntersection_rank_bounds
    length rootFour hrootFour roots hrootsZero hrootBound 1
  have h2 := twentyMillionOddFinite19FixedIntersection_rank_bounds
    length rootFour hrootFour roots hrootsZero hrootBound 2
  have h3 := twentyMillionOddFinite19FixedIntersection_rank_bounds
    length rootFour hrootFour roots hrootsZero hrootBound 3
  have hexpand :
      ((bonferroniIntersectionSum points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event 3 : Int) : Rat) =
        (points.card : Rat) -
          (∑ subset ∈
            (Finset.univ :
              Finset TwentyMillionOddFinite19Index).powersetCard 1,
            ((eventIntersection points event subset).card : Rat)) +
          (∑ subset ∈
            (Finset.univ :
              Finset TwentyMillionOddFinite19Index).powersetCard 2,
            ((eventIntersection points event subset).card : Rat)) -
          (∑ subset ∈
            (Finset.univ :
              Finset TwentyMillionOddFinite19Index).powersetCard 3,
            ((eventIntersection points event subset).card : Rat)) := by
    norm_num [bonferroniIntersectionSum, Finset.sum_range_succ,
      eventIntersection]
    ring
  rw [hexpand] at hbonf
  dsimp [points, event] at hbonf
  simp_rw [twentyMillionOddFinite19Fixed_eventIntersection] at hbonf
  have hraw :
      (points.card : Rat) -
          (length : Rat) *
            ((scratchRankDensity
                (Finset.univ : Finset TwentyMillionOddFinite19Index)
                twentyMillionOddFinite19OddModulus roots 1 -
              scratchRankDensity
                (Finset.univ : Finset TwentyMillionOddFinite19Index)
                twentyMillionOddFinite19OddModulus roots 2 +
              scratchRankDensity
                (Finset.univ : Finset TwentyMillionOddFinite19Index)
                twentyMillionOddFinite19OddModulus roots 3) / 4) -
          (scratchRankEndpoint
              (Finset.univ : Finset TwentyMillionOddFinite19Index)
              roots 1 +
            scratchRankEndpoint
              (Finset.univ : Finset TwentyMillionOddFinite19Index)
              roots 2 +
            scratchRankEndpoint
              (Finset.univ : Finset TwentyMillionOddFinite19Index)
              roots 3) ≤
        ((noEventPoints points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event).card : Rat) := by
    linarith [h1.2, h2.1, h3.2]
  rw [twentyMillionOddFinite19RankDensity_eq_numerator
      twentyMillionOddFinite19OddModulus
      twentyMillionOddFinite19OddFullModulus
      (Or.inr ⟨rfl, rfl⟩) roots 1 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankDensity_eq_numerator
      twentyMillionOddFinite19OddModulus
      twentyMillionOddFinite19OddFullModulus
      (Or.inr ⟨rfl, rfl⟩) roots 2 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankDensity_eq_numerator
      twentyMillionOddFinite19OddModulus
      twentyMillionOddFinite19OddFullModulus
      (Or.inr ⟨rfl, rfl⟩) roots 3 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 1 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 2 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 3 (by norm_num) (by norm_num)] at hraw
  dsimp [points, event] at hraw ⊢
  have hfullNe :
      (twentyMillionOddFinite19OddFullModulus : Rat) ≠ 0 := by
    norm_num [twentyMillionOddFinite19OddFullModulus]
  rw [twentyMillionOddFinite19NoEventComplementRat_three_eq
      twentyMillionOddFinite19OddModulus
      twentyMillionOddFinite19OddFullModulus
      (fun i => (roots i).card) hfullNe,
    twentyMillionOddFinite19NoEventEndpointRat_three_eq]
  convert hraw using 1 <;> ring

private theorem twentyMillionOddFinite19FixedNoEvent_upper_two
    (length rootFour : Nat)
    (hrootFour : rootFour < 4)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (hrootsZero : roots 0 = ∅)
    (hrootBound : ∀ index, ∀ r ∈ roots index,
      r < twentyMillionOddFinite19OddModulus index) :
    ((noEventPoints
        (twentyMillionOddFinite19FixedFiber length rootFour)
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        (fun index q =>
          q % twentyMillionOddFinite19OddModulus index ∈
            roots index)).card : Rat) ≤
      ((twentyMillionOddFinite19FixedFiber
        length rootFour).card : Rat) -
          (length : Rat) *
            (1 - twentyMillionOddFinite19NoEventDensityRat
              twentyMillionOddFinite19OddModulus
              twentyMillionOddFinite19OddFullModulus
              (fun i => (roots i).card) 2) / 4 +
          twentyMillionOddFinite19NoEventEndpointRat
            (fun i => (roots i).card) 2 := by
  classical
  let points := twentyMillionOddFinite19FixedFiber length rootFour
  let event := fun index q =>
    q % twentyMillionOddFinite19OddModulus index ∈ roots index
  have hbonfInt := noEvent_card_le_bonferroni_two
    points (Finset.univ : Finset TwentyMillionOddFinite19Index) event
  have hbonf :
      ((noEventPoints points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event).card : Rat) ≤
        ((bonferroniIntersectionSum points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event 2 : Int) : Rat) := by
    exact_mod_cast hbonfInt
  have h1 := twentyMillionOddFinite19FixedIntersection_rank_bounds
    length rootFour hrootFour roots hrootsZero hrootBound 1
  have h2 := twentyMillionOddFinite19FixedIntersection_rank_bounds
    length rootFour hrootFour roots hrootsZero hrootBound 2
  have hexpand :
      ((bonferroniIntersectionSum points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event 2 : Int) : Rat) =
        (points.card : Rat) -
          (∑ subset ∈
            (Finset.univ :
              Finset TwentyMillionOddFinite19Index).powersetCard 1,
            ((eventIntersection points event subset).card : Rat)) +
          (∑ subset ∈
            (Finset.univ :
              Finset TwentyMillionOddFinite19Index).powersetCard 2,
            ((eventIntersection points event subset).card : Rat)) := by
    norm_num [bonferroniIntersectionSum, Finset.sum_range_succ,
      eventIntersection]
    ring
  rw [hexpand] at hbonf
  dsimp [points, event] at hbonf
  simp_rw [twentyMillionOddFinite19Fixed_eventIntersection] at hbonf
  have hraw :
      ((noEventPoints points
          (Finset.univ : Finset TwentyMillionOddFinite19Index)
          event).card : Rat) ≤
        (points.card : Rat) -
          (length : Rat) *
            ((scratchRankDensity
                (Finset.univ : Finset TwentyMillionOddFinite19Index)
                twentyMillionOddFinite19OddModulus roots 1 -
              scratchRankDensity
                (Finset.univ : Finset TwentyMillionOddFinite19Index)
                twentyMillionOddFinite19OddModulus roots 2) / 4) +
          (scratchRankEndpoint
              (Finset.univ : Finset TwentyMillionOddFinite19Index)
              roots 1 +
            scratchRankEndpoint
              (Finset.univ : Finset TwentyMillionOddFinite19Index)
              roots 2) := by
    linarith [h1.1, h2.2]
  rw [twentyMillionOddFinite19RankDensity_eq_numerator
      twentyMillionOddFinite19OddModulus
      twentyMillionOddFinite19OddFullModulus
      (Or.inr ⟨rfl, rfl⟩) roots 1 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankDensity_eq_numerator
      twentyMillionOddFinite19OddModulus
      twentyMillionOddFinite19OddFullModulus
      (Or.inr ⟨rfl, rfl⟩) roots 2 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 1 (by norm_num) (by norm_num),
    twentyMillionOddFinite19RankEndpoint_eq
      roots 2 (by norm_num) (by norm_num)] at hraw
  dsimp [points, event] at hraw ⊢
  have hfullNe :
      (twentyMillionOddFinite19OddFullModulus : Rat) ≠ 0 := by
    norm_num [twentyMillionOddFinite19OddFullModulus]
  rw [twentyMillionOddFinite19NoEventComplementRat_two_eq
      twentyMillionOddFinite19OddModulus
      twentyMillionOddFinite19OddFullModulus
      (fun i => (roots i).card) hfullNe,
    twentyMillionOddFinite19NoEventEndpointRat_two_eq]
  convert hraw using 1 <;> ring

private theorem twentyMillionOddFinite19OddPairSurvivor_eq_noEvent
    (length rootFour : Nat)
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pair : Fin 3) :
    (twentyMillionOddFinite19FixedFiber length rootFour).filter
        (fun q => e1FinitePairSurvives
          (twentyMillionOddFinite19OddRootBad roots) pair q) =
      noEventPoints
        (twentyMillionOddFinite19FixedFiber length rootFour)
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        (fun index q =>
          q % twentyMillionOddFinite19OddModulus index ∈
            twentyMillionOddFinite19OddPairRoots
              roots pair index) := by
  classical
  ext q
  fin_cases pair <;>
    simp [e1FinitePairSurvives,
      twentyMillionOddFinite19OddRootBad,
      twentyMillionOddFinite19OddPairRoots,
      twentyMillionOddFinite19FullPairRoots,
      e1FinitePairRootSet, noEventPoints, activeIndices,
      Finset.card_eq_zero,
      twentyMillionOddFinite19OddModulus] <;>
    aesop
  all_goals
    apply a_1 (x := x)
    simp [a_2, a_3]

private theorem twentyMillionOddFinite19OddTripleSurvivor_eq_noEvent
    (length rootFour : Nat)
    (roots : TwentyMillionOddFinite19PivotRootFamily) :
    (twentyMillionOddFinite19FixedFiber length rootFour).filter
        (fun q => e1FiniteTripleSurvives
          (twentyMillionOddFinite19OddRootBad roots) q) =
      noEventPoints
        (twentyMillionOddFinite19FixedFiber length rootFour)
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        (fun index q =>
          q % twentyMillionOddFinite19OddModulus index ∈
            twentyMillionOddFinite19OddTripleRoots roots index) := by
  classical
  ext q
  simp [e1FiniteTripleSurvives,
    twentyMillionOddFinite19OddRootBad,
    twentyMillionOddFinite19OddTripleRoots,
    twentyMillionOddFinite19FullTripleRoots,
    e1FiniteTripleRootSet, noEventPoints, activeIndices,
    Finset.card_eq_zero,
    twentyMillionOddFinite19OddModulus] <;>
    aesop
  all_goals
    apply a_1 (x := x)
    simp [a_2, a_3]

noncomputable def twentyMillionOddFinite19FixedPairUnion
    (length rootFour : Nat)
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pair : Fin 3) : Finset Nat :=
  (twentyMillionOddFinite19FixedFiber length rootFour).filter
    fun q => ¬ e1FinitePairSurvives
      (twentyMillionOddFinite19OddRootBad roots) pair q


theorem twentyMillionOddFinite19FixedPairUnion_card_rat_le
    (length rootFour : Nat) (hrootFour : rootFour < 4)
    (roots : TwentyMillionOddFinite19PivotRootFamily) :
    ((twentyMillionOddFinite19FixedPairUnion length rootFour roots
        (twentyMillionOddFinite19ClosePair
          (twentyMillionOddFinite19RootPatternAt roots 0))).card : Rat) ≤
      (length : Rat) *
        (twentyMillionOddFinite19PairUnionDensityRat
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) / 4) +
        twentyMillionOddFinite19PairUnionEndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) := by
  classical
  let pair := twentyMillionOddFinite19ClosePair
    (twentyMillionOddFinite19RootPatternAt roots 0)
  let points := twentyMillionOddFinite19FixedFiber length rootFour
  let survives := points.filter fun q => e1FinitePairSurvives
    (twentyMillionOddFinite19OddRootBad roots) pair q
  let rejected := points.filter fun q => ¬ e1FinitePairSurvives
    (twentyMillionOddFinite19OddRootBad roots) pair q
  have hlower := twentyMillionOddFinite19FixedNoEvent_lower_three
    length rootFour hrootFour
    (twentyMillionOddFinite19OddPairRoots roots pair)
    (by simp [twentyMillionOddFinite19OddPairRoots])
    (twentyMillionOddFinite19OddPairRoots_bound roots pair)
  rw [← twentyMillionOddFinite19OddPairSurvivor_eq_noEvent] at hlower
  rw [twentyMillionOddFinite19OddPairRoots_cards] at hlower
  have hpartitionNat :
      survives.card + rejected.card = points.card := by
    exact Finset.card_filter_add_card_filter_not
      (s := points)
      (p := fun q => e1FinitePairSurvives
        (twentyMillionOddFinite19OddRootBad roots) pair q)
  have hpartition :
      (survives.card : Rat) + (rejected.card : Rat) =
        (points.card : Rat) := by
    exact_mod_cast hpartitionNat
  dsimp [pair, points, survives, rejected] at hlower hpartition ⊢
  unfold twentyMillionOddFinite19FixedPairUnion
  rw [twentyMillionOddFinite19PairUnionDensityRat_decomposition,
    twentyMillionOddFinite19PairUnionEndpointRat_decomposition]
  ring_nf at hlower ⊢
  linarith

noncomputable def twentyMillionOddFinite19FixedTwoOfThree
    (length rootFour : Nat)
    (roots : TwentyMillionOddFinite19PivotRootFamily) : Finset Nat :=
  (twentyMillionOddFinite19FixedFiber length rootFour).filter
    fun q => 2 ≤ e1FiniteBadCount
      (twentyMillionOddFinite19OddRootBad roots) q


theorem twentyMillionOddFinite19FixedTwoOfThree_card_rat_le
    (length rootFour : Nat) (hrootFour : rootFour < 4)
    (roots : TwentyMillionOddFinite19PivotRootFamily) :
    ((twentyMillionOddFinite19FixedTwoOfThree
        length rootFour roots).card : Rat) ≤
      (length : Rat) *
        (twentyMillionOddFinite19OddTwoOfThreeDensityRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) / 4) +
        twentyMillionOddFinite19OddTwoOfThreeEndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) := by
  classical
  let points := twentyMillionOddFinite19FixedFiber length rootFour
  have hpair : ∀ pair : Fin 3,
      (points.card : Rat) -
          (length : Rat) *
            (1 - twentyMillionOddFinite19NoEventDensityRat
              twentyMillionOddFinite19OddModulus
              twentyMillionOddFinite19OddFullModulus
              (twentyMillionOddFinite19OddPairCards
                (twentyMillionOddFinite19RootPatternAt roots 1)
                (twentyMillionOddFinite19RootPatternAt roots 2)
                (twentyMillionOddFinite19RootPatternAt roots 3)
                (twentyMillionOddFinite19RootPatternAt roots 4)
                (twentyMillionOddFinite19RootPatternAt roots 5)
                (twentyMillionOddFinite19RootPatternAt roots 6) pair) 1) /
              4 -
          twentyMillionOddFinite19NoEventEndpointRat
            (twentyMillionOddFinite19OddPairCards
              (twentyMillionOddFinite19RootPatternAt roots 1)
              (twentyMillionOddFinite19RootPatternAt roots 2)
              (twentyMillionOddFinite19RootPatternAt roots 3)
              (twentyMillionOddFinite19RootPatternAt roots 4)
              (twentyMillionOddFinite19RootPatternAt roots 5)
              (twentyMillionOddFinite19RootPatternAt roots 6) pair) 1 ≤
        ((points.filter fun q => e1FinitePairSurvives
          (twentyMillionOddFinite19OddRootBad roots) pair q).card : Rat) := by
    intro pair
    have h := twentyMillionOddFinite19FixedNoEvent_lower_one
      length rootFour hrootFour
      (twentyMillionOddFinite19OddPairRoots roots pair)
      (by simp [twentyMillionOddFinite19OddPairRoots])
      (twentyMillionOddFinite19OddPairRoots_bound roots pair)
    rw [← twentyMillionOddFinite19OddPairSurvivor_eq_noEvent] at h
    rw [twentyMillionOddFinite19OddPairRoots_cards] at h
    exact h
  have htriple :
      ((points.filter fun q => e1FiniteTripleSurvives
          (twentyMillionOddFinite19OddRootBad roots) q).card : Rat) ≤
        (points.card : Rat) -
          (length : Rat) *
            (1 - twentyMillionOddFinite19NoEventDensityRat
              twentyMillionOddFinite19OddModulus
              twentyMillionOddFinite19OddFullModulus
              (twentyMillionOddFinite19OddTripleCards
                (twentyMillionOddFinite19RootPatternAt roots 1)
                (twentyMillionOddFinite19RootPatternAt roots 2)
                (twentyMillionOddFinite19RootPatternAt roots 3)
                (twentyMillionOddFinite19RootPatternAt roots 4)
                (twentyMillionOddFinite19RootPatternAt roots 5)
                (twentyMillionOddFinite19RootPatternAt roots 6)) 2) / 4 +
          twentyMillionOddFinite19NoEventEndpointRat
            (twentyMillionOddFinite19OddTripleCards
              (twentyMillionOddFinite19RootPatternAt roots 1)
              (twentyMillionOddFinite19RootPatternAt roots 2)
              (twentyMillionOddFinite19RootPatternAt roots 3)
              (twentyMillionOddFinite19RootPatternAt roots 4)
              (twentyMillionOddFinite19RootPatternAt roots 5)
              (twentyMillionOddFinite19RootPatternAt roots 6)) 2 := by
    have h := twentyMillionOddFinite19FixedNoEvent_upper_two
      length rootFour hrootFour
      (twentyMillionOddFinite19OddTripleRoots roots)
      (by simp [twentyMillionOddFinite19OddTripleRoots])
      (twentyMillionOddFinite19OddTripleRoots_bound roots)
    rw [← twentyMillionOddFinite19OddTripleSurvivor_eq_noEvent] at h
    rw [twentyMillionOddFinite19OddTripleRoots_cards] at h
    exact h
  have hpairSum := Finset.sum_le_sum (s := Finset.univ)
    (fun pair _hpair => hpair pair)
  have hidInt := e1FiniteTwoOfThree_card_identity
    points (twentyMillionOddFinite19OddRootBad roots)
  have hidRat :
      (((points.filter fun q =>
        2 ≤ e1FiniteBadCount
          (twentyMillionOddFinite19OddRootBad roots) q).card : Nat) : Rat) =
        (points.card : Rat) -
          (∑ pair : Fin 3,
            ((points.filter fun q => e1FinitePairSurvives
              (twentyMillionOddFinite19OddRootBad roots) pair q).card : Rat)) +
          2 * ((points.filter fun q => e1FiniteTripleSurvives
            (twentyMillionOddFinite19OddRootBad roots) q).card : Rat) := by
    exact_mod_cast hidInt
  dsimp [points] at hpair htriple hpairSum hidRat ⊢
  unfold twentyMillionOddFinite19FixedTwoOfThree
  rw [twentyMillionOddFinite19OddTwoOfThreeDensityRat_decomposition,
    twentyMillionOddFinite19OddTwoOfThreeEndpointRat_decomposition]
  simp only [Fin.sum_univ_succ, Fin.sum_univ_zero, add_zero] at hpairSum htriple hidRat ⊢
  ring_nf at hpairSum htriple hidRat ⊢
  linarith


#print axioms twentyMillionOddFinite19RootAllThree_card_rat_le
#print axioms twentyMillionOddFinite19FixedIntersection_rank_bounds
#print axioms twentyMillionOddFinite19FixedPairUnion_card_rat_le
#print axioms twentyMillionOddFinite19FixedTwoOfThree_card_rat_le

end Erdos848
