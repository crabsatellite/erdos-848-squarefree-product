import Erdos848.TailR263EvenOneFinite23Semantics
import Erdos848.ScratchModMem

namespace Erdos848

/-!
# Exact CRT rank sums for the E1 cutoff-23 finite certificate

The full modulus and every rank-one, rank-two, and rank-three coefficient are
expanded once here.  These equalities are the semantic bridge from the
integer arithmetic checked by the generated certificate to literal CRT
counts on an arbitrary prefix.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def e1FiniteSubsets1 : Finset (Finset E1FinitePrimeIndex) :=
  {{0}, {1}, {2}, {3}, {4}, {5}, {6}}

theorem e1Finite_powersetCard_1 :
    (Finset.univ : Finset E1FinitePrimeIndex).powersetCard 1 =
      e1FiniteSubsets1 := by
  decide

def e1FiniteSubsets2 : Finset (Finset E1FinitePrimeIndex) :=
  {{0, 1}, {0, 2}, {0, 3}, {0, 4}, {0, 5}, {0, 6},
    {1, 2}, {1, 3}, {1, 4}, {1, 5}, {1, 6},
    {2, 3}, {2, 4}, {2, 5}, {2, 6},
    {3, 4}, {3, 5}, {3, 6}, {4, 5}, {4, 6}, {5, 6}}

theorem e1Finite_powersetCard_2 :
    (Finset.univ : Finset E1FinitePrimeIndex).powersetCard 2 =
      e1FiniteSubsets2 := by
  decide

def e1FiniteSubsets3 : Finset (Finset E1FinitePrimeIndex) :=
  {{0, 1, 2}, {0, 1, 3}, {0, 1, 4}, {0, 1, 5}, {0, 1, 6},
    {0, 2, 3}, {0, 2, 4}, {0, 2, 5}, {0, 2, 6},
    {0, 3, 4}, {0, 3, 5}, {0, 3, 6},
    {0, 4, 5}, {0, 4, 6}, {0, 5, 6},
    {1, 2, 3}, {1, 2, 4}, {1, 2, 5}, {1, 2, 6},
    {1, 3, 4}, {1, 3, 5}, {1, 3, 6},
    {1, 4, 5}, {1, 4, 6}, {1, 5, 6},
    {2, 3, 4}, {2, 3, 5}, {2, 3, 6},
    {2, 4, 5}, {2, 4, 6}, {2, 5, 6},
    {3, 4, 5}, {3, 4, 6}, {3, 5, 6}, {4, 5, 6}}

theorem e1Finite_powersetCard_3 :
    (Finset.univ : Finset E1FinitePrimeIndex).powersetCard 3 =
      e1FiniteSubsets3 := by
  decide

theorem e1FiniteRankDensity_eq_numerator
    (roots : E1FinitePrimeIndex -> Finset Nat) (rank : Nat)
    (hrank : 1 <= rank) (hrankUpper : rank <= 3) :
    scratchRankDensity (Finset.univ : Finset E1FinitePrimeIndex)
        e1FiniteModulus roots rank =
      (e1FiniteRankNumerator (fun i => (roots i).card) rank : Rat) /
        e1FiniteFullModulus := by
  interval_cases rank <;> unfold scratchRankDensity
  · rw [e1Finite_powersetCard_1]
    simp (disch := decide) [e1FiniteSubsets1, scratchRootDensity,
      e1FiniteRankNumerator, e1FiniteFullModulus, e1FiniteModulus]
    ring
  · rw [e1Finite_powersetCard_2]
    simp (disch := decide) [e1FiniteSubsets2, scratchRootDensity,
      e1FiniteRankNumerator, e1FiniteFullModulus, e1FiniteModulus]
    ring
  · rw [e1Finite_powersetCard_3]
    simp (disch := decide) [e1FiniteSubsets3, scratchRootDensity,
      e1FiniteRankNumerator, e1FiniteFullModulus, e1FiniteModulus]
    ring

theorem e1FiniteRankEndpoint_eq
    (roots : E1FinitePrimeIndex -> Finset Nat) (rank : Nat)
    (hrank : 1 <= rank) (hrankUpper : rank <= 3) :
    scratchRankEndpoint (Finset.univ : Finset E1FinitePrimeIndex)
        roots rank =
      (e1FiniteRankEndpoint (fun i => (roots i).card) rank : Rat) := by
  interval_cases rank <;> unfold scratchRankEndpoint
  · rw [e1Finite_powersetCard_1]
    simp (disch := decide) [e1FiniteSubsets1, scratchRootEndpoint,
      e1FiniteRankEndpoint]
    ring
  · rw [e1Finite_powersetCard_2]
    simp (disch := decide) [e1FiniteSubsets2, scratchRootEndpoint,
      e1FiniteRankEndpoint]
    ring
  · rw [e1Finite_powersetCard_3]
    simp (disch := decide) [e1FiniteSubsets3, scratchRootEndpoint,
      e1FiniteRankEndpoint]
    ring

section MissingBonferroniDegrees

variable {κ : Type*} [DecidableEq κ]

theorem scratch_noEvent_lower_one
    (length : Nat) (indices : Finset κ) (modulus : κ -> Nat)
    (roots : κ -> Finset Nat)
    (hpositive : ∀ i ∈ indices, 0 < modulus i)
    (hcoprime : ∀ i ∈ indices, ∀ j ∈ indices, i ≠ j ->
      Nat.Coprime (modulus i) (modulus j))
    (hrootBound : ∀ i ∈ indices, ∀ r ∈ roots i, r < modulus i) :
    (length : Rat) *
          (1 - scratchRankDensity indices modulus roots 1) -
        scratchRankEndpoint indices roots 1 <=
      ((noEventPoints (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i)).card : Rat) := by
  classical
  have hbonfInt := bonferroni_one_le_noEvent_card
    (Finset.range length) indices
      (fun i q => q % modulus i ∈ roots i)
  have hbonf :
      ((bonferroniIntersectionSum (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i) 1 : Int) : Rat) <=
      ((noEventPoints (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i)).card : Rat) := by
    exact_mod_cast hbonfInt
  have h1 := scratch_intersection_rank_bounds
    length indices modulus roots 1 hpositive hcoprime hrootBound
  have hexpand :
      ((bonferroniIntersectionSum (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i) 1 : Int) : Rat) =
      (length : Rat) -
        (∑ subset ∈ indices.powersetCard 1,
          ((eventIntersection (Finset.range length)
            (fun i q => q % modulus i ∈ roots i) subset).card : Rat)) := by
    norm_num [bonferroniIntersectionSum, Finset.sum_range_succ,
      eventIntersection]
    ring
  rw [hexpand] at hbonf
  linarith

theorem scratch_noEvent_upper_two
    (length : Nat) (indices : Finset κ) (modulus : κ -> Nat)
    (roots : κ -> Finset Nat)
    (hpositive : ∀ i ∈ indices, 0 < modulus i)
    (hcoprime : ∀ i ∈ indices, ∀ j ∈ indices, i ≠ j ->
      Nat.Coprime (modulus i) (modulus j))
    (hrootBound : ∀ i ∈ indices, ∀ r ∈ roots i, r < modulus i) :
    ((noEventPoints (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i)).card : Rat) <=
      (length : Rat) *
          (1 - scratchRankDensity indices modulus roots 1 +
            scratchRankDensity indices modulus roots 2) +
        (scratchRankEndpoint indices roots 1 +
          scratchRankEndpoint indices roots 2) := by
  classical
  have hbonfInt := noEvent_card_le_bonferroni_two
    (Finset.range length) indices
      (fun i q => q % modulus i ∈ roots i)
  have hbonf :
      ((noEventPoints (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i)).card : Rat) <=
      ((bonferroniIntersectionSum (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i) 2 : Int) : Rat) := by
    exact_mod_cast hbonfInt
  have h1 := scratch_intersection_rank_bounds
    length indices modulus roots 1 hpositive hcoprime hrootBound
  have h2 := scratch_intersection_rank_bounds
    length indices modulus roots 2 hpositive hcoprime hrootBound
  have hexpand :
      ((bonferroniIntersectionSum (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i) 2 : Int) : Rat) =
      (length : Rat) -
        (∑ subset ∈ indices.powersetCard 1,
          ((eventIntersection (Finset.range length)
            (fun i q => q % modulus i ∈ roots i) subset).card : Rat)) +
        (∑ subset ∈ indices.powersetCard 2,
          ((eventIntersection (Finset.range length)
            (fun i q => q % modulus i ∈ roots i) subset).card : Rat)) := by
    norm_num [bonferroniIntersectionSum, Finset.sum_range_succ,
      eventIntersection]
    ring
  rw [hexpand] at hbonf
  linarith

end MissingBonferroniDegrees

noncomputable def e1FiniteAllThreeDensityRat
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Rat :=
  (e1FiniteAllThreeNumerator p3 p7 p11 p13 p17 p19 p23 : Rat) /
    e1FiniteFullModulus

def e1FiniteAllThreeEndpointRat
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Rat :=
  e1FiniteAllThreeEndpoint p3 p7 p11 p13 p17 p19 p23

noncomputable def e1FiniteTwoOfThreeDensityRat
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Rat :=
  (e1FiniteTwoOfThreeNumerator p3 p7 p11 p13 p17 p19 p23 : Rat) /
    e1FiniteFullModulus

def e1FiniteTwoOfThreeEndpointRat
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Rat :=
  e1FiniteTwoOfThreeEndpoint p3 p7 p11 p13 p17 p19 p23

noncomputable def e1FiniteNoEventDensityRat
    (cards : E1FinitePrimeIndex -> Nat) (degree : Nat) : Rat :=
  (e1FiniteNoEventNumerator cards degree : Rat) / e1FiniteFullModulus

def e1FiniteNoEventEndpointRat
    (cards : E1FinitePrimeIndex -> Nat) (degree : Nat) : Rat :=
  e1FiniteNoEventEndpoint cards degree

theorem e1FiniteAllThreeDensityRat_decomposition
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 =
      1 - 3 * e1FiniteNoEventDensityRat e1FiniteSingletonCards 3 +
        (∑ pair : Fin 3,
          e1FiniteNoEventDensityRat
            (e1FinitePairCards p3 p7 p11 p13 p17 p19 p23 pair) 2) -
        e1FiniteNoEventDensityRat
          (e1FiniteTripleCards p3 p7 p11 p13 p17 p19 p23) 3 := by
  norm_num [e1FiniteAllThreeDensityRat, e1FiniteNoEventDensityRat,
    e1FiniteAllThreeNumerator, e1FiniteFullModulus]
  rw [← Finset.sum_div]
  ring

theorem e1FiniteAllThreeEndpointRat_decomposition
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    e1FiniteAllThreeEndpointRat p3 p7 p11 p13 p17 p19 p23 =
      3 * e1FiniteNoEventEndpointRat e1FiniteSingletonCards 3 +
        (∑ pair : Fin 3,
          e1FiniteNoEventEndpointRat
            (e1FinitePairCards p3 p7 p11 p13 p17 p19 p23 pair) 2) +
        e1FiniteNoEventEndpointRat
          (e1FiniteTripleCards p3 p7 p11 p13 p17 p19 p23) 3 := by
  norm_num [e1FiniteAllThreeEndpointRat, e1FiniteNoEventEndpointRat,
    e1FiniteAllThreeEndpoint]

theorem e1FiniteTwoOfThreeDensityRat_decomposition
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    e1FiniteTwoOfThreeDensityRat p3 p7 p11 p13 p17 p19 p23 =
      1 - (∑ pair : Fin 3,
        e1FiniteNoEventDensityRat
          (e1FinitePairCards p3 p7 p11 p13 p17 p19 p23 pair) 1) +
        2 * e1FiniteNoEventDensityRat
          (e1FiniteTripleCards p3 p7 p11 p13 p17 p19 p23) 2 := by
  norm_num [e1FiniteTwoOfThreeDensityRat, e1FiniteNoEventDensityRat,
    e1FiniteTwoOfThreeNumerator, e1FiniteFullModulus]
  rw [← Finset.sum_div]
  ring

theorem e1FiniteTwoOfThreeEndpointRat_decomposition
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    e1FiniteTwoOfThreeEndpointRat p3 p7 p11 p13 p17 p19 p23 =
      (∑ pair : Fin 3,
        e1FiniteNoEventEndpointRat
          (e1FinitePairCards p3 p7 p11 p13 p17 p19 p23 pair) 1) +
        2 * e1FiniteNoEventEndpointRat
          (e1FiniteTripleCards p3 p7 p11 p13 p17 p19 p23) 2 := by
  norm_num [e1FiniteTwoOfThreeEndpointRat, e1FiniteNoEventEndpointRat,
    e1FiniteTwoOfThreeEndpoint]

#print axioms e1FiniteRankDensity_eq_numerator
#print axioms e1FiniteRankEndpoint_eq
#print axioms scratch_noEvent_lower_one
#print axioms scratch_noEvent_upper_two
#print axioms e1FiniteAllThreeDensityRat_decomposition
#print axioms e1FiniteTwoOfThreeDensityRat_decomposition

end Erdos848
