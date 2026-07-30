import Erdos848.ScratchModMem
import Erdos848.TailR263EvenThreeTail
import Erdos848.TailZModArithmetic
import Erdos848.TailGlobalMixedEvenFinite95

namespace Erdos848

/-!
# Direct cutoff-19 finite certificate for the E3 cell

The Hall cut is unchanged.  On each of the two mod-25 base progressions the
six finite prime-square coordinates are `3, 7, 11, 13, 17, 19`.  Three E3
pivots in one mod-nine cell have a common mod-nine root.  The remaining five
coordinates have only the five equality partitions of three roots.  A
degree-three lower Bonferroni bound for the three pair-survivor sets and a
degree-four upper bound for the triple-survivor set give the uniform finite
payment used by the terminal.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

abbrev E3FinitePrimeIndex := Fin 6

def e3FinitePrime : E3FinitePrimeIndex -> Nat :=
  ![3, 7, 11, 13, 17, 19]

def e3FiniteModulus : E3FinitePrimeIndex -> Nat :=
  ![9, 49, 121, 169, 289, 361]

theorem e3FiniteModulus_eq_prime_square (i : E3FinitePrimeIndex) :
    e3FiniteModulus i = (e3FinitePrime i) ^ 2 := by
  fin_cases i <;> norm_num [e3FinitePrime, e3FiniteModulus]

theorem e3FinitePrime_prime (i : E3FinitePrimeIndex) :
    Nat.Prime (e3FinitePrime i) := by
  fin_cases i <;> norm_num [e3FinitePrime]

theorem e3FiniteModulus_pos (i : E3FinitePrimeIndex) :
    0 < e3FiniteModulus i := by
  fin_cases i <;> norm_num [e3FiniteModulus]

theorem e3FiniteModulus_pairwise_coprime
    (i j : E3FinitePrimeIndex) (hij : i ≠ j) :
    Nat.Coprime (e3FiniteModulus i) (e3FiniteModulus j) := by
  fin_cases i <;> fin_cases j <;>
    simp_all [e3FiniteModulus] <;> norm_num

def e3FiniteRootEquation
    (index : E3FinitePrimeIndex) (baseResidue pivot : Nat)
    (q : Fin (e3FiniteModulus index)) : Prop :=
  (pivot : ZMod (e3FiniteModulus index)) *
      ((25 : ZMod (e3FiniteModulus index)) *
        (q.val : ZMod (e3FiniteModulus index)) + baseResidue) + 1 = 0

noncomputable def e3FiniteRoot
    (index : E3FinitePrimeIndex) (baseResidue pivot : Nat) :
    Fin (e3FiniteModulus index) := by
  classical
  exact if h : exists q, e3FiniteRootEquation index baseResidue pivot q then
    Classical.choose h
  else ⟨0, e3FiniteModulus_pos index⟩

private theorem e3FiniteTwentyFive_unit
    (index : E3FinitePrimeIndex) :
    exists inverse : ZMod (e3FiniteModulus index), inverse * 25 = 1 := by
  fin_cases index
  · exact ⟨4, by decide⟩
  · exact ⟨2, by decide⟩
  · exact ⟨92, by decide⟩
  · exact ⟨142, by decide⟩
  · exact ⟨185, by decide⟩
  · exact ⟨130, by decide⟩

theorem e3FiniteRoot_eq_of_equation
    {index : E3FinitePrimeIndex} {baseResidue pivot : Nat}
    {q : Fin (e3FiniteModulus index)}
    (hq : e3FiniteRootEquation index baseResidue pivot q) :
    e3FiniteRoot index baseResidue pivot = q := by
  classical
  rw [e3FiniteRoot, dif_pos ⟨q, hq⟩]
  have hchosen := Classical.choose_spec
    (show exists r, e3FiniteRootEquation index baseResidue pivot r from
      ⟨q, hq⟩)
  have haffine := mul_add_one_right_unique hchosen hq
  letI : NeZero (e3FiniteModulus index) :=
    ⟨Nat.ne_of_gt (e3FiniteModulus_pos index)⟩
  apply fin_eq_of_zmod_val_eq
  obtain ⟨inverse, hinverse⟩ := e3FiniteTwentyFive_unit index
  exact affine_eq_of_unit_coefficient hinverse haffine

theorem e3FiniteRoot_classifies
    {index : E3FinitePrimeIndex} {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent : (e3FinitePrime index) ^ 2 ∣ pivot * point + 1) :
    (⟨(point / 25) % e3FiniteModulus index,
      Nat.mod_lt _ (e3FiniteModulus_pos index)⟩ :
        Fin (e3FiniteModulus index)) =
      e3FiniteRoot index baseResidue pivot := by
  have hequation := zmod_base_quotient_equation_of_event
    (modulus := e3FiniteModulus index) hpoint
      (by simpa [e3FiniteModulus_eq_prime_square] using hevent)
  have hcast :
      (((((point / 25) % e3FiniteModulus index) : Nat) :
        ZMod (e3FiniteModulus index))) =
        ((point / 25 : Nat) : ZMod (e3FiniteModulus index)) := by
    simpa [ZMod.val_natCast] using
      (ZMod.natCast_zmod_val
        ((point / 25 : Nat) : ZMod (e3FiniteModulus index)))
  rw [← hcast] at hequation
  change e3FiniteRootEquation index baseResidue pivot
    ⟨(point / 25) % e3FiniteModulus index,
      Nat.mod_lt _ (e3FiniteModulus_pos index)⟩ at hequation
  exact (e3FiniteRoot_eq_of_equation hequation).symm

def e3FinitePrimes19 : Finset Nat := {3, 7, 11, 13, 17, 19}

@[simp] theorem mem_e3FinitePrimes19 {p : Nat} :
    p ∈ e3FinitePrimes19 <->
      p = 3 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17 ∨ p = 19 := by
  simp [e3FinitePrimes19]

theorem finiteSquarePrimeEvent_iff_evenValuationPrime19
    {N pivot point : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivot : pivot ∈ fiveMillionValuationPart N B valuation)
    (hpoint : point ∈ lowBaseSet N) :
    finiteSquarePrimeEvent 19 pivot point ↔
      ∃ p ∈ e3FinitePrimes19, p ^ 2 ∣ pivot * point + 1 := by
  constructor
  · rintro ⟨p, hpPrime, hpCut, hpDiv⟩
    have hpNotTwo : p ≠ 2 := by
      intro hp
      subst p
      exact two_square_not_dvd_even_form
        (even_of_mem_evenValuationPart hvaluation hpivot) hpDiv
    have hpNotFive : p ≠ 5 := by
      intro hp
      subst p
      exact five_square_not_dvd_residual_base hBout
        (fiveMillionValuationPart_subset_residual N B valuation hpivot)
        hpoint hpDiv
    have hpTwoLe : 2 ≤ p := hpPrime.two_le
    have hpCases : p = 3 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17 ∨ p = 19 := by
      interval_cases p <;>
        norm_num at hpPrime <;>
        omega
    exact ⟨p, mem_e3FinitePrimes19.mpr hpCases, hpDiv⟩
  · rintro ⟨p, hpFinite, hpDiv⟩
    have hpCases := mem_e3FinitePrimes19.mp hpFinite
    rcases hpCases with rfl | rfl | rfl | rfl | rfl | rfl <;>
      exact ⟨_, by norm_num, by norm_num, hpDiv⟩

#print axioms e3FiniteRoot_eq_of_equation
#print axioms e3FiniteRoot_classifies
#print axioms finiteSquarePrimeEvent_iff_evenValuationPrime19

end Erdos848
