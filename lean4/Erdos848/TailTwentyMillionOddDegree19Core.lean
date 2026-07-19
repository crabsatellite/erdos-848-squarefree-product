import Erdos848.ScratchModMem
import Erdos848.TailZModArithmetic

namespace Erdos848

/-!
# Cutoff-19 odd-pivot degree core

For an odd Hall-residual pivot, each of the seven prime squares
`2², 3², 7², 11², 13², 17², 19²` cuts at most one quotient residue from a
mod-25 base progression.  A degree-three Bonferroni lower bound leaves the
exact survivor density recorded below.  This module is purely periodic: it
does not depend on a Hall set or on an analytic tail estimate.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

abbrev TwentyMillionOddDegreePrimeIndex := Fin 7

def twentyMillionOddDegreePrime :
    TwentyMillionOddDegreePrimeIndex -> Nat :=
  ![2, 3, 7, 11, 13, 17, 19]

def twentyMillionOddDegreeModulus :
    TwentyMillionOddDegreePrimeIndex -> Nat :=
  ![4, 9, 49, 121, 169, 289, 361]

theorem twentyMillionOddDegreeModulus_eq_prime_square
    (index : TwentyMillionOddDegreePrimeIndex) :
    twentyMillionOddDegreeModulus index =
      (twentyMillionOddDegreePrime index) ^ 2 := by
  fin_cases index <;>
    norm_num [twentyMillionOddDegreePrime,
      twentyMillionOddDegreeModulus]

theorem twentyMillionOddDegreePrime_prime
    (index : TwentyMillionOddDegreePrimeIndex) :
    Nat.Prime (twentyMillionOddDegreePrime index) := by
  fin_cases index <;> norm_num [twentyMillionOddDegreePrime]

theorem twentyMillionOddDegreeModulus_pos
    (index : TwentyMillionOddDegreePrimeIndex) :
    0 < twentyMillionOddDegreeModulus index := by
  fin_cases index <;> norm_num [twentyMillionOddDegreeModulus]

theorem twentyMillionOddDegreeModulus_pairwise_coprime
    (i j : TwentyMillionOddDegreePrimeIndex) (hij : i ≠ j) :
    Nat.Coprime (twentyMillionOddDegreeModulus i)
      (twentyMillionOddDegreeModulus j) := by
  fin_cases i <;> fin_cases j <;>
    simp_all [twentyMillionOddDegreeModulus] <;> norm_num

def twentyMillionOddDegreeRootEquation
    (index : TwentyMillionOddDegreePrimeIndex)
    (baseResidue pivot : Nat)
    (q : Fin (twentyMillionOddDegreeModulus index)) : Prop :=
  (pivot : ZMod (twentyMillionOddDegreeModulus index)) *
      ((25 : ZMod (twentyMillionOddDegreeModulus index)) *
        (q.val : ZMod (twentyMillionOddDegreeModulus index)) +
          baseResidue) + 1 = 0

noncomputable def twentyMillionOddDegreeRoot
    (index : TwentyMillionOddDegreePrimeIndex)
    (baseResidue pivot : Nat) :
    Fin (twentyMillionOddDegreeModulus index) := by
  classical
  exact if h : ∃ q,
      twentyMillionOddDegreeRootEquation index baseResidue pivot q then
    Classical.choose h
  else
    ⟨0, twentyMillionOddDegreeModulus_pos index⟩

private theorem twentyMillionOddDegreeTwentyFive_unit
    (index : TwentyMillionOddDegreePrimeIndex) :
    ∃ inverse : ZMod (twentyMillionOddDegreeModulus index),
      inverse * 25 = 1 := by
  fin_cases index
  · exact ⟨1, by decide⟩
  · exact ⟨4, by decide⟩
  · exact ⟨2, by decide⟩
  · exact ⟨92, by decide⟩
  · exact ⟨142, by decide⟩
  · exact ⟨185, by decide⟩
  · exact ⟨130, by decide⟩

theorem twentyMillionOddDegreeRoot_eq_of_equation
    {index : TwentyMillionOddDegreePrimeIndex}
    {baseResidue pivot : Nat}
    {q : Fin (twentyMillionOddDegreeModulus index)}
    (hq :
      twentyMillionOddDegreeRootEquation index baseResidue pivot q) :
    twentyMillionOddDegreeRoot index baseResidue pivot = q := by
  classical
  rw [twentyMillionOddDegreeRoot, dif_pos ⟨q, hq⟩]
  have hchosen := Classical.choose_spec
    (show ∃ r,
      twentyMillionOddDegreeRootEquation index baseResidue pivot r from
        ⟨q, hq⟩)
  have haffine := mul_add_one_right_unique hchosen hq
  letI : NeZero (twentyMillionOddDegreeModulus index) :=
    ⟨Nat.ne_of_gt (twentyMillionOddDegreeModulus_pos index)⟩
  apply fin_eq_of_zmod_val_eq
  obtain ⟨inverse, hinverse⟩ :=
    twentyMillionOddDegreeTwentyFive_unit index
  exact affine_eq_of_unit_coefficient hinverse haffine

theorem twentyMillionOddDegreeRoot_classifies
    {index : TwentyMillionOddDegreePrimeIndex}
    {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent :
      (twentyMillionOddDegreePrime index) ^ 2 ∣
        pivot * point + 1) :
    (point / 25) % twentyMillionOddDegreeModulus index =
      (twentyMillionOddDegreeRoot index baseResidue pivot).val := by
  have hequation := zmod_base_quotient_equation_of_event
    (modulus := twentyMillionOddDegreeModulus index) hpoint
      (by
        simpa [twentyMillionOddDegreeModulus_eq_prime_square] using
          hevent)
  let q :
      Fin (twentyMillionOddDegreeModulus index) :=
    ⟨(point / 25) % twentyMillionOddDegreeModulus index,
      Nat.mod_lt _ (twentyMillionOddDegreeModulus_pos index)⟩
  have hcast :
      ((q.val : Nat) : ZMod (twentyMillionOddDegreeModulus index)) =
        ((point / 25 : Nat) :
          ZMod (twentyMillionOddDegreeModulus index)) := by
    dsimp [q]
    simpa [ZMod.val_natCast] using
      (ZMod.natCast_zmod_val
        ((point / 25 : Nat) :
          ZMod (twentyMillionOddDegreeModulus index)))
  rw [← hcast] at hequation
  change twentyMillionOddDegreeRootEquation
    index baseResidue pivot q at hequation
  have hroot :=
    (twentyMillionOddDegreeRoot_eq_of_equation hequation).symm
  exact congrArg Fin.val hroot

noncomputable def twentyMillionOddDegreeRootSet
    (baseResidue pivot : Nat)
    (index : TwentyMillionOddDegreePrimeIndex) : Finset Nat :=
  {(twentyMillionOddDegreeRoot index baseResidue pivot).val}

noncomputable def twentyMillionEvenDegreeRootSet
    (baseResidue pivot : Nat)
    (index : TwentyMillionOddDegreePrimeIndex) : Finset Nat :=
  if index = 0 then ∅
  else twentyMillionOddDegreeRootSet baseResidue pivot index

theorem twentyMillionOddDegreeRootSet_bound
    (baseResidue pivot : Nat)
    (index : TwentyMillionOddDegreePrimeIndex) {root : Nat}
    (hroot :
      root ∈ twentyMillionOddDegreeRootSet baseResidue pivot index) :
    root < twentyMillionOddDegreeModulus index := by
  simp only [twentyMillionOddDegreeRootSet,
    Finset.mem_singleton] at hroot
  subst root
  exact (twentyMillionOddDegreeRoot index baseResidue pivot).isLt

theorem twentyMillionEvenDegreeRootSet_bound
    (baseResidue pivot : Nat)
    (index : TwentyMillionOddDegreePrimeIndex) {root : Nat}
    (hroot :
      root ∈ twentyMillionEvenDegreeRootSet baseResidue pivot index) :
    root < twentyMillionOddDegreeModulus index := by
  by_cases hzero : index = 0
  · simp [twentyMillionEvenDegreeRootSet, hzero] at hroot
  · exact twentyMillionOddDegreeRootSet_bound
      baseResidue pivot index
      (by
        simpa [twentyMillionEvenDegreeRootSet, hzero] using hroot)

def twentyMillionOddDegreeSubsets1 :
    Finset (Finset TwentyMillionOddDegreePrimeIndex) :=
  {{0}, {1}, {2}, {3}, {4}, {5}, {6}}

theorem twentyMillionOddDegree_powersetCard_1 :
    (Finset.univ :
      Finset TwentyMillionOddDegreePrimeIndex).powersetCard 1 =
        twentyMillionOddDegreeSubsets1 := by
  decide

def twentyMillionOddDegreeSubsets2 :
    Finset (Finset TwentyMillionOddDegreePrimeIndex) :=
  {{0, 1}, {0, 2}, {0, 3}, {0, 4}, {0, 5}, {0, 6},
    {1, 2}, {1, 3}, {1, 4}, {1, 5}, {1, 6},
    {2, 3}, {2, 4}, {2, 5}, {2, 6},
    {3, 4}, {3, 5}, {3, 6}, {4, 5}, {4, 6}, {5, 6}}

theorem twentyMillionOddDegree_powersetCard_2 :
    (Finset.univ :
      Finset TwentyMillionOddDegreePrimeIndex).powersetCard 2 =
        twentyMillionOddDegreeSubsets2 := by
  decide

def twentyMillionOddDegreeSubsets3 :
    Finset (Finset TwentyMillionOddDegreePrimeIndex) :=
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

theorem twentyMillionOddDegree_powersetCard_3 :
    (Finset.univ :
      Finset TwentyMillionOddDegreePrimeIndex).powersetCard 3 =
        twentyMillionOddDegreeSubsets3 := by
  decide

private theorem twentyMillionOddDegreeRankDensity_one
    (baseResidue pivot : Nat) :
    scratchRankDensity
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        twentyMillionOddDegreeModulus
        (twentyMillionOddDegreeRootSet baseResidue pivot) 1 =
      (1512611530873 : Rat) / 3763359443844 := by
  unfold scratchRankDensity
  rw [twentyMillionOddDegree_powersetCard_1]
  simp (disch := decide)
    [twentyMillionOddDegreeSubsets1, scratchRootDensity,
      twentyMillionOddDegreeRootSet, twentyMillionOddDegreeModulus]
  ring

private theorem twentyMillionOddDegreeRankDensity_two
    (baseResidue pivot : Nat) :
    scratchRankDensity
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        twentyMillionOddDegreeModulus
        (twentyMillionOddDegreeRootSet baseResidue pivot) 2 =
      (162132199074 : Rat) / 3763359443844 := by
  unfold scratchRankDensity
  rw [twentyMillionOddDegree_powersetCard_2]
  simp (disch := decide)
    [twentyMillionOddDegreeSubsets2, scratchRootDensity,
      twentyMillionOddDegreeRootSet, twentyMillionOddDegreeModulus]
  ring

private theorem twentyMillionOddDegreeRankDensity_three
    (baseResidue pivot : Nat) :
    scratchRankDensity
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        twentyMillionOddDegreeModulus
        (twentyMillionOddDegreeRootSet baseResidue pivot) 3 =
      (5045848095 : Rat) / 3763359443844 := by
  unfold scratchRankDensity
  rw [twentyMillionOddDegree_powersetCard_3]
  simp (disch := decide)
    [twentyMillionOddDegreeSubsets3, scratchRootDensity,
      twentyMillionOddDegreeRootSet, twentyMillionOddDegreeModulus]
  ring

private theorem twentyMillionOddDegreeRankEndpoint_one
    (baseResidue pivot : Nat) :
    scratchRankEndpoint
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        (twentyMillionOddDegreeRootSet baseResidue pivot) 1 = 7 := by
  unfold scratchRankEndpoint
  rw [twentyMillionOddDegree_powersetCard_1]
  simp [twentyMillionOddDegreeSubsets1, scratchRootEndpoint,
    twentyMillionOddDegreeRootSet]

private theorem twentyMillionOddDegreeRankEndpoint_two
    (baseResidue pivot : Nat) :
    scratchRankEndpoint
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        (twentyMillionOddDegreeRootSet baseResidue pivot) 2 = 21 := by
  unfold scratchRankEndpoint
  rw [twentyMillionOddDegree_powersetCard_2]
  have hcard : twentyMillionOddDegreeSubsets2.card = 21 := by
    decide
  simpa [scratchRootEndpoint, twentyMillionOddDegreeRootSet, hcard]

private theorem twentyMillionOddDegreeRankEndpoint_three
    (baseResidue pivot : Nat) :
    scratchRankEndpoint
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        (twentyMillionOddDegreeRootSet baseResidue pivot) 3 = 35 := by
  unfold scratchRankEndpoint
  rw [twentyMillionOddDegree_powersetCard_3]
  have hcard : twentyMillionOddDegreeSubsets3.card = 35 := by
    decide
  simpa [scratchRootEndpoint, twentyMillionOddDegreeRootSet, hcard]

private theorem twentyMillionEvenDegreeRankDensity_one
    (baseResidue pivot : Nat) :
    scratchRankDensity
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        twentyMillionOddDegreeModulus
        (twentyMillionEvenDegreeRootSet baseResidue pivot) 1 =
      (142942917478 : Rat) / 940839860961 := by
  unfold scratchRankDensity
  rw [twentyMillionOddDegree_powersetCard_1]
  simp (disch := decide)
    [twentyMillionOddDegreeSubsets1, scratchRootDensity,
      twentyMillionEvenDegreeRootSet, twentyMillionOddDegreeRootSet,
      twentyMillionOddDegreeModulus]
  ring

private theorem twentyMillionEvenDegreeRankDensity_two
    (baseResidue pivot : Nat) :
    scratchRankDensity
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        twentyMillionOddDegreeModulus
        (twentyMillionEvenDegreeRootSet baseResidue pivot) 2 =
      (4797320399 : Rat) / 940839860961 := by
  unfold scratchRankDensity
  rw [twentyMillionOddDegree_powersetCard_2]
  simp (disch := decide)
    [twentyMillionOddDegreeSubsets2, scratchRootDensity,
      twentyMillionEvenDegreeRootSet, twentyMillionOddDegreeRootSet,
      twentyMillionOddDegreeModulus]
  ring

private theorem twentyMillionEvenDegreeRankDensity_three
    (baseResidue pivot : Nat) :
    scratchRankDensity
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        twentyMillionOddDegreeModulus
        (twentyMillionEvenDegreeRootSet baseResidue pivot) 3 =
      (62131924 : Rat) / 940839860961 := by
  unfold scratchRankDensity
  rw [twentyMillionOddDegree_powersetCard_3]
  simp (disch := decide)
    [twentyMillionOddDegreeSubsets3, scratchRootDensity,
      twentyMillionEvenDegreeRootSet, twentyMillionOddDegreeRootSet,
      twentyMillionOddDegreeModulus]
  ring

private theorem twentyMillionEvenDegreeRankEndpoint_one
    (baseResidue pivot : Nat) :
    scratchRankEndpoint
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        (twentyMillionEvenDegreeRootSet baseResidue pivot) 1 = 6 := by
  unfold scratchRankEndpoint
  rw [twentyMillionOddDegree_powersetCard_1]
  simp (disch := decide)
    [twentyMillionOddDegreeSubsets1, scratchRootEndpoint,
      twentyMillionEvenDegreeRootSet, twentyMillionOddDegreeRootSet]
  norm_num

private theorem twentyMillionEvenDegreeRankEndpoint_two
    (baseResidue pivot : Nat) :
    scratchRankEndpoint
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        (twentyMillionEvenDegreeRootSet baseResidue pivot) 2 = 15 := by
  unfold scratchRankEndpoint
  rw [twentyMillionOddDegree_powersetCard_2]
  simp (disch := decide)
    [twentyMillionOddDegreeSubsets2, scratchRootEndpoint,
      twentyMillionEvenDegreeRootSet, twentyMillionOddDegreeRootSet]
  norm_num

private theorem twentyMillionEvenDegreeRankEndpoint_three
    (baseResidue pivot : Nat) :
    scratchRankEndpoint
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        (twentyMillionEvenDegreeRootSet baseResidue pivot) 3 = 20 := by
  unfold scratchRankEndpoint
  rw [twentyMillionOddDegree_powersetCard_3]
  simp (disch := decide)
    [twentyMillionOddDegreeSubsets3, scratchRootEndpoint,
      twentyMillionEvenDegreeRootSet, twentyMillionOddDegreeRootSet]
  norm_num

noncomputable def twentyMillionOddDegreeNoEventQuotients
    (length baseResidue pivot : Nat) : Finset Nat :=
  noEventPoints (Finset.range length)
    (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
    (fun index q =>
      q % twentyMillionOddDegreeModulus index ∈
        twentyMillionOddDegreeRootSet baseResidue pivot index)

theorem twentyMillionOddDegreeNoEventQuotients_card_lower
    (length baseResidue pivot : Nat) :
    (length : Rat) *
          (1203917131975 : Rat) / 1881679721922 - 63 ≤
      ((twentyMillionOddDegreeNoEventQuotients
        length baseResidue pivot).card : Rat) := by
  have h := scratch_noEvent_lower_three
    length
    (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
    twentyMillionOddDegreeModulus
    (twentyMillionOddDegreeRootSet baseResidue pivot)
    (by
      intro index _hindex
      exact twentyMillionOddDegreeModulus_pos index)
    (by
      intro i _hi j _hj hij
      exact twentyMillionOddDegreeModulus_pairwise_coprime i j hij)
    (by
      intro index _hindex root hroot
      exact twentyMillionOddDegreeRootSet_bound
        baseResidue pivot index hroot)
  rw [twentyMillionOddDegreeRankDensity_one,
    twentyMillionOddDegreeRankDensity_two,
    twentyMillionOddDegreeRankDensity_three,
    twentyMillionOddDegreeRankEndpoint_one,
    twentyMillionOddDegreeRankEndpoint_two,
    twentyMillionOddDegreeRankEndpoint_three] at h
  norm_num [twentyMillionOddDegreeNoEventQuotients] at h ⊢
  nlinarith

noncomputable def twentyMillionEvenDegreeNoEventQuotients
    (length baseResidue pivot : Nat) : Finset Nat :=
  noEventPoints (Finset.range length)
    (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
    (fun index q =>
      q % twentyMillionOddDegreeModulus index ∈
        twentyMillionEvenDegreeRootSet baseResidue pivot index)

theorem twentyMillionEvenDegreeNoEventQuotients_card_lower
    (length baseResidue pivot : Nat) :
    (length : Rat) *
          (267544043986 : Rat) / 313613286987 - 41 ≤
      ((twentyMillionEvenDegreeNoEventQuotients
        length baseResidue pivot).card : Rat) := by
  have h := scratch_noEvent_lower_three
    length
    (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
    twentyMillionOddDegreeModulus
    (twentyMillionEvenDegreeRootSet baseResidue pivot)
    (by
      intro index _hindex
      exact twentyMillionOddDegreeModulus_pos index)
    (by
      intro i _hi j _hj hij
      exact twentyMillionOddDegreeModulus_pairwise_coprime i j hij)
    (by
      intro index _hindex root hroot
      exact twentyMillionEvenDegreeRootSet_bound
        baseResidue pivot index hroot)
  rw [twentyMillionEvenDegreeRankDensity_one,
    twentyMillionEvenDegreeRankDensity_two,
    twentyMillionEvenDegreeRankDensity_three,
    twentyMillionEvenDegreeRankEndpoint_one,
    twentyMillionEvenDegreeRankEndpoint_two,
    twentyMillionEvenDegreeRankEndpoint_three] at h
  norm_num [twentyMillionEvenDegreeNoEventQuotients] at h ⊢
  nlinarith

noncomputable def twentyMillionOddDegreeSmallGoodPoints
    (N baseResidue pivot : Nat) : Finset Nat :=
  (twentyMillionOddDegreeNoEventQuotients
      (N / 25) baseResidue pivot).image
    (fun q => baseResidue + 25 * q)

theorem twentyMillionOddDegreeSmallGoodPoints_card
    (N baseResidue pivot : Nat) :
    (twentyMillionOddDegreeSmallGoodPoints
      N baseResidue pivot).card =
      (twentyMillionOddDegreeNoEventQuotients
        (N / 25) baseResidue pivot).card := by
  unfold twentyMillionOddDegreeSmallGoodPoints
  exact Finset.card_image_iff.mpr (by
    intro x _hx y _hy hxy
    simpa using hxy)

theorem twentyMillionOddDegreeSmallGoodPoints_card_lower
    (N baseResidue pivot : Nat) :
    (((N / 25 : Nat) : Rat) *
          (1203917131975 : Rat) / 1881679721922 - 63) ≤
      ((twentyMillionOddDegreeSmallGoodPoints
        N baseResidue pivot).card : Rat) := by
  rw [twentyMillionOddDegreeSmallGoodPoints_card]
  exact twentyMillionOddDegreeNoEventQuotients_card_lower
    (N / 25) baseResidue pivot

noncomputable def twentyMillionEvenDegreeSmallGoodPoints
    (N baseResidue pivot : Nat) : Finset Nat :=
  (twentyMillionEvenDegreeNoEventQuotients
      (N / 25) baseResidue pivot).image
    (fun q => baseResidue + 25 * q)

theorem twentyMillionEvenDegreeSmallGoodPoints_card
    (N baseResidue pivot : Nat) :
    (twentyMillionEvenDegreeSmallGoodPoints
      N baseResidue pivot).card =
      (twentyMillionEvenDegreeNoEventQuotients
        (N / 25) baseResidue pivot).card := by
  unfold twentyMillionEvenDegreeSmallGoodPoints
  exact Finset.card_image_iff.mpr (by
    intro x _hx y _hy hxy
    simpa using hxy)

theorem twentyMillionEvenDegreeSmallGoodPoints_card_lower
    (N baseResidue pivot : Nat) :
    (((N / 25 : Nat) : Rat) *
          (267544043986 : Rat) / 313613286987 - 41) ≤
      ((twentyMillionEvenDegreeSmallGoodPoints
        N baseResidue pivot).card : Rat) := by
  rw [twentyMillionEvenDegreeSmallGoodPoints_card]
  exact twentyMillionEvenDegreeNoEventQuotients_card_lower
    (N / 25) baseResidue pivot

#print axioms twentyMillionOddDegreeRoot_classifies
#print axioms twentyMillionOddDegreeNoEventQuotients_card_lower
#print axioms twentyMillionOddDegreeSmallGoodPoints_card_lower
#print axioms twentyMillionEvenDegreeNoEventQuotients_card_lower
#print axioms twentyMillionEvenDegreeSmallGoodPoints_card_lower

end Erdos848
