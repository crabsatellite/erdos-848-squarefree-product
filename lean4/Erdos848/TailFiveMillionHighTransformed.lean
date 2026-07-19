import Erdos848.TailFiveMillionTransformedRoot

namespace Erdos848

/-!
# Literal high-tail points as transformed progression parameters

This file is the semantic bridge from the actual two-base high-prime set to
the uniform transformed-root counts.  It does not enumerate values of `N`.
-/

noncomputable def twoBaseHighTailSquarePointsAtResidue
    (N pivot upper baseResidue : ℕ) : Finset ℕ :=
  (twoBaseHighTailSquarePoints N pivot upper).filter fun point =>
    point % 25 = baseResidue

lemma nat_eq_of_mod_eq_and_div_eq
    {a b modulus : ℕ} (hmod : a % modulus = b % modulus)
    (hdiv : a / modulus = b / modulus) :
    a = b := by
  calc
    a = a % modulus + modulus * (a / modulus) :=
      (Nat.mod_add_div a modulus).symm
    _ = b % modulus + modulus * (b / modulus) := by rw [hmod, hdiv]
    _ = b := Nat.mod_add_div b modulus

lemma modFiveCosetAccepts_of_square_scaled
    {p m constant : ℕ} {squareCoset : Bool}
    (hpFive : ¬ 5 ∣ p)
    (hequation : p ^ 2 * m % 5 = constant % 5)
    (hconstant : modFiveCosetAccepts squareCoset constant = true) :
    modFiveCosetAccepts squareCoset m = true := by
  have hpModNe : p % 5 ≠ 0 := fun h =>
    hpFive (Nat.dvd_iff_mod_eq_zero.mpr h)
  have hpModLt : p % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hmModLt : m % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hcModLt : constant % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hequation' : ((p % 5) ^ 2 * (m % 5)) % 5 = constant % 5 := by
    simpa [Nat.mul_mod, Nat.pow_mod] using hequation
  interval_cases hpMod : p % 5 <;>
    interval_cases hmMod : m % 5 <;>
      interval_cases hcMod : constant % 5 <;>
        cases squareCoset <;>
          simp [modFiveCosetAccepts, hpMod, hmMod, hcMod] at hconstant ⊢ <;>
          omega

lemma point_div_twentyFive_injective_on_residue
    {points : Finset ℕ} {baseResidue : ℕ}
    (hresidue : ∀ point ∈ points, point % 25 = baseResidue) :
    Set.InjOn (fun point : ℕ => point / 25) points := by
  intro a ha b hb hab
  exact nat_eq_of_mod_eq_and_div_eq
    ((hresidue a ha).trans (hresidue b hb).symm) hab

theorem twoBaseHighTailSquarePoints_eq_residue_union
    (N pivot upper : ℕ) :
    twoBaseHighTailSquarePoints N pivot upper =
      twoBaseHighTailSquarePointsAtResidue N pivot upper 7 ∪
        twoBaseHighTailSquarePointsAtResidue N pivot upper 18 := by
  classical
  ext point
  simp only [twoBaseHighTailSquarePointsAtResidue, Finset.mem_union,
    Finset.mem_filter]
  constructor
  · intro hpoint
    have hbase := (Finset.mem_filter.mp hpoint).1
    rcases Finset.mem_union.mp hbase with hseven | heighteen
    · exact Or.inl ⟨hpoint, (Finset.mem_filter.mp hseven).2⟩
    · exact Or.inr ⟨hpoint, (Finset.mem_filter.mp heighteen).2⟩
  · rintro (⟨hpoint, _⟩ | ⟨hpoint, _⟩) <;> exact hpoint

lemma fiveMillionNormalHighPoint_parameter_mem
    {N : ℕ} {B : Finset ℕ} {pivot point baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot (N / 49) baseResidue)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    point / 25 ∈
      transformedParameterSet (N / 25 + 2) (N / 49) (25 * pivot)
        (pivot * baseResidue + 1)
        (oddRootWordSurvivorFinset
          (fiveMillionPivotSupport pivot).dropLast squareCoset) := by
  classical
  have hpointParts := Finset.mem_filter.mp hpoint
  have hpointHigh := hpointParts.1
  have hpointResidue := hpointParts.2
  obtain ⟨p, m, hpPrime, hpLarge, hequation, hmLower, hmUpper, hbranch⟩ :=
    twoBaseHighTailSquarePoint_accepts_normal_or_fiveTwist
      hLower hUpper hBout hpivotResidual hpointHigh
  have hpFive : ¬ 5 ∣ p := by
    intro hpDvd
    have hpEq : 5 = p :=
      (Nat.prime_dvd_prime_iff_eq (by norm_num) hpPrime).mp hpDvd
    have hYLarge : 5 < N / 49 := by omega
    omega
  have hpointDecomp : point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by rw [hpointResidue]
  have htransformed :
      p ^ 2 * m =
        (pivot * baseResidue + 1) + (25 * pivot) * (point / 25) := by
    calc
      p ^ 2 * m = pivot * point + 1 := hequation
      _ = (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := by
        conv_lhs => rw [hpointDecomp]
        ring
  have hmFive : ¬ 5 ∣ m := by
    intro hmDvd
    have hleft : 5 ∣ p ^ 2 * m := dvd_mul_of_dvd_right hmDvd _
    rw [htransformed] at hleft
    have htail : 5 ∣ (25 * pivot) * (point / 25) := by
      refine ⟨5 * pivot * (point / 25), ?_⟩
      ring
    exact hconstantFive ((Nat.dvd_add_iff_left htail).mpr hleft)
  obtain ⟨_branchFive, squareCoset', haccept'⟩ := hbranch.resolve_right
    (fun htwist => hmFive htwist.1)
  have hacceptParts :
      modFiveCosetAccepts squareCoset' m = true ∧
        (fiveMillionPivotSupport pivot).dropLast.all (fun q =>
          wordMaskTestBit (GeneratedTailSupportCoverage.qrMaskWords q)
            (m - 1)) = true := by
    simpa [oddRootWordPointAccepts] using haccept'
  have hequationMod : p ^ 2 * m % 5 =
      (pivot * baseResidue + 1) % 5 := by
    have hmod := congrArg (fun value : ℕ => value % 5) htransformed
    simpa [Nat.add_mod, Nat.mul_mod] using hmod
  have hmCoset : modFiveCosetAccepts squareCoset m = true :=
    modFiveCosetAccepts_of_square_scaled hpFive hequationMod hcoset
  have hmAccept :
      oddRootWordPointAccepts (fiveMillionPivotSupport pivot).dropLast
        squareCoset m = true := by
    simp [oddRootWordPointAccepts, hmCoset, hacceptParts.2]
  have hmSurvivor : m ∈
      oddRootWordSurvivorFinset
        (fiveMillionPivotSupport pivot).dropLast squareCoset := by
    apply Finset.mem_filter.mpr
    exact ⟨Finset.mem_Ico.mpr ⟨hmLower, by omega⟩, hmAccept⟩
  have hpointLe : point ≤ N :=
    (Finset.mem_Icc.mp
      (lowBaseSet_subset_Icc N (Finset.mem_filter.mp hpointHigh).1)).2
  have htRange : point / 25 < N / 25 + 2 := by
    have hdivLe : point / 25 ≤ N / 25 := Nat.div_le_div_right hpointLe
    omega
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_range.mpr htRange, ?_⟩
  refine ⟨m, hmSurvivor, p, ?_, hpLarge, htransformed⟩
  apply Finset.mem_range.mpr
  have hpSquare : p < p ^ 2 := by
    nlinarith [hpPrime.two_le]
  have hpProduct : p < p ^ 2 * m := by
    exact hpSquare.trans_le (by
      simpa using Nat.mul_le_mul_left (p ^ 2) hmLower)
  have hparameterLe :
      (pivot * baseResidue + 1) + (25 * pivot) * (point / 25) ≤
        (pivot * baseResidue + 1) + (25 * pivot) * (N / 25 + 2) := by
    gcongr
  rw [htransformed] at hpProduct
  omega

theorem fiveMillionNormalHighResidue_card_le_parameterSet
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    (twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 49) baseResidue).card ≤
      (transformedParameterSet (N / 25 + 2) (N / 49) (25 * pivot)
        (pivot * baseResidue + 1)
        (oddRootWordSurvivorFinset
          (fiveMillionPivotSupport pivot).dropLast squareCoset)).card := by
  classical
  let points := twoBaseHighTailSquarePointsAtResidue
    N pivot (N / 49) baseResidue
  let target := transformedParameterSet (N / 25 + 2) (N / 49)
    (25 * pivot) (pivot * baseResidue + 1)
    (oddRootWordSurvivorFinset
      (fiveMillionPivotSupport pivot).dropLast squareCoset)
  have hresidue : ∀ point ∈ points, point % 25 = baseResidue := by
    intro point hpoint
    exact (Finset.mem_filter.mp hpoint).2
  have hinjective : Set.InjOn (fun point : ℕ => point / 25) points :=
    point_div_twentyFive_injective_on_residue hresidue
  have hsubset : points.image (fun point => point / 25) ⊆ target := by
    intro parameter hparameter
    obtain ⟨point, hpoint, rfl⟩ := Finset.mem_image.mp hparameter
    exact fiveMillionNormalHighPoint_parameter_mem
      hLower hUpper hBout hpivotResidual hpoint hconstantFive hcoset
  calc
    points.card = (points.image (fun point => point / 25)).card :=
      (Finset.card_image_iff.mpr hinjective).symm
    _ ≤ target.card := Finset.card_le_card hsubset

set_option maxHeartbeats 800000 in
theorem fiveMillionNormalHighResidue_card_cast_le
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 49) baseResidue).card : ℚ) ≤
      (2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
        ((oddRootWordSurvivorCount
          (fiveMillionPivotSupport pivot).dropLast squareCoset : ℕ) +
          2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 49 : ℕ) : ℚ)) := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hY : 0 < N / 49 := by omega
  have hcard := fiveMillionNormalHighResidue_card_le_parameterSet
    hLower hUpper hBout hpivotResidual hconstantFive hcoset
  have hcardQ :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 49) baseResidue).card : ℚ) ≤
        ((transformedParameterSet (N / 25 + 2) (N / 49) (25 * pivot)
          (pivot * baseResidue + 1)
          (oddRootWordSurvivorFinset
            (fiveMillionPivotSupport pivot).dropLast squareCoset)).card : ℚ) := by
    exact Nat.cast_le.mpr hcard
  exact hcardQ.trans
    (fiveMillionNormalTransformedParameterSet_card_le
      (X := N / 25 + 2) (Y := N / 49) (pivot := pivot)
      (baseResidue := baseResidue)
      squareCoset hY hpivotPos hpivotOdd hconstantFive)

lemma fiveMillionFiveTwistHighPoint_parameter_mem
    {N : ℕ} {B : Finset ℕ} {pivot point baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot (N / 49) baseResidue)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    point / 25 ∈
      transformedParameterSet (N / 25 + 2) (N / 49) (5 * pivot)
        ((pivot * baseResidue + 1) / 5)
        (oddRootFiveTwistSurvivorFinset
          (fiveMillionPivotSupport pivot).dropLast squareCoset) := by
  classical
  have hpointParts := Finset.mem_filter.mp hpoint
  have hpointHigh := hpointParts.1
  have hpointResidue := hpointParts.2
  obtain ⟨p, m, hpPrime, hpLarge, hequation, hmLower, hmUpper, hbranch⟩ :=
    twoBaseHighTailSquarePoint_accepts_normal_or_fiveTwist
      hLower hUpper hBout hpivotResidual hpointHigh
  have hpFive : ¬ 5 ∣ p := by
    intro hpDvd
    have hpEq : 5 = p :=
      (Nat.prime_dvd_prime_iff_eq (by norm_num) hpPrime).mp hpDvd
    have hYLarge : 5 < N / 49 := by omega
    omega
  have hpointDecomp : point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by rw [hpointResidue]
  have hrawTransformed :
      p ^ 2 * m =
        (pivot * baseResidue + 1) + (25 * pivot) * (point / 25) := by
    calc
      p ^ 2 * m = pivot * point + 1 := hequation
      _ = (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := by
        conv_lhs => rw [hpointDecomp]
        ring
  have hmFive : 5 ∣ m := by
    have htail : 5 ∣ (25 * pivot) * (point / 25) := by
      refine ⟨5 * pivot * (point / 25), ?_⟩
      ring
    have hright : 5 ∣
        (pivot * baseResidue + 1) + (25 * pivot) * (point / 25) :=
      Nat.dvd_add hconstantFive htail
    rw [← hrawTransformed] at hright
    rcases (show Nat.Prime 5 by norm_num).dvd_mul.mp hright with hpSquare | hm
    · exact False.elim (hpFive
        ((show Nat.Prime 5 by norm_num).dvd_of_dvd_pow hpSquare))
    · exact hm
  obtain ⟨_branchFive, squareCoset', haccept', hmDivLower, hmDivUpper⟩ :=
    hbranch.resolve_left (fun hnormal => hnormal.1 hmFive)
  have hmEq : 5 * (m / 5) = m := Nat.mul_div_cancel' hmFive
  have hconstantEq :
      5 * ((pivot * baseResidue + 1) / 5) =
        pivot * baseResidue + 1 := Nat.mul_div_cancel' hconstantFive
  have htransformed :
      p ^ 2 * (m / 5) =
        (pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (point / 25) := by
    apply Nat.mul_left_cancel (by norm_num : 0 < 5)
    calc
      5 * (p ^ 2 * (m / 5)) = p ^ 2 * (5 * (m / 5)) := by ring
      _ = p ^ 2 * m := by rw [hmEq]
      _ = (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := hrawTransformed
      _ = 5 * ((pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (point / 25)) := by
        rw [mul_add, hconstantEq]
        ring
  have hacceptParts :
      modFiveCosetAccepts squareCoset' (m / 5) = true ∧
        (fiveMillionPivotSupport pivot).dropLast.all (fun q =>
          wordMaskTestBit (GeneratedTailSupportCoverage.qrMaskWords q)
            (5 * (m / 5) - 1)) = true := by
    simpa [oddRootFiveTwistSupportAccepts] using haccept'
  have hequationMod : p ^ 2 * (m / 5) % 5 =
      ((pivot * baseResidue + 1) / 5) % 5 := by
    have hmod := congrArg (fun value : ℕ => value % 5) htransformed
    simpa [Nat.add_mod, Nat.mul_mod] using hmod
  have hmCoset : modFiveCosetAccepts squareCoset (m / 5) = true :=
    modFiveCosetAccepts_of_square_scaled hpFive hequationMod hcoset
  have hmAccept :
      oddRootFiveTwistSupportAccepts
        (fiveMillionPivotSupport pivot).dropLast squareCoset (m / 5) = true := by
    simp [oddRootFiveTwistSupportAccepts, hmCoset, hacceptParts.2]
  have hmSurvivor : m / 5 ∈
      oddRootFiveTwistSurvivorFinset
        (fiveMillionPivotSupport pivot).dropLast squareCoset := by
    apply Finset.mem_filter.mpr
    exact ⟨Finset.mem_Ico.mpr ⟨hmDivLower, by omega⟩, hmAccept⟩
  have hpointLe : point ≤ N :=
    (Finset.mem_Icc.mp
      (lowBaseSet_subset_Icc N (Finset.mem_filter.mp hpointHigh).1)).2
  have htRange : point / 25 < N / 25 + 2 := by
    have hdivLe : point / 25 ≤ N / 25 := Nat.div_le_div_right hpointLe
    omega
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_range.mpr htRange, ?_⟩
  refine ⟨m / 5, hmSurvivor, p, ?_, hpLarge, htransformed⟩
  apply Finset.mem_range.mpr
  have hpSquare : p < p ^ 2 := by
    nlinarith [hpPrime.two_le]
  have hpProduct : p < p ^ 2 * (m / 5) := by
    exact hpSquare.trans_le (by
      simpa using Nat.mul_le_mul_left (p ^ 2) hmDivLower)
  have hparameterLe :
      (pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (point / 25) ≤
        (pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (N / 25 + 2) := by
    gcongr
  rw [htransformed] at hpProduct
  omega

theorem fiveMillionFiveTwistHighResidue_card_le_parameterSet
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    (twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 49) baseResidue).card ≤
      (transformedParameterSet (N / 25 + 2) (N / 49) (5 * pivot)
        ((pivot * baseResidue + 1) / 5)
        (oddRootFiveTwistSurvivorFinset
          (fiveMillionPivotSupport pivot).dropLast squareCoset)).card := by
  classical
  let points := twoBaseHighTailSquarePointsAtResidue
    N pivot (N / 49) baseResidue
  let target := transformedParameterSet (N / 25 + 2) (N / 49)
    (5 * pivot) ((pivot * baseResidue + 1) / 5)
    (oddRootFiveTwistSurvivorFinset
      (fiveMillionPivotSupport pivot).dropLast squareCoset)
  have hresidue : ∀ point ∈ points, point % 25 = baseResidue := by
    intro point hpoint
    exact (Finset.mem_filter.mp hpoint).2
  have hinjective : Set.InjOn (fun point : ℕ => point / 25) points :=
    point_div_twentyFive_injective_on_residue hresidue
  have hsubset : points.image (fun point => point / 25) ⊆ target := by
    intro parameter hparameter
    obtain ⟨point, hpoint, rfl⟩ := Finset.mem_image.mp hparameter
    exact fiveMillionFiveTwistHighPoint_parameter_mem
      hLower hUpper hBout hpivotResidual hpoint hconstantFive
        hconstantTwentyFive hcoset
  calc
    points.card = (points.image (fun point => point / 25)).card :=
      (Finset.card_image_iff.mpr hinjective).symm
    _ ≤ target.card := Finset.card_le_card hsubset

theorem fiveMillionFiveTwistHighResidue_card_cast_le
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 49) baseResidue).card : ℚ) ≤
      (2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
        ((oddRootFiveTwistSurvivorCount
          (fiveMillionPivotSupport pivot).dropLast squareCoset : ℕ) +
          2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 49 : ℕ) : ℚ)) := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hY : 0 < N / 49 := by omega
  have hcard := fiveMillionFiveTwistHighResidue_card_le_parameterSet
    hLower hUpper hBout hpivotResidual hconstantFive hconstantTwentyFive hcoset
  have hcardQ :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 49) baseResidue).card : ℚ) ≤
        ((transformedParameterSet (N / 25 + 2) (N / 49) (5 * pivot)
          ((pivot * baseResidue + 1) / 5)
          (oddRootFiveTwistSurvivorFinset
            (fiveMillionPivotSupport pivot).dropLast squareCoset)).card : ℚ) := by
    exact Nat.cast_le.mpr hcard
  exact hcardQ.trans
    (fiveMillionFiveTwistTransformedParameterSet_card_le
      (X := N / 25 + 2) (Y := N / 49) (pivot := pivot)
      (baseResidue := baseResidue)
      squareCoset hY hpivotPos hpivotOdd hconstantFive hconstantTwentyFive)

lemma fiveMillionBaseConstant_not_twentyFive_dvd
    {N : ℕ} {B : Finset ℕ} {pivot point baseResidue : ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpointLow : point ∈ lowBaseSet N)
    (hpointResidue : point % 25 = baseResidue) :
    ¬ 25 ∣ pivot * baseResidue + 1 := by
  intro hconstant
  have hpointDecomp : point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by rw [hpointResidue]
  have hequation : pivot * point + 1 =
      (pivot * baseResidue + 1) + (25 * pivot) * (point / 25) := by
    conv_lhs => rw [hpointDecomp]
    ring
  have htail : 25 ∣ (25 * pivot) * (point / 25) := by
    refine ⟨pivot * (point / 25), ?_⟩
    ring
  have hevent : 5 ^ 2 ∣ pivot * point + 1 := by
    rw [hequation]
    simpa using Nat.dvd_add hconstant htail
  rcases Finset.mem_union.mp hpointLow with hseven | heighteen
  · exact five_not_event_on_originalA7_from_residual
      hBout hpivotResidual hseven hevent
  · exact five_not_event_on_originalA18_from_residual
      hBout hpivotResidual heighteen hevent

lemma not_five_dvd_div_five_of_not_twentyFive
    {constant : ℕ} (hfive : 5 ∣ constant)
    (htwentyFive : ¬ 25 ∣ constant) :
    ¬ 5 ∣ constant / 5 := by
  intro hquotient
  obtain ⟨k, hk⟩ := hquotient
  apply htwentyFive
  refine ⟨k, ?_⟩
  have hcancel : 5 * (constant / 5) = constant :=
    Nat.mul_div_cancel' hfive
  omega

theorem fiveMillionPivotSupport_fiveTwist_rootProfile_le
    {N pivot : ℕ} (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hpivotPos : 0 < pivot) (hpivot : pivot ≤ N) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4)
        (2 ^ ((fiveMillionPivotSupport pivot).length + 1))
        (oddRootFiveTwistSurvivorCount
          (fiveMillionPivotSupport pivot).dropLast squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  exact fiveMillionOddRootFiveTwistProfile_kernel_close
    N (fiveMillionPivotSupport pivot).length
    (fiveMillionPivotSupport pivot).dropLast squareCoset hLower hUpper
    (fiveMillionOddRootSupport_profileCase
      (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot)
      (fiveMillionPivotSupport_prod_le hpivotPos
        (hpivot.trans (Nat.le_of_lt hUpper))))

def FiveMillionHighResidueRootRow
    (N pivot baseResidue survivors : ℕ) : Prop :=
  ((twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 49) baseResidue).card : ℚ) ≤
    (2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
      ((survivors : ℕ) +
        2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 49 : ℕ) : ℚ)) ∧
  transformedRootRow N (N / 49)
      (Nat.primeCounting (N / 49) - 4)
      (2 ^ ((fiveMillionPivotSupport pivot).length + 1)) survivors ≤
    fiveMillionOddRoot7Envelope

theorem fiveMillionNormalHighResidue_rootRow
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    FiveMillionHighResidueRootRow N pivot baseResidue
      (oddRootWordSurvivorCount
        (fiveMillionPivotSupport pivot).dropLast squareCoset) := by
  constructor
  · exact fiveMillionNormalHighResidue_card_cast_le
      hLower hUpper hBout hpivotResidual hpivotOdd hconstantFive hcoset
  · have hpivotCompletion : pivot ∈ hallCompletion N B :=
      (Finset.mem_sdiff.mp hpivotResidual).1
    have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
    exact fiveMillionPivotSupport_rootProfile_le squareCoset hLower hUpper
      (Finset.mem_Icc.mp hpivotBounds).1 (Finset.mem_Icc.mp hpivotBounds).2

theorem fiveMillionFiveTwistHighResidue_rootRow
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    FiveMillionHighResidueRootRow N pivot baseResidue
      (oddRootFiveTwistSurvivorCount
        (fiveMillionPivotSupport pivot).dropLast squareCoset) := by
  constructor
  · exact fiveMillionFiveTwistHighResidue_card_cast_le
      hLower hUpper hBout hpivotResidual hpivotOdd hconstantFive
        hconstantTwentyFive hcoset
  · have hpivotCompletion : pivot ∈ hallCompletion N B :=
      (Finset.mem_sdiff.mp hpivotResidual).1
    have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
    exact fiveMillionPivotSupport_fiveTwist_rootProfile_le
      squareCoset hLower hUpper (Finset.mem_Icc.mp hpivotBounds).1
        (Finset.mem_Icc.mp hpivotBounds).2

theorem fiveMillionEmptyHighResidue_rootRow
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hempty : twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 49) baseResidue = ∅) :
    FiveMillionHighResidueRootRow N pivot baseResidue
      (oddRootWordSurvivorCount
        (fiveMillionPivotSupport pivot).dropLast false) := by
  constructor
  · rw [hempty]
    simp only [Finset.card_empty, Nat.cast_zero]
    apply mul_nonneg (Nat.cast_nonneg _)
    apply add_nonneg (Nat.cast_nonneg _)
    exact div_nonneg
      (mul_nonneg (by norm_num) (Nat.cast_nonneg _)) (Nat.cast_nonneg _)
  · have hpivotCompletion : pivot ∈ hallCompletion N B :=
      (Finset.mem_sdiff.mp hpivotResidual).1
    have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
    exact fiveMillionPivotSupport_rootProfile_le false hLower hUpper
      (Finset.mem_Icc.mp hpivotBounds).1 (Finset.mem_Icc.mp hpivotBounds).2

set_option maxHeartbeats 600000
/-- A whole residue progression is controlled by one survivor row.  The row
may be the ordinary or five-twist row, but no per-point choice remains. -/
theorem fiveMillionHighResidue_exists_rootRow
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    ∃ survivors : ℕ,
      FiveMillionHighResidueRootRow N pivot baseResidue survivors := by
  classical
  by_cases hempty : twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 49) baseResidue = ∅
  · refine ⟨oddRootWordSurvivorCount
      (fiveMillionPivotSupport pivot).dropLast false, ?_⟩
    exact fiveMillionEmptyHighResidue_rootRow
      (N := N) (B := B) (pivot := pivot) (baseResidue := baseResidue)
      hLower hUpper hBout hpivotResidual hempty
  obtain ⟨point, hpoint⟩ := Finset.nonempty_iff_ne_empty.mpr hempty
  have hpointParts := Finset.mem_filter.mp hpoint
  have hpointLow : point ∈ lowBaseSet N :=
    (Finset.mem_filter.mp hpointParts.1).1
  have hpointResidue : point % 25 = baseResidue := hpointParts.2
  have hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1 :=
    fiveMillionBaseConstant_not_twentyFive_dvd
      (N := N) (B := B) (pivot := pivot) (point := point)
      (baseResidue := baseResidue)
      hBout hpivotResidual hpointLow hpointResidue
  by_cases hconstantFive : 5 ∣ pivot * baseResidue + 1
  · have hquotientFive : ¬ 5 ∣ (pivot * baseResidue + 1) / 5 :=
      not_five_dvd_div_five_of_not_twentyFive
        (constant := pivot * baseResidue + 1)
        hconstantFive hconstantTwentyFive
    obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hquotientFive
    refine ⟨oddRootFiveTwistSurvivorCount
      (fiveMillionPivotSupport pivot).dropLast squareCoset, ?_⟩
    exact fiveMillionFiveTwistHighResidue_rootRow
      (N := N) (B := B) (pivot := pivot) (baseResidue := baseResidue)
      (squareCoset := squareCoset)
      hLower hUpper hBout hpivotResidual hpivotOdd hconstantFive
        hconstantTwentyFive hcoset
  · obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hconstantFive
    refine ⟨oddRootWordSurvivorCount
      (fiveMillionPivotSupport pivot).dropLast squareCoset, ?_⟩
    exact fiveMillionNormalHighResidue_rootRow
      (N := N) (B := B) (pivot := pivot) (baseResidue := baseResidue)
      (squareCoset := squareCoset)
      hLower hUpper hBout hpivotResidual hpivotOdd hconstantFive hcoset

set_option maxHeartbeats 200000

#print axioms fiveMillionHighResidue_exists_rootRow

end Erdos848
