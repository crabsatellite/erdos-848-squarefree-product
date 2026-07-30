import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.RootArithmetic

namespace Erdos848

/-! Semantic soundness of the closed finite-root/prime arithmetic checks. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

private theorem fortyMillionFiniteRootCombinedAt_sound
    {coefficient primeCount cutoffCount lower envelopeNumerator : Nat}
    (hLower : 0 < lower)
    (hpass :
      60_000_000 *
          (coefficient + 100 * (primeCount - cutoffCount)) <=
        envelopeNumerator * lower) :
    (((coefficient : Rat) / 100 +
        ((primeCount - cutoffCount : Nat) : Rat)) / lower) <=
      (envelopeNumerator : Rat) / 1_000_000_000 / 6 := by
  have hq :
      ((60_000_000 *
          (coefficient + 100 * (primeCount - cutoffCount)) : Nat) : Rat) <=
        ((envelopeNumerator * lower : Nat) : Rat) := by
    exact_mod_cast hpass
  have hLowerQ : (0 : Rat) < lower := by exact_mod_cast hLower
  rw [div_le_iff₀ hLowerQ]
  push_cast at hq
  norm_num at hq ⊢
  linarith

theorem fortyMillionFiniteRootPrimeBlockPasses_sound
    {block : FortyMillionTenBranchBlock}
    {rootClass : FortyMillionRootClass}
    {N coefficient : Nat} {primeBlock : Nat × Nat × Nat}
    (hcover : block.Covers N)
    (hmem : primeBlock ∈
      GeneratedFortyMillionPrimeUpperCoverage.fortyMillionPrimeUpperBlocks)
    (hstart : primeBlock.1 <= N / 55)
    (hstop : N / 55 <= primeBlock.2.1)
    (hcoefficient : coefficient <=
      fortyMillionRootCoefficientCeiling block rootClass)
    (hpass : fortyMillionFiniteRootPrimeBlockPasses
      block rootClass primeBlock = true) :
    (((coefficient : Rat) / 100 +
        ((Nat.primeCounting (N / 55) -
          Nat.primeCounting (fortyMillionRootPrimeCutoff rootClass) : Nat) :
            Rat)) /
        N) <=
      (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
        1_000_000_000 / 6 := by
  let lower := fortyMillionRootPrimeBlockLower block primeBlock
  have hNpos : 0 < N := by
    have h := hcover.1
    cases block <;>
      norm_num [FortyMillionTenBranchBlock.lower] at h ⊢ <;> omega
  have hstartN : 55 * primeBlock.1 <= N := by
    have hfloor : (N / 55) * 55 <= N := Nat.div_mul_le_self _ _
    omega
  have hLowerN : lower <= N := by
    exact max_le hcover.1 hstartN
  have hLowerPos : 0 < lower := by
    have hBlockLowerPos : 0 < block.lower := by
      cases block <;> norm_num [FortyMillionTenBranchBlock.lower]
    exact hBlockLowerPos.trans_le (by
      simp [lower, fortyMillionRootPrimeBlockLower])
  have hNlt : N < 55 * (N / 55 + 1) := by
    have hmod := Nat.mod_lt N (by norm_num : 0 < 55)
    have hdecomp := Nat.mod_add_div N 55
    omega
  have hLowerPrimeUpper : lower < 55 * (primeBlock.2.1 + 1) := by
    omega
  have hLowerBlockUpper : lower < block.upper :=
    hLowerN.trans_lt hcover.2
  have hLowerPrimeUpper' :
      max block.lower (55 * primeBlock.1) <
        55 * (primeBlock.2.1 + 1) := by
    simpa [lower, fortyMillionRootPrimeBlockLower] using hLowerPrimeUpper
  have hLowerBlockUpper' :
      max block.lower (55 * primeBlock.1) < block.upper := by
    simpa [lower, fortyMillionRootPrimeBlockLower] using hLowerBlockUpper
  have hpassAt :
      60_000_000 *
          (fortyMillionRootCoefficientCeiling block rootClass +
            100 * (primeBlock.2.2 -
              fortyMillionRootPrimeCutoffCount rootClass)) <=
        fortyMillionRootEnvelopeNumerator block rootClass * lower := by
    exact of_decide_eq_true (by
      simpa [fortyMillionFiniteRootPrimeBlockPasses,
        fortyMillionRootPrimeBlockLower, lower,
        hLowerBlockUpper', hLowerPrimeUpper'] using hpass)
  have hcount : Nat.primeCounting (N / 55) <= primeBlock.2.2 :=
    (Nat.monotone_primeCounting hstop).trans
      (GeneratedFortyMillionPrimeUpperCoverage.fortyMillionPrimeUpperBlocks_stop_count
        hmem)
  have hpiCutoff :
      Nat.primeCounting (fortyMillionRootPrimeCutoff rootClass) =
        fortyMillionRootPrimeCutoffCount rootClass := by
    cases rootClass <;> decide
  have hdelta :
      Nat.primeCounting (N / 55) -
          Nat.primeCounting (fortyMillionRootPrimeCutoff rootClass) <=
        primeBlock.2.2 -
          fortyMillionRootPrimeCutoffCount rootClass := by
    rw [hpiCutoff]
    exact Nat.sub_le_sub_right hcount _
  have hnum :
      (coefficient : Rat) / 100 +
          ((Nat.primeCounting (N / 55) -
            Nat.primeCounting
              (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat) <=
        (fortyMillionRootCoefficientCeiling block rootClass : Rat) / 100 +
          ((primeBlock.2.2 -
            fortyMillionRootPrimeCutoffCount rootClass : Nat) : Rat) := by
    gcongr
  have hAt := fortyMillionFiniteRootCombinedAt_sound hLowerPos hpassAt
  calc
    (((coefficient : Rat) / 100 +
        ((Nat.primeCounting (N / 55) -
          Nat.primeCounting
            (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat)) / N) <=
      (((fortyMillionRootCoefficientCeiling block rootClass : Rat) / 100 +
        ((primeBlock.2.2 -
          fortyMillionRootPrimeCutoffCount rootClass : Nat) : Rat)) / N) := by
          exact div_le_div_of_nonneg_right hnum (by positivity)
    _ <= (((fortyMillionRootCoefficientCeiling block rootClass : Rat) / 100 +
        ((primeBlock.2.2 -
          fortyMillionRootPrimeCutoffCount rootClass : Nat) : Rat)) /
            lower) := by
          exact div_le_div_of_nonneg_left (by positivity)
            (by exact_mod_cast hLowerPos) (by exact_mod_cast hLowerN)
    _ <= (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
        1_000_000_000 / 6 := hAt

theorem fortyMillionFiniteRootPrimeAt
    {block : FortyMillionTenBranchBlock}
    {rootClass : FortyMillionRootClass}
    {N coefficient : Nat}
    (hcover : block.Covers N)
    (hcoefficient : coefficient <=
      fortyMillionRootCoefficientCeiling block rootClass) :
    (((coefficient : Rat) / 100 +
        ((Nat.primeCounting (N / 55) -
          Nat.primeCounting (fortyMillionRootPrimeCutoff rootClass) : Nat) :
            Rat)) /
        N) <=
      (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
        1_000_000_000 / 6 := by
  have hLowerN : 40_000_000 <= N := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower] at hcover <;> omega
  have hUpperN : N < 200_000_000 := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.upper] at hcover <;> omega
  have hmod := Nat.mod_lt N (by norm_num : 0 < 55)
  have hdecomp := Nat.mod_add_div N 55
  have hLowerY : 571_429 <= N / 55 := by omega
  have hUpperY : N / 55 <= 3_636_363 := by omega
  obtain ⟨primeBlock, hmem, hstart, hstop⟩ :=
    GeneratedFortyMillionPrimeUpperCoverage.fortyMillionPrimeUpperBlocks_cover
      hLowerY hUpperY
  have hblocks :=
    GeneratedFortyMillionPrimeUpperCoverage.finiteRootPrimeArithmetic_passes
  have hblockPass := (List.all_eq_true.mp hblocks) block (by
    cases block <;> simp [fortyMillionRootBlocks])
  have hclassPass := (List.all_eq_true.mp hblockPass) rootClass (by
    cases rootClass <;> simp [fortyMillionRootClasses])
  have hpass := (List.all_eq_true.mp hclassPass) primeBlock hmem
  exact fortyMillionFiniteRootPrimeBlockPasses_sound
    hcover hmem hstart hstop hcoefficient hpass

#print axioms fortyMillionFiniteRootPrimeBlockPasses_sound
#print axioms fortyMillionFiniteRootPrimeAt

end Erdos848
