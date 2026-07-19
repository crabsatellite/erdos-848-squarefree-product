import Erdos848.ScratchModMem
import Erdos848.TailR263EvenOneTail23
import Erdos848.TailZModArithmetic

namespace Erdos848

/-!
# Cutoff-23 finite root coordinates for the R263 E1 branch

This is the literal finite part of the unchanged Hall cut.  On either
mod-25 base progression, every even-valuation finite event through 23 is one
of the seven prime-square coordinates below.  The quotient root is unique;
the later finite certificates therefore enumerate equality patterns of these
roots, not arithmetic points.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

abbrev E1FinitePrimeIndex := Fin 7

def e1FinitePrime : E1FinitePrimeIndex -> Nat :=
  ![3, 7, 11, 13, 17, 19, 23]

def e1FiniteModulus : E1FinitePrimeIndex -> Nat :=
  ![9, 49, 121, 169, 289, 361, 529]

theorem e1FiniteModulus_eq_prime_square (i : E1FinitePrimeIndex) :
    e1FiniteModulus i = (e1FinitePrime i) ^ 2 := by
  fin_cases i <;> norm_num [e1FinitePrime, e1FiniteModulus]

theorem e1FinitePrime_prime (i : E1FinitePrimeIndex) :
    Nat.Prime (e1FinitePrime i) := by
  fin_cases i <;> norm_num [e1FinitePrime]

theorem e1FiniteModulus_pos (i : E1FinitePrimeIndex) :
    0 < e1FiniteModulus i := by
  fin_cases i <;> norm_num [e1FiniteModulus]

theorem e1FiniteModulus_pairwise_coprime
    (i j : E1FinitePrimeIndex) (hij : i ≠ j) :
    Nat.Coprime (e1FiniteModulus i) (e1FiniteModulus j) := by
  fin_cases i <;> fin_cases j <;>
    simp_all [e1FiniteModulus] <;> norm_num

def e1FiniteRootEquation
    (index : E1FinitePrimeIndex) (baseResidue pivot : Nat)
    (q : Fin (e1FiniteModulus index)) : Prop :=
  (pivot : ZMod (e1FiniteModulus index)) *
      ((25 : ZMod (e1FiniteModulus index)) *
        (q.val : ZMod (e1FiniteModulus index)) + baseResidue) + 1 = 0

noncomputable def e1FiniteRoot
    (index : E1FinitePrimeIndex) (baseResidue pivot : Nat) :
    Fin (e1FiniteModulus index) := by
  classical
  exact if h : exists q, e1FiniteRootEquation index baseResidue pivot q then
    Classical.choose h
  else ⟨0, e1FiniteModulus_pos index⟩

private theorem e1FiniteTwentyFive_unit
    (index : E1FinitePrimeIndex) :
    exists inverse : ZMod (e1FiniteModulus index), inverse * 25 = 1 := by
  fin_cases index
  · exact ⟨4, by decide⟩
  · exact ⟨2, by decide⟩
  · exact ⟨92, by decide⟩
  · exact ⟨142, by decide⟩
  · exact ⟨185, by decide⟩
  · exact ⟨130, by decide⟩
  · exact ⟨127, by decide⟩

theorem e1FiniteRoot_eq_of_equation
    {index : E1FinitePrimeIndex} {baseResidue pivot : Nat}
    {q : Fin (e1FiniteModulus index)}
    (hq : e1FiniteRootEquation index baseResidue pivot q) :
    e1FiniteRoot index baseResidue pivot = q := by
  classical
  rw [e1FiniteRoot, dif_pos ⟨q, hq⟩]
  have hchosen := Classical.choose_spec
    (show exists r, e1FiniteRootEquation index baseResidue pivot r from
      ⟨q, hq⟩)
  have haffine := mul_add_one_right_unique hchosen hq
  letI : NeZero (e1FiniteModulus index) :=
    ⟨Nat.ne_of_gt (e1FiniteModulus_pos index)⟩
  apply fin_eq_of_zmod_val_eq
  obtain ⟨inverse, hinverse⟩ := e1FiniteTwentyFive_unit index
  exact affine_eq_of_unit_coefficient hinverse haffine

theorem e1FiniteRoot_classifies
    {index : E1FinitePrimeIndex} {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent : (e1FinitePrime index) ^ 2 ∣ pivot * point + 1) :
    (⟨(point / 25) % e1FiniteModulus index,
      Nat.mod_lt _ (e1FiniteModulus_pos index)⟩ :
        Fin (e1FiniteModulus index)) =
      e1FiniteRoot index baseResidue pivot := by
  have hequation := zmod_base_quotient_equation_of_event
    (modulus := e1FiniteModulus index) hpoint
      (by simpa [e1FiniteModulus_eq_prime_square] using hevent)
  have hcast :
      (((((point / 25) % e1FiniteModulus index) : Nat) :
        ZMod (e1FiniteModulus index))) =
        ((point / 25 : Nat) : ZMod (e1FiniteModulus index)) := by
    simpa [ZMod.val_natCast] using
      (ZMod.natCast_zmod_val
        ((point / 25 : Nat) : ZMod (e1FiniteModulus index)))
  rw [← hcast] at hequation
  change e1FiniteRootEquation index baseResidue pivot
    ⟨(point / 25) % e1FiniteModulus index,
      Nat.mod_lt _ (e1FiniteModulus_pos index)⟩ at hequation
  exact (e1FiniteRoot_eq_of_equation hequation).symm

def e1FinitePrimes23 : Finset Nat := {3, 7, 11, 13, 17, 19, 23}

@[simp] theorem mem_e1FinitePrimes23 {p : Nat} :
    p ∈ e1FinitePrimes23 <->
      p = 3 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17 ∨ p = 19 ∨ p = 23 := by
  simp [e1FinitePrimes23]

theorem finiteSquarePrimeEvent_iff_evenValuationPrime23
    {N pivot point : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivot : pivot ∈ fiveMillionValuationPart N B valuation)
    (hpoint : point ∈ lowBaseSet N) :
    finiteSquarePrimeEvent 23 pivot point <->
      ∃ p ∈ e1FinitePrimes23, p ^ 2 ∣ pivot * point + 1 := by
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
    have hpTwoLe : 2 <= p := hpPrime.two_le
    have hpCases :
        p = 3 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17 ∨ p = 19 ∨ p = 23 := by
      interval_cases p <;> norm_num at hpPrime <;> omega
    exact ⟨p, mem_e1FinitePrimes23.mpr hpCases, hpDiv⟩
  · rintro ⟨p, hpFinite, hpDiv⟩
    have hpCases := mem_e1FinitePrimes23.mp hpFinite
    rcases hpCases with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      exact ⟨_, by norm_num, by norm_num, hpDiv⟩

#print axioms e1FiniteRoot_eq_of_equation
#print axioms e1FiniteRoot_classifies
#print axioms finiteSquarePrimeEvent_iff_evenValuationPrime23

end Erdos848
