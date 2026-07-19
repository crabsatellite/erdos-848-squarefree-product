import Erdos848.TailTransformedRootCounting
import Mathlib.Data.Nat.Factorization.Induction

namespace Erdos848

/-!
# Uniform quadratic-root counts over odd composite moduli

This module supplies the missing root-class bound used by the transformed
large-prime payment.  For unit coefficient and unit constant, a quadratic
congruence has at most two roots on every odd prime-power factor.  Chinese
remaindering then gives at most `2 ^ modulus.primeFactors.card` roots.
-/

lemma transformedRootResidues_equation
    {m modulus constant residue : ℕ}
    (hresidue : residue ∈ transformedRootResidues m modulus constant) :
    residue < modulus ∧ residue ^ 2 * m ≡ constant [MOD modulus] := by
  have hparts := Finset.mem_filter.mp hresidue
  exact ⟨Finset.mem_range.mp hparts.1, hparts.2⟩

lemma transformedRootResidues_mem
    {m modulus constant residue : ℕ}
    (hresidue : residue < modulus)
    (hequation : residue ^ 2 * m ≡ constant [MOD modulus]) :
    residue ∈ transformedRootResidues m modulus constant := by
  exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hresidue, hequation⟩

lemma quadraticRoot_not_dvd_prime
    {q exponent m constant residue : ℕ}
    (hq : q.Prime) (hexponent : 0 < exponent)
    (hconstant : constant.Coprime (q ^ exponent))
    (hequation : residue ^ 2 * m ≡ constant [MOD q ^ exponent]) :
    ¬ q ∣ residue := by
  intro hqResidue
  have hqPow : q ∣ q ^ exponent :=
    dvd_pow_self q (Nat.ne_of_gt hexponent)
  have hqLeft : q ∣ residue ^ 2 * m :=
    dvd_mul_of_dvd_left (dvd_pow hqResidue (by norm_num : 2 ≠ 0)) m
  have hqConstant : q ∣ constant :=
    (hequation.dvd_iff hqPow).mp hqLeft
  exact (hq.coprime_iff_not_dvd.mp
    (Nat.Coprime.of_dvd_right hqPow hconstant).symm) hqConstant

/-- A root congruence modulo an odd prime lifts uniquely through all positive
powers of that prime when the common square is a unit. -/
lemma quadraticRoot_modEq_primePow_of_modEq_prime
    {q exponent x y : ℕ}
    (hq : q.Prime) (hqOdd : q ≠ 2) (hexponent : 0 < exponent)
    (hxUnit : ¬ q ∣ x)
    (hsquare : x ^ 2 ≡ y ^ 2 [MOD q ^ exponent])
    (hxy : x ≡ y [MOD q]) :
    x ≡ y [MOD q ^ exponent] := by
  have hqNotDvdSum : ¬ q ∣ x + y := by
    intro hqSum
    have hsumZero : x + y ≡ 0 [MOD q] :=
      Nat.modEq_zero_iff_dvd.mpr hqSum
    have hdouble : x + x ≡ x + y [MOD q] := hxy.add_left x
    have hqDouble : q ∣ x + x :=
      Nat.modEq_zero_iff_dvd.mp (hdouble.trans hsumZero)
    have hqTwoMul : q ∣ 2 * x := by
      simpa [two_mul] using hqDouble
    rcases hq.dvd_mul.mp hqTwoMul with hqTwo | hqX
    · exact hqOdd (Nat.le_antisymm
        (Nat.le_of_dvd (by norm_num : 0 < 2) hqTwo) hq.two_le)
    · exact hxUnit hqX
  have hcoprimeQ : q.Coprime (x + y) :=
    hq.coprime_iff_not_dvd.mpr hqNotDvdSum
  have hcoprimePow : (q ^ exponent).Coprime (x + y) :=
    hcoprimeQ.pow_left exponent
  have hfactor : (x + y) * x ≡ (x + y) * y [MOD q ^ exponent] := by
    have hadd := hsquare.add (Nat.ModEq.refl (x * y))
    simpa [pow_two, mul_add, add_mul, mul_comm, mul_left_comm,
      mul_assoc, add_comm, add_left_comm] using hadd
  exact Nat.ModEq.cancel_left_of_coprime hcoprimePow.gcd_eq_one hfactor

theorem transformedRootResidues_prime_card_le_two
    {q m constant : ℕ} (hq : q.Prime)
    (hm : m.Coprime q) :
    (transformedRootResidues m q constant).card ≤ 2 := by
  classical
  let roots := transformedRootResidues m q constant
  by_cases hroots : roots = ∅
  · change roots.card ≤ 2
    simp [hroots]
  · obtain ⟨base, hbase⟩ := Finset.nonempty_iff_ne_empty.mpr hroots
    letI : Fact (Nat.Prime q) := ⟨hq⟩
    let negBase : ℕ := (-(base : ZMod q)).val
    have hsubset : roots ⊆ {base, negBase} := by
      intro residue hresidue
      have hrEq := (transformedRootResidues_equation hresidue).2
      have hbEq := (transformedRootResidues_equation hbase).2
      have hsquare : residue ^ 2 ≡ base ^ 2 [MOD q] :=
        Nat.ModEq.cancel_right_of_coprime hm.symm.gcd_eq_one
          (hrEq.trans hbEq.symm)
      have hsquareZ : (residue : ZMod q) ^ 2 = (base : ZMod q) ^ 2 :=
        by
          simpa only [Nat.cast_pow] using
            (ZMod.natCast_eq_natCast_iff _ _ _).2 hsquare
      rcases eq_or_eq_neg_of_sq_eq_sq (residue : ZMod q) (base : ZMod q)
          hsquareZ with hsame | hneg
      · have hval := congrArg ZMod.val hsame
        have hrLt := (transformedRootResidues_equation hresidue).1
        have hbLt := (transformedRootResidues_equation hbase).1
        have hEq : residue = base := by
          simpa [ZMod.val_natCast_of_lt hrLt,
            ZMod.val_natCast_of_lt hbLt] using hval
        simp [hEq]
      · have hval := congrArg ZMod.val hneg
        have hrLt := (transformedRootResidues_equation hresidue).1
        have hEq : residue = negBase := by
          simpa [negBase, ZMod.val_natCast_of_lt hrLt] using hval
        simp [hEq]
    exact (Finset.card_le_card hsubset).trans Finset.card_le_two

theorem transformedRootResidues_primePow_card_le_two
    {q exponent m constant : ℕ}
    (hq : q.Prime) (hqOdd : q ≠ 2) (hexponent : 0 < exponent)
    (hm : m.Coprime (q ^ exponent))
    (hconstant : constant.Coprime (q ^ exponent)) :
    (transformedRootResidues m (q ^ exponent) constant).card ≤ 2 := by
  classical
  have hqPow : q ∣ q ^ exponent :=
    dvd_pow_self q (Nat.ne_of_gt hexponent)
  have hmQ : m.Coprime q := Nat.Coprime.of_dvd_right hqPow hm
  have hmap : Set.MapsTo (fun residue => residue % q)
      (transformedRootResidues m (q ^ exponent) constant : Set ℕ)
      (transformedRootResidues m q constant : Set ℕ) := by
    intro residue hresidue
    have hequation := (transformedRootResidues_equation hresidue).2
    apply transformedRootResidues_mem (Nat.mod_lt _ hq.pos)
    exact (((Nat.mod_modEq residue q).pow 2).mul_right m).trans
      (hequation.of_dvd hqPow)
  have hinjective : Set.InjOn (fun residue => residue % q)
      (transformedRootResidues m (q ^ exponent) constant : Set ℕ) := by
    intro x hx y hy hxyResidue
    have hxEq := (transformedRootResidues_equation hx).2
    have hyEq := (transformedRootResidues_equation hy).2
    have hxy : x ≡ y [MOD q] := by
      calc
        x ≡ x % q [MOD q] := (Nat.mod_modEq x q).symm
        _ = y % q := hxyResidue
        _ ≡ y [MOD q] := Nat.mod_modEq y q
    have hsquare : x ^ 2 ≡ y ^ 2 [MOD q ^ exponent] :=
      Nat.ModEq.cancel_right_of_coprime hm.symm.gcd_eq_one
        (hxEq.trans hyEq.symm)
    exact (quadraticRoot_modEq_primePow_of_modEq_prime hq hqOdd
      hexponent (quadraticRoot_not_dvd_prime hq hexponent hconstant hxEq)
      hsquare hxy).eq_of_lt_of_lt
        (transformedRootResidues_equation hx).1
        (transformedRootResidues_equation hy).1
  exact (Finset.card_le_card_of_injOn (fun residue => residue % q)
    hmap hinjective).trans
      (transformedRootResidues_prime_card_le_two hq hmQ)

theorem transformedRootResidues_mul_card_le_mul
    {a b m constant : ℕ} (ha : 0 < a) (hb : 0 < b)
    (hab : a.Coprime b) :
    (transformedRootResidues m (a * b) constant).card ≤
      (transformedRootResidues m a constant).card *
        (transformedRootResidues m b constant).card := by
  classical
  let rootsAB := transformedRootResidues m (a * b) constant
  let rootsA := transformedRootResidues m a constant
  let rootsB := transformedRootResidues m b constant
  let target := rootsA ×ˢ rootsB
  have hmap : Set.MapsTo (fun residue => (residue % a, residue % b))
      (rootsAB : Set ℕ) (target : Set (ℕ × ℕ)) := by
    intro residue hresidue
    have hequation := (transformedRootResidues_equation hresidue).2
    apply Finset.mem_product.mpr
    constructor
    · apply transformedRootResidues_mem (Nat.mod_lt _ ha)
      exact (((Nat.mod_modEq residue a).pow 2).mul_right m).trans
        (hequation.of_mul_right b)
    · apply transformedRootResidues_mem (Nat.mod_lt _ hb)
      exact (((Nat.mod_modEq residue b).pow 2).mul_right m).trans
        (hequation.of_mul_left a)
  have hinjective : Set.InjOn (fun residue => (residue % a, residue % b))
      (rootsAB : Set ℕ) := by
    intro x hx y hy hpair
    have hxa : x ≡ y [MOD a] := by
      calc
        x ≡ x % a [MOD a] := (Nat.mod_modEq x a).symm
        _ = y % a := congrArg Prod.fst hpair
        _ ≡ y [MOD a] := Nat.mod_modEq y a
    have hxb : x ≡ y [MOD b] := by
      calc
        x ≡ x % b [MOD b] := (Nat.mod_modEq x b).symm
        _ = y % b := congrArg Prod.snd hpair
        _ ≡ y [MOD b] := Nat.mod_modEq y b
    have hxy : x ≡ y [MOD a * b] :=
      (Nat.modEq_and_modEq_iff_modEq_mul hab).mp ⟨hxa, hxb⟩
    exact hxy.eq_of_lt_of_lt
      (transformedRootResidues_equation hx).1
      (transformedRootResidues_equation hy).1
  calc
    rootsAB.card ≤ target.card :=
      Finset.card_le_card_of_injOn
        (fun residue => (residue % a, residue % b)) hmap hinjective
    _ = rootsA.card * rootsB.card := Finset.card_product _ _

/-- A unit quadratic congruence over any odd modulus has at most two choices
on each distinct prime-power factor. -/
theorem transformedRootResidues_card_le_two_pow_primeFactors
    {modulus m constant : ℕ} (hodd : Odd modulus)
    (hm : m.Coprime modulus) (hconstant : constant.Coprime modulus) :
    (transformedRootResidues m modulus constant).card ≤
      2 ^ modulus.primeFactors.card := by
  let P : ℕ → Prop := fun n =>
    Odd n → ∀ coefficient target,
      coefficient.Coprime n → target.Coprime n →
      (transformedRootResidues coefficient n target).card ≤
        2 ^ n.primeFactors.card
  have hP : ∀ n, P n := Nat.recOnPosPrimePosCoprime
    (motive := P)
    (fun q exponent hq hexponent => by
      intro hoddPow coefficient target hcoefficient htarget
      have hqNeTwo : q ≠ 2 := by
        intro hqTwo
        subst q
        exact hoddPow.not_two_dvd_nat
          (dvd_pow_self 2 (Nat.ne_of_gt hexponent))
      simpa [Nat.primeFactors_prime_pow hexponent.ne' hq] using
        transformedRootResidues_primePow_card_le_two hq hqNeTwo
          hexponent hcoefficient htarget)
    (by
      intro hoddZero
      simpa using hoddZero)
    (by
      intro _hoddOne coefficient target _hcoefficient _htarget
      calc
        (transformedRootResidues coefficient 1 target).card ≤
            (Finset.range 1).card :=
          Finset.card_le_card (Finset.filter_subset _ _)
        _ = 2 ^ (1 : ℕ).primeFactors.card := by simp)
    (fun a b ha hb hab hPa hPb => by
      intro hoddMul coefficient target hcoefficient htarget
      have haDvd : a ∣ a * b := ⟨b, rfl⟩
      have hbDvd : b ∣ a * b := ⟨a, by rw [mul_comm]⟩
      have hcoefficientA : coefficient.Coprime a :=
        Nat.Coprime.of_dvd_right haDvd hcoefficient
      have hcoefficientB : coefficient.Coprime b :=
        Nat.Coprime.of_dvd_right hbDvd hcoefficient
      have htargetA : target.Coprime a :=
        Nat.Coprime.of_dvd_right haDvd htarget
      have htargetB : target.Coprime b :=
        Nat.Coprime.of_dvd_right hbDvd htarget
      calc
        (transformedRootResidues coefficient (a * b) target).card ≤
            (transformedRootResidues coefficient a target).card *
              (transformedRootResidues coefficient b target).card :=
          transformedRootResidues_mul_card_le_mul
            (by omega) (by omega) hab
        _ ≤ 2 ^ a.primeFactors.card * 2 ^ b.primeFactors.card :=
          Nat.mul_le_mul
            (hPa (Nat.odd_mul.mp hoddMul).1 coefficient target
              hcoefficientA htargetA)
            (hPb (Nat.odd_mul.mp hoddMul).2 coefficient target
              hcoefficientB htargetB)
        _ = 2 ^ (a * b).primeFactors.card := by
          rw [hab.primeFactors_mul,
            Finset.card_union_of_disjoint hab.disjoint_primeFactors,
            pow_add])
  exact hP modulus hodd m constant hm hconstant

/-- The coefficient need not be assumed a unit separately: if the root set is
nonempty and the target is a unit, any witnessed equation forces it. -/
theorem transformedRootResidues_card_le_two_pow_primeFactors_of_constant
    {modulus m constant : ℕ} (hodd : Odd modulus)
    (hconstant : constant.Coprime modulus) :
    (transformedRootResidues m modulus constant).card ≤
      2 ^ modulus.primeFactors.card := by
  classical
  let roots := transformedRootResidues m modulus constant
  by_cases hroots : roots = ∅
  · change roots.card ≤ 2 ^ modulus.primeFactors.card
    simp [hroots]
  · obtain ⟨residue, hresidue⟩ := Finset.nonempty_iff_ne_empty.mpr hroots
    have hequation := (transformedRootResidues_equation hresidue).2
    have hproduct : (residue ^ 2 * m).Coprime modulus := by
      rw [Nat.coprime_iff_gcd_eq_one, hequation.gcd_eq]
      exact hconstant.gcd_eq_one
    have hm : m.Coprime modulus :=
      Nat.Coprime.of_dvd_left (dvd_mul_left m (residue ^ 2)) hproduct
    exact transformedRootResidues_card_le_two_pow_primeFactors hodd hm hconstant

#print axioms quadraticRoot_modEq_primePow_of_modEq_prime
#print axioms transformedRootResidues_prime_card_le_two
#print axioms transformedRootResidues_primePow_card_le_two
#print axioms transformedRootResidues_mul_card_le_mul
#print axioms transformedRootResidues_card_le_two_pow_primeFactors
#print axioms transformedRootResidues_card_le_two_pow_primeFactors_of_constant

end Erdos848
