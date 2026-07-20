import Erdos848.TailTwentyMillionOddFinite19Checker
import Erdos848.TailTwentyMillionOddDegree19Core
import Erdos848.TailR263EvenOneFinite23Count

namespace Erdos848

/-!
# Semantic root families for the cutoff-19 odd certificates

The reflected certificate records only equality patterns.  This file gives
those patterns their literal meaning as three total quotient-root families.
Prime two is retained in the full family and erased in the odd-prime family.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

abbrev TwentyMillionOddFinite19PivotRootFamily :=
  ∀ _pivot : Fin 3, ∀ index : TwentyMillionOddFinite19Index,
    Fin (twentyMillionOddFinite19Modulus index)

def twentyMillionOddFinite19RootNat
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pivot : Fin 3) (index : TwentyMillionOddFinite19Index) : Nat :=
  (roots pivot index).val

def twentyMillionOddFinite19RootBad
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pivot : Fin 3) (q : Nat) : Prop :=
  ∃ index : TwentyMillionOddFinite19Index,
    q % twentyMillionOddFinite19Modulus index =
      twentyMillionOddFinite19RootNat roots pivot index

def twentyMillionOddFinite19OddRootBad
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pivot : Fin 3) (q : Nat) : Prop :=
  ∃ index : TwentyMillionOddFinite19Index, index ≠ 0 ∧
    q % twentyMillionOddFinite19OddModulus index =
      twentyMillionOddFinite19RootNat roots pivot index

def twentyMillionOddFinite19RootPatternAt
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (index : TwentyMillionOddFinite19Index) : E1FiniteRootPattern :=
  e1FiniteRootPatternOf
    (twentyMillionOddFinite19RootNat roots 0 index)
    (twentyMillionOddFinite19RootNat roots 1 index)
    (twentyMillionOddFinite19RootNat roots 2 index)

def twentyMillionOddFinite19FullSingleRoots
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pivot : Fin 3) (index : TwentyMillionOddFinite19Index) : Finset Nat :=
  {twentyMillionOddFinite19RootNat roots pivot index}

def twentyMillionOddFinite19FullPairRoots
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pair : Fin 3) (index : TwentyMillionOddFinite19Index) : Finset Nat :=
  e1FinitePairRootSet pair
    (twentyMillionOddFinite19RootNat roots 0 index)
    (twentyMillionOddFinite19RootNat roots 1 index)
    (twentyMillionOddFinite19RootNat roots 2 index)

def twentyMillionOddFinite19FullTripleRoots
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (index : TwentyMillionOddFinite19Index) : Finset Nat :=
  e1FiniteTripleRootSet
    (twentyMillionOddFinite19RootNat roots 0 index)
    (twentyMillionOddFinite19RootNat roots 1 index)
    (twentyMillionOddFinite19RootNat roots 2 index)

def twentyMillionOddFinite19OddSingleRoots
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pivot : Fin 3) (index : TwentyMillionOddFinite19Index) : Finset Nat :=
  if index = 0 then ∅
  else twentyMillionOddFinite19FullSingleRoots roots pivot index

def twentyMillionOddFinite19OddPairRoots
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pair : Fin 3) (index : TwentyMillionOddFinite19Index) : Finset Nat :=
  if index = 0 then ∅
  else twentyMillionOddFinite19FullPairRoots roots pair index

def twentyMillionOddFinite19OddTripleRoots
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (index : TwentyMillionOddFinite19Index) : Finset Nat :=
  if index = 0 then ∅
  else twentyMillionOddFinite19FullTripleRoots roots index

theorem twentyMillionOddFinite19FullSingleRoots_cards
    (roots : TwentyMillionOddFinite19PivotRootFamily) (pivot : Fin 3) :
    (fun index =>
      (twentyMillionOddFinite19FullSingleRoots roots pivot index).card) =
        twentyMillionOddFinite19SingletonCards := by
  funext index
  simp [twentyMillionOddFinite19FullSingleRoots,
    twentyMillionOddFinite19SingletonCards]

theorem twentyMillionOddFinite19FullPairRoots_cards
    (roots : TwentyMillionOddFinite19PivotRootFamily) (pair : Fin 3) :
    (fun index =>
      (twentyMillionOddFinite19FullPairRoots roots pair index).card) =
        twentyMillionOddFinite19FullPairCards
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) pair := by
  funext index
  fin_cases index <;>
    simpa [twentyMillionOddFinite19FullPairRoots,
      twentyMillionOddFinite19RootPatternAt,
      twentyMillionOddFinite19FullPairCards] using
        (e1FinitePairRootSet_card pair _ _ _)

theorem twentyMillionOddFinite19FullTripleRoots_cards
    (roots : TwentyMillionOddFinite19PivotRootFamily) :
    (fun index =>
      (twentyMillionOddFinite19FullTripleRoots roots index).card) =
        twentyMillionOddFinite19FullTripleCards
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) := by
  funext index
  fin_cases index <;>
    simpa [twentyMillionOddFinite19FullTripleRoots,
      twentyMillionOddFinite19RootPatternAt,
      twentyMillionOddFinite19FullTripleCards] using
        (e1FiniteTripleRootSet_card _ _ _)

theorem twentyMillionOddFinite19OddPairRoots_cards
    (roots : TwentyMillionOddFinite19PivotRootFamily) (pair : Fin 3) :
    (fun index =>
      (twentyMillionOddFinite19OddPairRoots roots pair index).card) =
        twentyMillionOddFinite19OddPairCards
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) pair := by
  funext index
  fin_cases index <;>
    simp [twentyMillionOddFinite19OddPairRoots,
      twentyMillionOddFinite19FullPairRoots,
      twentyMillionOddFinite19RootPatternAt,
      twentyMillionOddFinite19OddPairCards,
      e1FinitePairRootSet_card]

theorem twentyMillionOddFinite19OddTripleRoots_cards
    (roots : TwentyMillionOddFinite19PivotRootFamily) :
    (fun index =>
      (twentyMillionOddFinite19OddTripleRoots roots index).card) =
        twentyMillionOddFinite19OddTripleCards
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) := by
  funext index
  fin_cases index <;>
    simp [twentyMillionOddFinite19OddTripleRoots,
      twentyMillionOddFinite19FullTripleRoots,
      twentyMillionOddFinite19RootPatternAt,
      twentyMillionOddFinite19OddTripleCards,
      e1FiniteTripleRootSet_card]

private theorem twentyMillionOddFinite19Root_bound
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pivot : Fin 3) (index : TwentyMillionOddFinite19Index) :
    twentyMillionOddFinite19RootNat roots pivot index <
      twentyMillionOddFinite19Modulus index :=
  (roots pivot index).isLt

theorem twentyMillionOddFinite19FullSingleRoots_bound
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pivot : Fin 3) (index : TwentyMillionOddFinite19Index)
    {r : Nat}
    (hr : r ∈ twentyMillionOddFinite19FullSingleRoots roots pivot index) :
    r < twentyMillionOddFinite19Modulus index := by
  simp only [twentyMillionOddFinite19FullSingleRoots,
    Finset.mem_singleton] at hr
  subst r
  exact twentyMillionOddFinite19Root_bound roots pivot index

theorem twentyMillionOddFinite19FullPairRoots_bound
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pair : Fin 3) (index : TwentyMillionOddFinite19Index)
    {r : Nat}
    (hr : r ∈ twentyMillionOddFinite19FullPairRoots roots pair index) :
    r < twentyMillionOddFinite19Modulus index := by
  fin_cases pair <;>
    simp [twentyMillionOddFinite19FullPairRoots,
      e1FinitePairRootSet] at hr <;>
    rcases hr with rfl | rfl <;>
    exact twentyMillionOddFinite19Root_bound roots _ index

theorem twentyMillionOddFinite19FullTripleRoots_bound
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (index : TwentyMillionOddFinite19Index) {r : Nat}
    (hr : r ∈ twentyMillionOddFinite19FullTripleRoots roots index) :
    r < twentyMillionOddFinite19Modulus index := by
  simp [twentyMillionOddFinite19FullTripleRoots,
    e1FiniteTripleRootSet] at hr
  rcases hr with rfl | rfl | rfl <;>
    exact twentyMillionOddFinite19Root_bound roots _ index

theorem twentyMillionOddFinite19OddPairRoots_bound
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pair : Fin 3) (index : TwentyMillionOddFinite19Index)
    {r : Nat}
    (hr : r ∈ twentyMillionOddFinite19OddPairRoots roots pair index) :
    r < twentyMillionOddFinite19OddModulus index := by
  by_cases hzero : index = 0
  · subst index
    simp [twentyMillionOddFinite19OddPairRoots] at hr
  · have hfull :=
      twentyMillionOddFinite19FullPairRoots_bound roots pair index
        (by simpa [twentyMillionOddFinite19OddPairRoots, hzero] using hr)
    have hmod :
        twentyMillionOddFinite19OddModulus index =
          twentyMillionOddFinite19Modulus index := by
      fin_cases index <;>
        simp_all [twentyMillionOddFinite19OddModulus,
          twentyMillionOddFinite19Modulus]
    simpa [hmod] using hfull

theorem twentyMillionOddFinite19OddTripleRoots_bound
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (index : TwentyMillionOddFinite19Index) {r : Nat}
    (hr : r ∈ twentyMillionOddFinite19OddTripleRoots roots index) :
    r < twentyMillionOddFinite19OddModulus index := by
  by_cases hzero : index = 0
  · subst index
    simp [twentyMillionOddFinite19OddTripleRoots] at hr
  · have hfull :=
      twentyMillionOddFinite19FullTripleRoots_bound roots index
        (by simpa [twentyMillionOddFinite19OddTripleRoots, hzero] using hr)
    have hmod :
        twentyMillionOddFinite19OddModulus index =
          twentyMillionOddFinite19Modulus index := by
      fin_cases index <;>
        simp_all [twentyMillionOddFinite19OddModulus,
          twentyMillionOddFinite19Modulus]
    simpa [hmod] using hfull

theorem twentyMillionOddFinite19RankDensity_eq_numerator
    (modulus : TwentyMillionOddFinite19Index → Nat)
    (fullModulus : Nat)
    (hmodulus :
      modulus = twentyMillionOddFinite19Modulus ∧
        fullModulus = twentyMillionOddFinite19FullModulus ∨
      modulus = twentyMillionOddFinite19OddModulus ∧
        fullModulus = twentyMillionOddFinite19OddFullModulus)
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (rank : Nat) (hrank : 1 ≤ rank) (hrankUpper : rank ≤ 3) :
    scratchRankDensity
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        modulus roots rank =
      (twentyMillionOddFinite19RankNumerator modulus fullModulus
          (fun i => (roots i).card) rank : Rat) / fullModulus := by
  have hfull :
      fullModulus =
        ∏ index : TwentyMillionOddFinite19Index, modulus index := by
    rcases hmodulus with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ <;>
      decide
  have hfullPos : 0 < fullModulus := by
    rcases hmodulus with ⟨_hm, rfl⟩ | ⟨_hm, rfl⟩ <;>
      norm_num [twentyMillionOddFinite19FullModulus,
        twentyMillionOddFinite19OddFullModulus]
  have hterm :
      ∀ subset ∈
          (Finset.univ :
            Finset TwentyMillionOddFinite19Index).powersetCard rank,
        scratchRootDensity modulus roots subset =
          (((fullModulus /
                (∏ index ∈ subset, modulus index) : Nat) : Rat) *
              (∏ index ∈ subset, ((roots index).card : Rat))) /
            fullModulus := by
    intro subset hsubset
    have hsub : subset ⊆
        (Finset.univ : Finset TwentyMillionOddFinite19Index) :=
      (Finset.mem_powersetCard.mp hsubset).1
    have hdvd :
        (∏ index ∈ subset, modulus index) ∣ fullModulus := by
      rw [hfull]
      exact Finset.prod_dvd_prod_of_subset subset Finset.univ modulus hsub
    unfold scratchRootDensity
    rw [Finset.prod_map_toList, Nat.cast_div_charZero hdvd]
    have hfullNe : (fullModulus : Rat) ≠ 0 := by
      exact_mod_cast (Nat.ne_of_gt hfullPos)
    field_simp [hfullNe]
    push_cast
    rfl
  unfold scratchRankDensity twentyMillionOddFinite19RankNumerator
  push_cast
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro subset hsubset
  exact hterm subset hsubset

theorem twentyMillionOddFinite19RankEndpoint_eq
    (roots : TwentyMillionOddFinite19Index → Finset Nat)
    (rank : Nat) (hrank : 1 ≤ rank) (hrankUpper : rank ≤ 3) :
    scratchRankEndpoint
        (Finset.univ : Finset TwentyMillionOddFinite19Index)
        roots rank =
      (twentyMillionOddFinite19RankEndpoint
          (fun i => (roots i).card) rank : Rat) := by
  unfold scratchRankEndpoint twentyMillionOddFinite19RankEndpoint
    scratchRootEndpoint
  simp only [Finset.prod_map_toList]
  push_cast
  rfl

#print axioms twentyMillionOddFinite19FullPairRoots_cards
#print axioms twentyMillionOddFinite19OddPairRoots_cards
#print axioms twentyMillionOddFinite19RankDensity_eq_numerator
#print axioms twentyMillionOddFinite19RankEndpoint_eq

end Erdos848
