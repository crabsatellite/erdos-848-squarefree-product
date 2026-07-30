import Erdos848.TailTenMillionEvenFinite23PairRootCover
import Erdos848.TailTenMillionEvenFinite23Checker

namespace Erdos848

/-!
# Turning an actual close pair into the cutoff-23 certificate premise

The external enumerator only supplies the finite pattern inequality.  The
lemmas below prove inside Lean that every prime selected by the pattern
contributes its square to the literal pivot distance.  The common factor
four comes from the shared even valuation class.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem tenMillionFinite23Modulus_dvd_dist_of_mod_eq
    {modulus left right : Nat}
    (hmod : left % modulus = right % modulus) :
    modulus ∣ Nat.dist left right := by
  have hmodEq : left ≡ right [MOD modulus] := by
    simpa [Nat.ModEq] using hmod
  rcases le_total left right with hlr | hrl
  · rw [Nat.dist_eq_sub_of_le hlr]
    exact (Nat.modEq_iff_dvd' hlr).mp hmodEq
  · rw [Nat.dist_eq_sub_of_le_right hrl]
    exact (Nat.modEq_iff_dvd' hrl).mp hmodEq.symm

theorem tenMillionFinite23PatternPairCard_eq_one_iff
    (roots : E1FinitePivotRootFamily) (pair : Fin 3)
    (index : E1FinitePrimeIndex) :
    e1FinitePatternPairCard
        (e1FiniteRootPatternAt roots index) pair = 1 ↔
      roots (tenMillionFinite23PairLeft pair) index =
        roots (tenMillionFinite23PairRight pair) index := by
  fin_cases pair
  all_goals
    by_cases h01 : roots 0 index = roots 1 index <;>
      by_cases h02 : roots 0 index = roots 2 index <;>
        by_cases h12 : roots 1 index = roots 2 index <;>
          simp_all [tenMillionFinite23PairLeft,
            tenMillionFinite23PairRight, e1FiniteRootPatternAt,
            e1FiniteRootNat, e1FiniteRootPatternOf,
            e1FinitePatternPairCard, Fin.ext_iff]

def tenMillionFinite23PairFactorAt
    (roots : E1FinitePivotRootFamily) (pair : Fin 3)
    (index : E1FinitePrimeIndex) : Nat :=
  tenMillionEvenFinite23PairFactor
    (e1FinitePrime index) (e1FiniteRootPatternAt roots index) pair

private theorem tenMillionFinite23PairFactorAt_square_dvd_dist
    {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (roots : E1FinitePivotRootFamily) (pair : Fin 3)
    (hmodFaithful : ∀ index,
      roots (tenMillionFinite23PairLeft pair) index =
          roots (tenMillionFinite23PairRight pair) index →
        globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairLeft pair) %
            e1FiniteModulus index =
          globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairRight pair) %
            e1FiniteModulus index)
    (index : E1FinitePrimeIndex) :
    tenMillionFinite23PairFactorAt roots pair index ^ 2 ∣
      Nat.dist
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair))
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair)) := by
  unfold tenMillionFinite23PairFactorAt
    tenMillionEvenFinite23PairFactor e1FinitePatternPairFactor
  split
  · rename_i hcardOne
    have hroots :=
      (tenMillionFinite23PatternPairCard_eq_one_iff
        roots pair index).mp hcardOne
    have hmod := hmodFaithful index hroots
    have hdvd := tenMillionFinite23Modulus_dvd_dist_of_mod_eq hmod
    simpa [e1FiniteModulus_eq_prime_square] using hdvd
  · simp

private theorem tenMillionFinite23Prime_injective :
    Function.Injective e1FinitePrime := by
  intro i j hij
  fin_cases i <;> fin_cases j <;>
    simp_all [e1FinitePrime]

private theorem tenMillionFinite23PairFactors_coprime
    (roots : E1FinitePivotRootFamily) (pair : Fin 3)
    (i j : E1FinitePrimeIndex) (hij : i ≠ j) :
    Nat.Coprime
      (tenMillionFinite23PairFactorAt roots pair i ^ 2)
      (tenMillionFinite23PairFactorAt roots pair j ^ 2) := by
  have hprimeNe : e1FinitePrime i ≠ e1FinitePrime j :=
    fun h => hij (tenMillionFinite23Prime_injective h)
  have hprimeCoprime :
      Nat.Coprime (e1FinitePrime i) (e1FinitePrime j) :=
    (Nat.coprime_primes
      (e1FinitePrime_prime i) (e1FinitePrime_prime j)).mpr hprimeNe
  unfold tenMillionFinite23PairFactorAt
    tenMillionEvenFinite23PairFactor e1FinitePatternPairFactor
  split <;> split
  · exact hprimeCoprime.pow 2 2
  · simp
  · simp
  · simp

theorem e1FinitePairProduct_square_dvd_dist_of_mod
    {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (roots : E1FinitePivotRootFamily) (pair : Fin 3)
    (hmodFaithful : ∀ index,
      roots (tenMillionFinite23PairLeft pair) index =
          roots (tenMillionFinite23PairRight pair) index →
        globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairLeft pair) %
            e1FiniteModulus index =
          globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairRight pair) %
            e1FiniteModulus index) :
    tenMillionEvenFinite23PairProduct pair
        (e1FiniteRootPatternAt roots 0)
        (e1FiniteRootPatternAt roots 1)
        (e1FiniteRootPatternAt roots 2)
        (e1FiniteRootPatternAt roots 3)
        (e1FiniteRootPatternAt roots 4)
        (e1FiniteRootPatternAt roots 5)
        (e1FiniteRootPatternAt roots 6) ^ 2 ∣
      Nat.dist
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair))
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair)) := by
  let distance := Nat.dist
    (globalMixedThreePivotAt pivots hcard
      (tenMillionFinite23PairLeft pair))
    (globalMixedThreePivotAt pivots hcard
      (tenMillionFinite23PairRight pair))
  let f0 := tenMillionFinite23PairFactorAt roots pair 0
  let f1 := tenMillionFinite23PairFactorAt roots pair 1
  let f2 := tenMillionFinite23PairFactorAt roots pair 2
  let f3 := tenMillionFinite23PairFactorAt roots pair 3
  let f4 := tenMillionFinite23PairFactorAt roots pair 4
  let f5 := tenMillionFinite23PairFactorAt roots pair 5
  let f6 := tenMillionFinite23PairFactorAt roots pair 6
  have hdvd (index : E1FinitePrimeIndex) :
      tenMillionFinite23PairFactorAt roots pair index ^ 2 ∣ distance := by
    exact tenMillionFinite23PairFactorAt_square_dvd_dist
      roots pair hmodFaithful index
  have hcop (i j : E1FinitePrimeIndex) (hij : i ≠ j) :
      Nat.Coprime
        (tenMillionFinite23PairFactorAt roots pair i ^ 2)
        (tenMillionFinite23PairFactorAt roots pair j ^ 2) :=
    tenMillionFinite23PairFactors_coprime roots pair i j hij
  have h01 : f0 ^ 2 * f1 ^ 2 ∣ distance :=
    (hcop 0 1 (by decide)).mul_dvd_of_dvd_of_dvd (hdvd 0) (hdvd 1)
  have h012 : (f0 ^ 2 * f1 ^ 2) * f2 ^ 2 ∣ distance :=
    ((hcop 0 2 (by decide)).mul_left
      (hcop 1 2 (by decide))).mul_dvd_of_dvd_of_dvd h01 (hdvd 2)
  have h0123 : ((f0 ^ 2 * f1 ^ 2) * f2 ^ 2) * f3 ^ 2 ∣
      distance :=
    (((hcop 0 3 (by decide)).mul_left
      (hcop 1 3 (by decide))).mul_left
      (hcop 2 3 (by decide))).mul_dvd_of_dvd_of_dvd h012 (hdvd 3)
  have h01234 :
      (((f0 ^ 2 * f1 ^ 2) * f2 ^ 2) * f3 ^ 2) * f4 ^ 2 ∣
        distance :=
    ((((hcop 0 4 (by decide)).mul_left
      (hcop 1 4 (by decide))).mul_left
      (hcop 2 4 (by decide))).mul_left
      (hcop 3 4 (by decide))).mul_dvd_of_dvd_of_dvd h0123 (hdvd 4)
  have h012345 :
      ((((f0 ^ 2 * f1 ^ 2) * f2 ^ 2) * f3 ^ 2) * f4 ^ 2) *
          f5 ^ 2 ∣ distance :=
    (((((hcop 0 5 (by decide)).mul_left
      (hcop 1 5 (by decide))).mul_left
      (hcop 2 5 (by decide))).mul_left
      (hcop 3 5 (by decide))).mul_left
      (hcop 4 5 (by decide))).mul_dvd_of_dvd_of_dvd h01234 (hdvd 5)
  have h0123456 :
      (((((f0 ^ 2 * f1 ^ 2) * f2 ^ 2) * f3 ^ 2) * f4 ^ 2) *
          f5 ^ 2) * f6 ^ 2 ∣ distance :=
    ((((((hcop 0 6 (by decide)).mul_left
      (hcop 1 6 (by decide))).mul_left
      (hcop 2 6 (by decide))).mul_left
      (hcop 3 6 (by decide))).mul_left
      (hcop 4 6 (by decide))).mul_left
      (hcop 5 6 (by decide))).mul_dvd_of_dvd_of_dvd h012345 (hdvd 6)
  have hfactor :
      (f0 * f1 * f2 * f3 * f4 * f5 * f6) ^ 2 =
        (((((f0 ^ 2 * f1 ^ 2) * f2 ^ 2) * f3 ^ 2) * f4 ^ 2) *
          f5 ^ 2) * f6 ^ 2 := by
    ring
  rw [← hfactor] at h0123456
  simpa [distance, f0, f1, f2, f3, f4, f5, f6,
    tenMillionFinite23PairFactorAt,
    tenMillionEvenFinite23PairProduct,
    e1FinitePatternPairProduct,
    tenMillionEvenFinite23PairFactor,
    e1FinitePatternPairFactor, e1FinitePrime] using h0123456

private theorem tenMillionFinite23PairFactorAt_odd
    (roots : E1FinitePivotRootFamily) (pair : Fin 3)
    (index : E1FinitePrimeIndex) :
    Odd (tenMillionFinite23PairFactorAt roots pair index) := by
  unfold tenMillionFinite23PairFactorAt
    tenMillionEvenFinite23PairFactor e1FinitePatternPairFactor
  split
  · fin_cases index
    · exact ⟨1, by norm_num [e1FinitePrime]⟩
    · exact ⟨3, by norm_num [e1FinitePrime]⟩
    · exact ⟨5, by norm_num [e1FinitePrime]⟩
    · exact ⟨6, by norm_num [e1FinitePrime]⟩
    · exact ⟨8, by norm_num [e1FinitePrime]⟩
    · exact ⟨9, by norm_num [e1FinitePrime]⟩
    · exact ⟨11, by norm_num [e1FinitePrime]⟩
  · simp

theorem tenMillionFinite23PairProduct_odd
    (roots : E1FinitePivotRootFamily) (pair : Fin 3) :
    Odd (tenMillionEvenFinite23PairProduct pair
      (e1FiniteRootPatternAt roots 0)
      (e1FiniteRootPatternAt roots 1)
      (e1FiniteRootPatternAt roots 2)
      (e1FiniteRootPatternAt roots 3)
      (e1FiniteRootPatternAt roots 4)
      (e1FiniteRootPatternAt roots 5)
      (e1FiniteRootPatternAt roots 6)) := by
  have h01 := (tenMillionFinite23PairFactorAt_odd roots pair 0).mul
    (tenMillionFinite23PairFactorAt_odd roots pair 1)
  have h012 := h01.mul
    (tenMillionFinite23PairFactorAt_odd roots pair 2)
  have h0123 := h012.mul
    (tenMillionFinite23PairFactorAt_odd roots pair 3)
  have h01234 := h0123.mul
    (tenMillionFinite23PairFactorAt_odd roots pair 4)
  have h012345 := h01234.mul
    (tenMillionFinite23PairFactorAt_odd roots pair 5)
  have h0123456 := h012345.mul
    (tenMillionFinite23PairFactorAt_odd roots pair 6)
  simpa [tenMillionFinite23PairFactorAt,
    tenMillionEvenFinite23PairProduct,
    e1FinitePatternPairProduct,
    tenMillionEvenFinite23PairFactor,
    e1FinitePatternPairFactor, e1FinitePrime] using h0123456

private theorem tenMillionFinite23EvenValuation_pair_mod_four
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3) (i j : Fin 3) :
    globalMixedThreePivotAt pivots hcard i % 4 =
      globalMixedThreePivotAt pivots hcard j % 4 := by
  have hi := hpivots (globalMixedThreePivotAt_mem pivots hcard i)
  have hj := hpivots (globalMixedThreePivotAt_mem pivots hcard j)
  rcases hvaluation with rfl | rfl | rfl
  · exact (fiveMillionValuationPart_evenOne hi).trans
      (fiveMillionValuationPart_evenOne hj).symm
  · have hi8 := fiveMillionValuationPart_evenTwo hi
    have hj8 := fiveMillionValuationPart_evenTwo hj
    omega
  · have hi8 := fiveMillionValuationPart_evenThree hi
    have hj8 := fiveMillionValuationPart_evenThree hj
    omega

theorem e1FinitePairProduct_gap_of_actual
    {N bound : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    {hcard : pivots.card = 3}
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (roots : E1FinitePivotRootFamily) (pair : Fin 3)
    (hmodFaithful : ∀ index,
      roots (tenMillionFinite23PairLeft pair) index =
          roots (tenMillionFinite23PairRight pair) index →
        globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairLeft pair) %
            e1FiniteModulus index =
          globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairRight pair) %
            e1FiniteModulus index)
    (hne :
      globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair) ≠
        globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair))
    (hgap :
      Nat.dist
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair))
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair)) < bound) :
    4 * tenMillionEvenFinite23PairProduct pair
        (e1FiniteRootPatternAt roots 0)
        (e1FiniteRootPatternAt roots 1)
        (e1FiniteRootPatternAt roots 2)
        (e1FiniteRootPatternAt roots 3)
        (e1FiniteRootPatternAt roots 4)
        (e1FiniteRootPatternAt roots 5)
        (e1FiniteRootPatternAt roots 6) ^ 2 < bound := by
  let product := tenMillionEvenFinite23PairProduct pair
    (e1FiniteRootPatternAt roots 0)
    (e1FiniteRootPatternAt roots 1)
    (e1FiniteRootPatternAt roots 2)
    (e1FiniteRootPatternAt roots 3)
    (e1FiniteRootPatternAt roots 4)
    (e1FiniteRootPatternAt roots 5)
    (e1FiniteRootPatternAt roots 6)
  let left := globalMixedThreePivotAt pivots hcard
    (tenMillionFinite23PairLeft pair)
  let right := globalMixedThreePivotAt pivots hcard
    (tenMillionFinite23PairRight pair)
  let distance := Nat.dist left right
  have hproduct : product ^ 2 ∣ distance := by
    simpa [product, left, right, distance] using
      e1FinitePairProduct_square_dvd_dist_of_mod
        roots pair hmodFaithful
  have hfour : 4 ∣ distance := by
    apply tenMillionFinite23Modulus_dvd_dist_of_mod_eq
    exact tenMillionFinite23EvenValuation_pair_mod_four
      hvaluation hpivots hcard
        (tenMillionFinite23PairLeft pair)
        (tenMillionFinite23PairRight pair)
  have hodd : Odd product := by
    simpa [product] using tenMillionFinite23PairProduct_odd roots pair
  have hcoprimeTwo : Nat.Coprime 2 product :=
    Nat.coprime_two_left.mpr hodd
  have hcoprime :
      Nat.Coprime 4 (product ^ 2) := by
    simpa using hcoprimeTwo.pow 2 2
  have hcombined : 4 * product ^ 2 ∣ distance :=
    hcoprime.mul_dvd_of_dvd_of_dvd hfour hproduct
  have hdistancePos : 0 < distance := by
    dsimp [distance, left, right]
    rcases Nat.lt_or_gt_of_ne hne with hlr | hrl
    · rw [Nat.dist_eq_sub_of_le hlr.le]
      omega
    · rw [Nat.dist_eq_sub_of_le_right hrl.le]
      omega
  have hle : 4 * product ^ 2 ≤ distance :=
    Nat.le_of_dvd hdistancePos hcombined
  exact lt_of_le_of_lt hle hgap

theorem tenMillionFinite23PairProduct_gap_of_actual_close
    {N baseResidue : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    {hcard : pivots.card = 3}
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (roots : E1FinitePivotRootFamily) (pair : Fin 3)
    (hfaithful : ∀ index,
      roots (tenMillionFinite23PairLeft pair) index =
          roots (tenMillionFinite23PairRight pair) index →
        ∃ q,
          e1FiniteActualPartialRoots baseResidue pivots hcard index
              (tenMillionFinite23PairLeft pair) = some q ∧
          e1FiniteActualPartialRoots baseResidue pivots hcard index
              (tenMillionFinite23PairRight pair) = some q)
    (hne :
      globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair) ≠
        globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair))
    (hgap :
      Nat.dist
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair))
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair)) < 1_000_001) :
    4 * tenMillionEvenFinite23PairProduct pair
        (e1FiniteRootPatternAt roots 0)
        (e1FiniteRootPatternAt roots 1)
        (e1FiniteRootPatternAt roots 2)
        (e1FiniteRootPatternAt roots 3)
        (e1FiniteRootPatternAt roots 4)
        (e1FiniteRootPatternAt roots 5)
        (e1FiniteRootPatternAt roots 6) ^ 2 < 1_000_001 :=
by
  have hmodFaithful : ∀ index,
      roots (tenMillionFinite23PairLeft pair) index =
          roots (tenMillionFinite23PairRight pair) index →
        globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairLeft pair) %
            e1FiniteModulus index =
          globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairRight pair) %
            e1FiniteModulus index := by
    intro index hroots
    obtain ⟨q, hleft, hright⟩ := hfaithful index hroots
    exact e1FinitePartialRoot_same_implies_pivot_mod
      (baseResidue := baseResidue)
      (hleft := by
        simpa [e1FiniteActualPartialRoots] using hleft)
      (hright := by
        simpa [e1FiniteActualPartialRoots] using hright)
  exact e1FinitePairProduct_gap_of_actual
    hvaluation hpivots roots pair hmodFaithful hne hgap

#print axioms e1FinitePairProduct_square_dvd_dist_of_mod
#print axioms e1FinitePairProduct_gap_of_actual
#print axioms tenMillionFinite23PairProduct_gap_of_actual_close

end Erdos848
