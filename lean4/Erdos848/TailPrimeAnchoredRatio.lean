import Erdos848.TailPrimeAnchoredSieve

namespace Erdos848

/-!
# Ratio forms of the anchored prime sieve

The sieve theorem is affine in its argument.  These lemmas divide that
affine bound by the ambient `N` without introducing any new prime data.
For a finite interval the sign of the affine intercept automatically chooses
the better endpoint; for an unbounded interval a negative intercept is
discarded and a positive one is paid at the lower endpoint.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive AnchoredPrimeProfileId where
  | p16
  | p18
  | p30
  | p47
  deriving DecidableEq

def AnchoredPrimeProfileId.profile :
    AnchoredPrimeProfileId → AnchoredPrimeSieveProfile
  | .p16 => anchoredPrimeProfile16
  | .p18 => anchoredPrimeProfile18
  | .p30 => anchoredPrimeProfile30
  | .p47 => anchoredPrimeProfile47

def anchoredPrimeAffineIntercept
    (profile : AnchoredPrimeSieveProfile) : Rat :=
  anchoredPrimeUpper + profile.termCount -
    profile.densityUpper * anchoredPrimePoint

theorem primeCounting_cast_le_anchoredAffine
    (profile : AnchoredPrimeSieveProfile)
    {y : Nat} (hy : anchoredPrimePoint ≤ y) :
    (Nat.primeCounting y : Rat) ≤
      profile.densityUpper * y +
        anchoredPrimeAffineIntercept profile := by
  have hcount :=
    primeCounting_cast_le_anchoredProfile profile hy
  calc
    (Nat.primeCounting y : Rat) ≤
        anchoredPrimeUpper +
          profile.densityUpper *
            ((y : Rat) - anchoredPrimePoint) +
          profile.termCount := hcount
    _ = profile.densityUpper * y +
        anchoredPrimeAffineIntercept profile := by
      unfold anchoredPrimeAffineIntercept
      ring

theorem AnchoredPrimeProfileId.density_nonneg
    (id : AnchoredPrimeProfileId) :
    (0 : Rat) ≤ id.profile.densityUpper := by
  cases id <;>
    norm_num [AnchoredPrimeProfileId.profile,
      anchoredPrimeProfile16, anchoredPrimeProfile18,
      anchoredPrimeProfile30, anchoredPrimeProfile47]

def anchoredFinitePrimeDoubleRatioBound
    (id : AnchoredPrimeProfileId)
    (split lower upper : Nat) : Rat :=
  let profile := id.profile
  let intercept := anchoredPrimeAffineIntercept profile
  2 * (profile.densityUpper / split +
    max (intercept / lower) (intercept / upper))

def anchoredTerminalPrimeDoubleRatioBound
    (id : AnchoredPrimeProfileId)
    (split lower : Nat) : Rat :=
  let profile := id.profile
  let intercept := anchoredPrimeAffineIntercept profile
  2 * (profile.densityUpper / split +
    max (intercept / lower) 0)

private theorem anchored_prime_floor_ratio_le
    {N split : Nat} (hN : 0 < N) (hSplit : 0 < split) :
    ((N / split : Nat) : Rat) / N ≤ 1 / split := by
  have hfloorNat :
      (N / split) * split ≤ N :=
    Nat.div_mul_le_self N split
  have hfloor :
      ((N / split : Nat) : Rat) ≤ (N : Rat) / split := by
    have hcast :
        (((N / split) * split : Nat) : Rat) ≤ N := by
      exact_mod_cast hfloorNat
    have hSplitQ : (0 : Rat) < split := by
      exact_mod_cast hSplit
    push_cast at hcast
    exact (le_div_iff₀ hSplitQ).2
      (by simpa [mul_comm] using hcast)
  have hNQ : (0 : Rat) < N := by exact_mod_cast hN
  have hSplitQ : (0 : Rat) < split := by exact_mod_cast hSplit
  calc
    ((N / split : Nat) : Rat) / N ≤
        ((N : Rat) / split) / N :=
      div_le_div_of_nonneg_right hfloor hNQ.le
    _ = 1 / split := by
      field_simp [ne_of_gt hNQ, ne_of_gt hSplitQ]

private theorem anchored_intercept_ratio_le_finiteEndpoints
    {intercept : Rat} {lower N upper : Nat}
    (hLowerPos : 0 < lower)
    (hLower : lower ≤ N)
    (hUpper : N ≤ upper) :
    intercept / N ≤
      max (intercept / lower) (intercept / upper) := by
  have hNPos : 0 < N := hLowerPos.trans_le hLower
  have hUpperPos : 0 < upper := hNPos.trans_le hUpper
  have hLowerQ : (lower : Rat) ≤ N := by exact_mod_cast hLower
  have hUpperQ : (N : Rat) ≤ upper := by exact_mod_cast hUpper
  have hLowerQPos : (0 : Rat) < lower := by exact_mod_cast hLowerPos
  have hNQPos : (0 : Rat) < N := by exact_mod_cast hNPos
  have hUpperQPos : (0 : Rat) < upper := by exact_mod_cast hUpperPos
  by_cases hintercept : 0 ≤ intercept
  · exact (div_le_div_of_nonneg_left
      hintercept hLowerQPos hLowerQ).trans (le_max_left _ _)
  · have hnonpos : intercept ≤ 0 := le_of_not_ge hintercept
    have hendpoint : intercept / N ≤ intercept / upper := by
      apply (div_le_div_iff₀ hNQPos hUpperQPos).2
      nlinarith
    exact hendpoint.trans (le_max_right _ _)

private theorem anchored_intercept_ratio_le_terminal
    {intercept : Rat} {lower N : Nat}
    (hLowerPos : 0 < lower)
    (hLower : lower ≤ N) :
    intercept / N ≤ max (intercept / lower) 0 := by
  have hNPos : 0 < N := hLowerPos.trans_le hLower
  have hLowerQ : (lower : Rat) ≤ N := by exact_mod_cast hLower
  have hLowerQPos : (0 : Rat) < lower := by exact_mod_cast hLowerPos
  have hNQPos : (0 : Rat) < N := by exact_mod_cast hNPos
  by_cases hintercept : 0 ≤ intercept
  · exact (div_le_div_of_nonneg_left
      hintercept hLowerQPos hLowerQ).trans (le_max_left _ _)
  · have hnonpos : intercept ≤ 0 := le_of_not_ge hintercept
    have hzero : intercept / N ≤ 0 := by
      exact div_nonpos_of_nonpos_of_nonneg hnonpos hNQPos.le
    exact hzero.trans (le_max_right _ _)

theorem primeCounting_doubleRatio_le_anchoredFinite
    (id : AnchoredPrimeProfileId)
    {split lower upper N : Nat}
    (hLowerPos : 0 < lower)
    (hLower : lower ≤ N)
    (hUpper : N ≤ upper)
    (hSplit : 0 < split)
    (hAnchor : anchoredPrimePoint ≤ lower / split) :
    2 * (Nat.primeCounting (N / split) : Rat) / N ≤
      anchoredFinitePrimeDoubleRatioBound
        id split lower upper := by
  let profile := id.profile
  let intercept := anchoredPrimeAffineIntercept profile
  have hNPos : 0 < N := hLowerPos.trans_le hLower
  have hAnchorN : anchoredPrimePoint ≤ N / split :=
    hAnchor.trans (Nat.div_le_div_right hLower)
  have hcount :=
    primeCounting_cast_le_anchoredAffine profile hAnchorN
  have hNQPos : (0 : Rat) < N := by exact_mod_cast hNPos
  have hfloor :=
    anchored_prime_floor_ratio_le hNPos hSplit
  have hfloorInv :
      ((N / split : Nat) : Rat) / N ≤
        ((split : Rat)⁻¹) := by
    simpa only [one_div] using hfloor
  have hintercept :=
    anchored_intercept_ratio_le_finiteEndpoints
      (intercept := intercept) hLowerPos hLower hUpper
  have hdensity := id.density_nonneg
  unfold anchoredFinitePrimeDoubleRatioBound
  dsimp only [profile, intercept]
  calc
    2 * (Nat.primeCounting (N / split) : Rat) / N ≤
        2 * (profile.densityUpper * (N / split : Nat) +
          intercept) / N := by
      exact div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left hcount (by norm_num))
        hNQPos.le
    _ =
        2 * (profile.densityUpper *
          (((N / split : Nat) : Rat) / N) +
            intercept / N) := by ring
    _ ≤
        2 * (profile.densityUpper / split +
          max (intercept / lower) (intercept / upper)) := by
      gcongr
      exact mul_le_mul_of_nonneg_left hfloorInv hdensity

theorem primeCounting_doubleRatio_le_anchoredTerminal
    (id : AnchoredPrimeProfileId)
    {split lower N : Nat}
    (hLowerPos : 0 < lower)
    (hLower : lower ≤ N)
    (hSplit : 0 < split)
    (hAnchor : anchoredPrimePoint ≤ lower / split) :
    2 * (Nat.primeCounting (N / split) : Rat) / N ≤
      anchoredTerminalPrimeDoubleRatioBound id split lower := by
  let profile := id.profile
  let intercept := anchoredPrimeAffineIntercept profile
  have hNPos : 0 < N := hLowerPos.trans_le hLower
  have hAnchorN : anchoredPrimePoint ≤ N / split :=
    hAnchor.trans (Nat.div_le_div_right hLower)
  have hcount :=
    primeCounting_cast_le_anchoredAffine profile hAnchorN
  have hNQPos : (0 : Rat) < N := by exact_mod_cast hNPos
  have hfloor :=
    anchored_prime_floor_ratio_le hNPos hSplit
  have hfloorInv :
      ((N / split : Nat) : Rat) / N ≤
        ((split : Rat)⁻¹) := by
    simpa only [one_div] using hfloor
  have hintercept :=
    anchored_intercept_ratio_le_terminal
      (intercept := intercept) hLowerPos hLower
  have hdensity := id.density_nonneg
  unfold anchoredTerminalPrimeDoubleRatioBound
  dsimp only [profile, intercept]
  calc
    2 * (Nat.primeCounting (N / split) : Rat) / N ≤
        2 * (profile.densityUpper * (N / split : Nat) +
          intercept) / N := by
      exact div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left hcount (by norm_num))
        hNQPos.le
    _ =
        2 * (profile.densityUpper *
          (((N / split : Nat) : Rat) / N) +
            intercept / N) := by ring
    _ ≤
        2 * (profile.densityUpper / split +
          max (intercept / lower) 0) := by
      gcongr
      exact mul_le_mul_of_nonneg_left hfloorInv hdensity

#print axioms primeCounting_doubleRatio_le_anchoredFinite
#print axioms primeCounting_doubleRatio_le_anchoredTerminal

end Erdos848
