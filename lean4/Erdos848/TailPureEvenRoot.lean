import Erdos848.TailQuadraticRootCounting
import Erdos848.TailFiveMillionActualSupportCore
import Mathlib.Data.Nat.Factorization.PrimePow

namespace Erdos848

/-!
# The even part of the pure endpoint root modulus

An odd unit quadratic congruence modulo a power of two has at most four
roots.  Combining this with the already proved odd-modulus root theorem gives
the factor `4` used by the five-million pure support certificate, without an
enumeration of pivots.
-/

private lemma odd_square_modEq_two_pow_direct
    {exponent x y : ℕ} (hexponent : 2 ≤ exponent)
    (hx : Odd x) (hy : Odd y) (hyx : y ≤ x)
    (hsquare : x ^ 2 ≡ y ^ 2 [MOD 2 ^ exponent]) :
    x ≡ y [MOD 2 ^ (exponent - 1)] ∨
      x + y ≡ 0 [MOD 2 ^ (exponent - 1)] := by
  let a := x / 2 - y / 2
  let b := x / 2 + y / 2 + 1
  have hxMod : x % 2 = 1 := by
    have hlt := Nat.mod_lt x (by norm_num : 0 < 2)
    have hne : x % 2 ≠ 0 := by
      intro hzero
      exact hx.not_two_dvd_nat (Nat.dvd_iff_mod_eq_zero.mpr hzero)
    omega
  have hyMod : y % 2 = 1 := by
    have hlt := Nat.mod_lt y (by norm_num : 0 < 2)
    have hne : y % 2 ≠ 0 := by
      intro hzero
      exact hy.not_two_dvd_nat (Nat.dvd_iff_mod_eq_zero.mpr hzero)
    omega
  have hxDecomp := Nat.mod_add_div x 2
  have hyDecomp := Nat.mod_add_div y 2
  have hdivLe : y / 2 ≤ x / 2 := Nat.div_le_div_right hyx
  have hdiff : x - y = 2 * a := by
    dsimp [a]
    omega
  have hsum : x + y = 2 * b := by
    dsimp [b]
    omega
  have hab : a + b = x := by
    dsimp [a, b]
    omega
  have hsquareLe : y ^ 2 ≤ x ^ 2 := pow_le_pow_left' hyx 2
  have hdvdSquare : 2 ^ exponent ∣ x ^ 2 - y ^ 2 :=
    (Nat.modEq_iff_dvd' hsquareLe).mp hsquare.symm
  have hfactor : x ^ 2 - y ^ 2 = 4 * (a * b) := by
    rw [Nat.sq_sub_sq, hdiff, hsum]
    ring
  have hdvdFour : 2 ^ exponent ∣ 4 * (a * b) := by
    rw [hfactor] at hdvdSquare
    exact hdvdSquare
  have hpow : 2 ^ exponent = 4 * 2 ^ (exponent - 2) := by
    have he : exponent = (exponent - 2) + 2 := by omega
    calc
      2 ^ exponent = 2 ^ ((exponent - 2) + 2) :=
        congrArg (fun n => 2 ^ n) he
      _ = 4 * 2 ^ (exponent - 2) := by rw [pow_add]; ring
  have hdvd : 2 ^ (exponent - 2) ∣ a * b := by
    apply (Nat.mul_dvd_mul_iff_left (by norm_num : 0 < 4)).mp
    simpa [hpow, mul_assoc] using hdvdFour
  have hhalf : 2 ^ (exponent - 1) = 2 * 2 ^ (exponent - 2) := by
    have he : exponent - 1 = (exponent - 2) + 1 := by omega
    calc
      2 ^ (exponent - 1) = 2 ^ ((exponent - 2) + 1) := by rw [he]
      _ = 2 * 2 ^ (exponent - 2) := by rw [pow_add]; ring
  by_cases haEven : 2 ∣ a
  · have hbOdd : ¬ 2 ∣ b := by
      intro hbEven
      apply hx.not_two_dvd_nat
      rw [← hab]
      exact Nat.dvd_add haEven hbEven
    have hcop : Nat.Coprime (2 ^ (exponent - 2)) b :=
      (Nat.prime_two.coprime_iff_not_dvd.mpr hbOdd).pow_left _
    have hda : 2 ^ (exponent - 2) ∣ a :=
      (hcop.dvd_mul_right).mp hdvd
    left
    apply ((Nat.modEq_iff_dvd' hyx).mpr ?_).symm
    rw [hdiff, hhalf]
    exact Nat.mul_dvd_mul_left 2 hda
  · have hcop : Nat.Coprime (2 ^ (exponent - 2)) a :=
      (Nat.prime_two.coprime_iff_not_dvd.mpr haEven).pow_left _
    have hdb : 2 ^ (exponent - 2) ∣ b :=
      (hcop.dvd_mul_left).mp hdvd
    right
    apply Nat.modEq_zero_iff_dvd.mpr
    rw [hsum, hhalf]
    exact Nat.mul_dvd_mul_left 2 hdb

lemma odd_square_modEq_two_pow
    {exponent x y : ℕ} (hexponent : 2 ≤ exponent)
    (hx : Odd x) (hy : Odd y)
    (hsquare : x ^ 2 ≡ y ^ 2 [MOD 2 ^ exponent]) :
    x ≡ y [MOD 2 ^ (exponent - 1)] ∨
      x + y ≡ 0 [MOD 2 ^ (exponent - 1)] := by
  rcases le_total y x with hyx | hxy
  · exact odd_square_modEq_two_pow_direct hexponent hx hy hyx hsquare
  · rcases odd_square_modEq_two_pow_direct hexponent hy hx hxy
      hsquare.symm with hsame | hneg
    · exact Or.inl hsame.symm
    · exact Or.inr (by simpa [add_comm] using hneg)

/-- The two-adic root factor is uniformly at most four. -/
theorem transformedRootResidues_twoPow_card_le_four
    {exponent m constant : ℕ}
    (hconstant : constant.Coprime (2 ^ exponent)) :
    (transformedRootResidues m (2 ^ exponent) constant).card ≤ 4 := by
  classical
  by_cases hsmall : exponent < 2
  · have hsubset :
        transformedRootResidues m (2 ^ exponent) constant ⊆
          Finset.range (2 ^ exponent) := Finset.filter_subset _ _
    have hcard := Finset.card_le_card hsubset
    simp only [Finset.card_range] at hcard
    interval_cases exponent <;> norm_num at hcard ⊢ <;> omega
  have hexponent : 2 ≤ exponent := Nat.le_of_not_gt hsmall
  let roots := transformedRootResidues m (2 ^ exponent) constant
  by_cases hroots : roots = ∅
  · change roots.card ≤ 4
    simp [hroots]
  obtain ⟨base, hbase⟩ := Finset.nonempty_iff_ne_empty.mpr hroots
  let half := 2 ^ (exponent - 1)
  have hhalfPos : 0 < half := pow_pos (by norm_num) _
  let target : Finset (ZMod half × ℕ) :=
    ({(base : ZMod half), -(base : ZMod half)} : Finset (ZMod half)) ×ˢ
      Finset.range 2
  let encode : ℕ → ZMod half × ℕ := fun residue =>
    ((residue : ZMod half), residue / half)
  have hm : m.Coprime (2 ^ exponent) := by
    have hbaseEq := (transformedRootResidues_equation hbase).2
    have hproduct : (base ^ 2 * m).Coprime (2 ^ exponent) := by
      rw [Nat.coprime_iff_gcd_eq_one, hbaseEq.gcd_eq]
      exact hconstant.gcd_eq_one
    exact Nat.Coprime.of_dvd_left (dvd_mul_left m (base ^ 2)) hproduct
  have hmap : Set.MapsTo encode (roots : Set ℕ) (target : Set _) := by
    intro residue hresidue
    have hresidueEq := (transformedRootResidues_equation hresidue).2
    have hbaseEq := (transformedRootResidues_equation hbase).2
    have hresidueOdd : Odd residue := by
      have hnot := quadraticRoot_not_dvd_prime Nat.prime_two
        (by omega : 0 < exponent) hconstant hresidueEq
      apply Nat.not_even_iff_odd.mp
      simpa [even_iff_two_dvd] using hnot
    have hbaseOdd : Odd base := by
      have hnot := quadraticRoot_not_dvd_prime Nat.prime_two
        (by omega : 0 < exponent) hconstant hbaseEq
      apply Nat.not_even_iff_odd.mp
      simpa [even_iff_two_dvd] using hnot
    have hsquare : residue ^ 2 ≡ base ^ 2 [MOD 2 ^ exponent] :=
      Nat.ModEq.cancel_right_of_coprime hm.symm.gcd_eq_one
        (hresidueEq.trans hbaseEq.symm)
    have hclass := odd_square_modEq_two_pow hexponent
      hresidueOdd hbaseOdd hsquare
    apply Finset.mem_product.mpr
    constructor
    · rcases hclass with hsame | hneg
      · apply Finset.mem_insert.mpr
        left
        exact (ZMod.natCast_eq_natCast_iff _ _ _).2 hsame
      · apply Finset.mem_insert.mpr
        right
        simp only [Finset.mem_singleton]
        have hzero : ((residue + base : ℕ) : ZMod half) = 0 :=
          (ZMod.natCast_eq_zero_iff _ _).2
            (Nat.modEq_zero_iff_dvd.mp hneg)
        apply eq_neg_of_add_eq_zero_left
        simpa only [Nat.cast_add] using hzero
    · apply Finset.mem_range.mpr
      have hresidueLt := (transformedRootResidues_equation hresidue).1
      have hpow : 2 ^ exponent = half * 2 := by
        dsimp [half]
        have he : exponent = (exponent - 1) + 1 := by omega
        calc
          2 ^ exponent = 2 ^ ((exponent - 1) + 1) :=
            congrArg (fun n => 2 ^ n) he
          _ = 2 ^ (exponent - 1) * 2 := by simp only [pow_add, pow_one]
      rw [hpow] at hresidueLt
      exact (Nat.div_lt_iff_lt_mul hhalfPos).2 (by
        simpa [mul_comm] using hresidueLt)
  have hinjective : Set.InjOn encode (roots : Set ℕ) := by
    intro x hx y hy hxy
    have hcast := congrArg Prod.fst hxy
    have hdiv := congrArg Prod.snd hxy
    dsimp [encode] at hdiv
    have hmod : x % half = y % half := by
      simpa [encode, ZMod.val_natCast] using congrArg ZMod.val hcast
    calc
      x = x % half + half * (x / half) := (Nat.mod_add_div x half).symm
      _ = y % half + half * (y / half) := by rw [hmod, hdiv]
      _ = y := Nat.mod_add_div y half
  have htargetCard : target.card ≤ 4 := by
    dsimp [target]
    rw [Finset.card_product, Finset.card_range]
    exact Nat.mul_le_mul_right 2 Finset.card_le_two
  exact (Finset.card_le_card_of_injOn encode hmap hinjective).trans htargetCard

lemma pureFactorPivotOddPart_primeFactors_subset
    {factor pivot : ℕ} (hfactor : factor = 25)
    (hpivotPos : 0 < pivot) :
    (ordCompl[2] (factor * pivot)).primeFactors ⊆
      insert 5 (fiveMillionPivotSupportFinset pivot) := by
  subst factor
  intro q hq
  have hqPrime := Nat.prime_of_mem_primeFactors hq
  have hqDvdOdd := Nat.dvd_of_mem_primeFactors hq
  have hdecomp := Nat.ordProj_mul_ordCompl_eq_self (25 * pivot) 2
  have hqDvd : q ∣ 25 * pivot := by
    rw [← hdecomp]
    exact dvd_mul_of_dvd_right hqDvdOdd _
  rcases hqPrime.dvd_mul.mp hqDvd with hqFactor | hqPivot
  ·
    have hqFive : q = 5 := by
      have hqPow : q ∣ 5 ^ 2 := by norm_num at hqFactor ⊢; exact hqFactor
      have hqDvdFive := hqPrime.dvd_of_dvd_pow hqPow
      exact (Nat.dvd_prime_two_le Nat.prime_five hqPrime.two_le).mp hqDvdFive
    simpa [hqFive]
  · by_cases hqFive : q = 5
    · simpa [hqFive]
    · apply Finset.mem_insert.mpr
      right
      apply Finset.mem_filter.mpr
      refine ⟨Nat.mem_primeFactors.mpr ⟨hqPrime, hqPivot, hpivotPos.ne'⟩, ?_, hqFive⟩
      intro hqTwo
      subst q
      have hnotTwo := Nat.not_dvd_ordCompl Nat.prime_two
        (mul_ne_zero (by norm_num : (25 : ℕ) ≠ 0) hpivotPos.ne')
      exact hnotTwo hqDvdOdd

lemma pureFactorPivotOddPart_primeFactors_card_le
    {pivot : ℕ} (hpivotPos : 0 < pivot) :
    (ordCompl[2] (25 * pivot)).primeFactors.card ≤
      (fiveMillionPivotSupport pivot).length + 1 := by
  have hsubset := pureFactorPivotOddPart_primeFactors_subset
    (factor := 25) rfl hpivotPos
  have hfiveNotMem : 5 ∉ fiveMillionPivotSupportFinset pivot := by
    simp [fiveMillionPivotSupportFinset]
  have hcard := Finset.card_le_card hsubset
  rw [Finset.card_insert_of_notMem hfiveNotMem] at hcard
  simpa [fiveMillionPivotSupport, fiveMillionPivotSupportFinset] using hcard

lemma pureFiftyPivotOddPart_primeFactors_subset
    {pivot : ℕ} (hpivotPos : 0 < pivot) :
    (ordCompl[2] (50 * pivot)).primeFactors ⊆
      insert 5 (fiveMillionPivotSupportFinset pivot) := by
  intro q hq
  have hqPrime := Nat.prime_of_mem_primeFactors hq
  have hqDvdOdd := Nat.dvd_of_mem_primeFactors hq
  have hmodulus : 50 * pivot ≠ 0 :=
    mul_ne_zero (by norm_num) hpivotPos.ne'
  have hnotTwoOdd := Nat.not_dvd_ordCompl Nat.prime_two hmodulus
  have hdecomp := Nat.ordProj_mul_ordCompl_eq_self (50 * pivot) 2
  have hqDvd : q ∣ 50 * pivot := by
    rw [← hdecomp]
    exact dvd_mul_of_dvd_right hqDvdOdd _
  rcases hqPrime.dvd_mul.mp hqDvd with hqFactor | hqPivot
  · have hfactor : 50 = 2 * 5 ^ 2 := by norm_num
    rw [hfactor] at hqFactor
    rcases hqPrime.dvd_mul.mp hqFactor with hqTwo | hqTwentyFive
    · have hqEq : q = 2 :=
        (Nat.dvd_prime_two_le Nat.prime_two hqPrime.two_le).mp hqTwo
      subst q
      exact False.elim (hnotTwoOdd hqDvdOdd)
    · have hqFive : q = 5 := by
        have hqDvdFive := hqPrime.dvd_of_dvd_pow hqTwentyFive
        exact (Nat.dvd_prime_two_le Nat.prime_five hqPrime.two_le).mp
          hqDvdFive
      simpa [hqFive]
  · by_cases hqFive : q = 5
    · simpa [hqFive]
    · apply Finset.mem_insert.mpr
      right
      apply Finset.mem_filter.mpr
      refine ⟨Nat.mem_primeFactors.mpr
        ⟨hqPrime, hqPivot, hpivotPos.ne'⟩, ?_, hqFive⟩
      intro hqTwo
      subst q
      exact hnotTwoOdd hqDvdOdd

lemma pureFiftyPivotOddPart_primeFactors_card_le
    {pivot : ℕ} (hpivotPos : 0 < pivot) :
    (ordCompl[2] (50 * pivot)).primeFactors.card ≤
      (fiveMillionPivotSupport pivot).length + 1 := by
  have hsubset := pureFiftyPivotOddPart_primeFactors_subset hpivotPos
  have hfiveNotMem : 5 ∉ fiveMillionPivotSupportFinset pivot := by
    simp [fiveMillionPivotSupportFinset]
  have hcard := Finset.card_le_card hsubset
  rw [Finset.card_insert_of_notMem hfiveNotMem] at hcard
  simpa [fiveMillionPivotSupport, fiveMillionPivotSupportFinset] using hcard

/-- Uniform root bound for the possibly even modulus `25 * pivot`. -/
theorem pureFiveMillionTransformedRoot_card_le
    {pivot m constant : ℕ} (hpivotPos : 0 < pivot)
    (hconstant : constant.Coprime (25 * pivot)) :
    (transformedRootResidues m (25 * pivot) constant).card ≤
      4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  let twoPart := ordProj[2] (25 * pivot)
  let oddPart := ordCompl[2] (25 * pivot)
  have hmodulus : 25 * pivot ≠ 0 := mul_ne_zero (by norm_num) hpivotPos.ne'
  have hdecomp : twoPart * oddPart = 25 * pivot :=
    Nat.ordProj_mul_ordCompl_eq_self (25 * pivot) 2
  have hcopTwoOdd : Nat.Coprime twoPart oddPart := by
    dsimp [twoPart]
    exact (Nat.coprime_ordCompl Nat.prime_two hmodulus).pow_left _
  have htwoPos : 0 < twoPart := Nat.ordProj_pos _ _
  have hoddPos : 0 < oddPart := Nat.ordCompl_pos _ hmodulus
  have hconstantTwo : constant.Coprime twoPart :=
    Nat.Coprime.of_dvd_right (by rw [← hdecomp]; exact dvd_mul_right _ _)
      hconstant
  have hconstantOdd : constant.Coprime oddPart :=
    Nat.Coprime.of_dvd_right (by rw [← hdecomp]; exact dvd_mul_left _ _)
      hconstant
  have hsplit :
      (transformedRootResidues m (25 * pivot) constant).card ≤
        (transformedRootResidues m twoPart constant).card *
          (transformedRootResidues m oddPart constant).card := by
    rw [← hdecomp]
    exact transformedRootResidues_mul_card_le_mul
      htwoPos hoddPos hcopTwoOdd
  have htwo :
      (transformedRootResidues m twoPart constant).card ≤ 4 := by
    dsimp [twoPart]
    exact transformedRootResidues_twoPow_card_le_four hconstantTwo
  have hoddOdd : Odd oddPart :=
    (Nat.coprime_ordCompl Nat.prime_two hmodulus).odd_of_left
  have hodd :
      (transformedRootResidues m oddPart constant).card ≤
        2 ^ oddPart.primeFactors.card :=
    transformedRootResidues_card_le_two_pow_primeFactors_of_constant
      hoddOdd hconstantOdd
  have hsupport := pureFactorPivotOddPart_primeFactors_card_le hpivotPos
  exact hsplit.trans <| (Nat.mul_le_mul htwo hodd).trans <|
    Nat.mul_le_mul_left 4 (Nat.pow_le_pow_right (by norm_num) hsupport)

/-- The sharp parity block uses modulus `50 * pivot`; its odd support is the
same support list and its complete two-adic multiplicity is at most four. -/
theorem pureFiveMillionFiftyTransformedRoot_card_le
    {pivot m constant : ℕ} (hpivotPos : 0 < pivot)
    (hconstant : constant.Coprime (50 * pivot)) :
    (transformedRootResidues m (50 * pivot) constant).card ≤
      4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  let twoPart := ordProj[2] (50 * pivot)
  let oddPart := ordCompl[2] (50 * pivot)
  have hmodulus : 50 * pivot ≠ 0 := mul_ne_zero (by norm_num) hpivotPos.ne'
  have hdecomp : twoPart * oddPart = 50 * pivot :=
    Nat.ordProj_mul_ordCompl_eq_self (50 * pivot) 2
  have hcopTwoOdd : Nat.Coprime twoPart oddPart := by
    dsimp [twoPart]
    exact (Nat.coprime_ordCompl Nat.prime_two hmodulus).pow_left _
  have htwoPos : 0 < twoPart := Nat.ordProj_pos _ _
  have hoddPos : 0 < oddPart := Nat.ordCompl_pos _ hmodulus
  have hconstantTwo : constant.Coprime twoPart :=
    Nat.Coprime.of_dvd_right (by rw [← hdecomp]; exact dvd_mul_right _ _)
      hconstant
  have hconstantOdd : constant.Coprime oddPart :=
    Nat.Coprime.of_dvd_right (by rw [← hdecomp]; exact dvd_mul_left _ _)
      hconstant
  have hsplit :
      (transformedRootResidues m (50 * pivot) constant).card ≤
        (transformedRootResidues m twoPart constant).card *
          (transformedRootResidues m oddPart constant).card := by
    rw [← hdecomp]
    exact transformedRootResidues_mul_card_le_mul
      htwoPos hoddPos hcopTwoOdd
  have htwo :
      (transformedRootResidues m twoPart constant).card ≤ 4 := by
    dsimp [twoPart]
    exact transformedRootResidues_twoPow_card_le_four hconstantTwo
  have hoddOdd : Odd oddPart :=
    (Nat.coprime_ordCompl Nat.prime_two hmodulus).odd_of_left
  have hodd :
      (transformedRootResidues m oddPart constant).card ≤
        2 ^ oddPart.primeFactors.card :=
    transformedRootResidues_card_le_two_pow_primeFactors_of_constant
      hoddOdd hconstantOdd
  have hsupport := pureFiftyPivotOddPart_primeFactors_card_le hpivotPos
  exact hsplit.trans <| (Nat.mul_le_mul htwo hodd).trans <|
    Nat.mul_le_mul_left 4 (Nat.pow_le_pow_right (by norm_num) hsupport)

#print axioms transformedRootResidues_twoPow_card_le_four
#print axioms pureFiveMillionTransformedRoot_card_le
#print axioms pureFiveMillionFiftyTransformedRoot_card_le

end Erdos848
