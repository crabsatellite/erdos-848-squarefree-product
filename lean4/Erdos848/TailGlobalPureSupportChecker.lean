import Erdos848.TailSupportWordBridge
import Erdos848.TailSupportDomainChecker
import Erdos848.TailPureFiveMillionBudget
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848

/-!
# Uniform pure-support endpoint checker

This is the kernel-facing form of the direct `N ≥ 5,000,000` support
calculation.  It enumerates prime-support states only.  No interval of ambient
values of `N` is scanned.
-/

/-- Product threshold above which the crude 135-survivor row is sufficient. -/
def globalPureSupportProductThreshold : ℕ → ℕ
  | 0 => 3_020_678
  | 1 => 6_041_346
  | 2 => 12_082_682
  | 3 => 24_165_355
  | 4 => 48_330_701
  | 5 => 96_661_392
  | 6 => 193_322_775
  | 7 => 386_645_540
  | 8 => 773_291_070
  | k + 9 => 1_546_582_131 * 2 ^ k

/-- First entry of an ordered candidate list strictly larger than `lower`. -/
def firstGreater (lower : ℕ) : List ℕ → ℕ
  | [] => 0
  | value :: values => if lower < value then value else firstGreater lower values

/-- The least support product forced by a retained prefix.  The final prime is
not put into the QR mask; it is used only as the extension witness. -/
def globalPureSupportLowerProduct (supportPrefix : List ℕ) : ℕ :=
  supportPrefix.prod *
    GeneratedTailGlobalPureSupportCoverage.supportExtensionPrime
      (supportPrefix.getLast?.getD 0)

/-- Genuine first ambient endpoint at which a pivot with this support prefix
can occur.  The support product divides the pivot, hence it is bounded by `N`
rather than by `2N`. -/
def globalPureSupportEndpoint (supportPrefix : List ℕ) : ℕ :=
  max 5_000_000 (globalPureSupportLowerProduct supportPrefix)

/-- Specialized 676-bit support word.  Unlike the legacy endpoint table, this
does not materialize the unused words 11 through 37. -/
def globalPureOddRootSupportWord : List ℕ → Bool → ℕ → ℕ
  | [], squareCoset, wordIndex =>
      (if squareCoset then GeneratedTailSupportCoverage.squareCosetWords
       else GeneratedTailSupportCoverage.nonsquareCosetWords).getD wordIndex 0
  | p :: support, squareCoset, wordIndex =>
      (GeneratedTailGlobalPureSupportCoverage.supportQrMaskWords p).getD
          wordIndex 0 &&&
        globalPureOddRootSupportWord support squareCoset wordIndex

def countGlobalPureOddRootWords
    (support : List ℕ) (squareCoset : Bool) (start : ℕ) : ℕ → ℕ
  | 0 => 0
  | count + 1 =>
      ((globalPureOddRootSupportWord support squareCoset start) &&&
        oddIndexWordMask).bits.count true +
      countGlobalPureOddRootWords support squareCoset (start + 1) count

/-- Exact popcount through quotient 676: ten full words and 36 live bits. -/
def globalPureOddRootSurvivorCount
    (support : List ℕ) (squareCoset : Bool) : ℕ :=
  countGlobalPureOddRootWords support squareCoset 0 10 +
    ((((globalPureOddRootSupportWord support squareCoset 10) &&&
      oddIndexWordMask) % 2 ^ 36).bits.count true)

/-- Rational upper row after replacing `⌊N/50⌋` by `N/50`. -/
def globalPureRootUpperRow
    (N Y height survivors : ℕ) : ℚ :=
  (height * survivors : ℚ) / N +
    (height : ℚ) / (25 * Y) +
    (2 * height : ℚ) / (Y * N)

theorem globalPureRootUpperRow_antitone
    {N₁ N₂ Y₁ Y₂ height survivors : ℕ}
    (hN₁ : 0 < N₁) (hY₁ : 0 < Y₁)
    (hN : N₁ ≤ N₂) (hY : Y₁ ≤ Y₂) :
    globalPureRootUpperRow N₂ Y₂ height survivors ≤
      globalPureRootUpperRow N₁ Y₁ height survivors := by
  have hN₂ : 0 < N₂ := hN₁.trans_le hN
  have hY₂ : 0 < Y₂ := hY₁.trans_le hY
  have hNQ₁ : (0 : ℚ) < N₁ := by exact_mod_cast hN₁
  have hNQ₂ : (0 : ℚ) < N₂ := by exact_mod_cast hN₂
  have hYQ₁ : (0 : ℚ) < Y₁ := by exact_mod_cast hY₁
  have hYQ₂ : (0 : ℚ) < Y₂ := by exact_mod_cast hY₂
  have hNQ : (N₁ : ℚ) ≤ N₂ := by exact_mod_cast hN
  have hYQ : (Y₁ : ℚ) ≤ Y₂ := by exact_mod_cast hY
  have hYN : (Y₁ * N₁ : ℚ) ≤ Y₂ * N₂ := by
    exact_mod_cast Nat.mul_le_mul hY hN
  unfold globalPureRootUpperRow
  have hfirst :
      (height * survivors : ℚ) / N₂ ≤
        (height * survivors : ℚ) / N₁ := by
    exact div_le_div_of_nonneg_left (by positivity) hNQ₁ hNQ
  have hsecond :
      (height : ℚ) / (25 * Y₂) ≤
        (height : ℚ) / (25 * Y₁) := by
    apply div_le_div_of_nonneg_left (by positivity) (by positivity)
    exact mul_le_mul_of_nonneg_left hYQ (by norm_num)
  have hthird :
      (2 * height : ℚ) / (Y₂ * N₂) ≤
        (2 * height : ℚ) / (Y₁ * N₁) := by
    exact div_le_div_of_nonneg_left (by positivity) (mul_pos hYQ₁ hNQ₁) hYN
  linarith

/-- Cross-multiplied exact endpoint check.  Its right side is the normalized
five-million root envelope `pureFiveMillionRootEnvelope / 5,000,000`. -/
def globalPureRootEndpointPasses
    (height survivors N : ℕ) : Bool :=
  let Y := N / 26
  decide (
    height * (25 * Y * survivors + N + 50) * 15_625_000_000 ≤
      11_264_064 * 25 * Y * N)

/-- Cheap semantic side condition: every mask used by a finite prefix lies in
the short table whose equality with the certified table is checked once. -/
def globalPureSupportMaskUpper (supportPrefix : List ℕ) : Bool :=
  supportPrefix.all fun p => decide (p ≤ 3467)

/-- The finite support-prefix predicate checked by generated modules. -/
def globalPureSupportPrefixPasses (k : ℕ) (supportPrefix : List ℕ) : Bool :=
  let N := globalPureSupportEndpoint supportPrefix
  let height := 4 * 2 ^ (k + 1)
  globalPureRootEndpointPasses height
      (globalPureOddRootSurvivorCount supportPrefix true) N &&
    globalPureRootEndpointPasses height
      (globalPureOddRootSurvivorCount supportPrefix false) N

/-- Structurally feasible retained prefixes below the analytic threshold. -/
def globalOddRootFeasiblePrefixes (k : ℕ) : List (List ℕ) :=
  if _hk : k = 0 then [[]]
  else
    feasibleSupportPrefixes (globalPureSupportProductThreshold k)
      (k - 1) 1
      GeneratedTailGlobalPureSupportCoverage.supportPrimes

theorem globalPureSupportEndpoint_pos (supportPrefix : List ℕ) :
    0 < globalPureSupportEndpoint supportPrefix := by
  exact lt_of_lt_of_le (by norm_num) (Nat.le_max_left _ _)

theorem globalPureSupportEndpoint_split_pos (supportPrefix : List ℕ) :
    0 < globalPureSupportEndpoint supportPrefix / 26 := by
  have h := globalPureSupportEndpoint_pos supportPrefix
  unfold globalPureSupportEndpoint at h ⊢
  omega

/-- Soundness of the Boolean endpoint inequality. -/
theorem globalPureRootEndpointPasses_sound
    {height survivors N : ℕ}
    (hN : 0 < N / 26)
    (hpass : globalPureRootEndpointPasses height survivors N = true) :
    globalPureRootUpperRow N (N / 26) height survivors ≤
      pureFiveMillionRootEnvelope / 5_000_000 := by
  have hnat :
      height * (25 * (N / 26) * survivors + N + 50) * 15_625_000_000 ≤
        11_264_064 * 25 * (N / 26) * N := by
    exact of_decide_eq_true (by
      simpa [globalPureRootEndpointPasses] using hpass)
  have hNpos : 0 < N := by omega
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hNpos
  have hYQ : (0 : ℚ) < (N / 26 : ℕ) := by exact_mod_cast hN
  have hdenQ : (0 : ℚ) < 25 * (N / 26 : ℕ) * N := by positivity
  have htargetDenQ : (0 : ℚ) < 3_125 * 5_000_000 := by norm_num
  have hrow :
      globalPureRootUpperRow N (N / 26) height survivors =
        ((height : ℚ) *
          (25 * (N / 26 : ℕ) * survivors + N + 50)) /
            (25 * (N / 26 : ℕ) * N) := by
    unfold globalPureRootUpperRow
    push_cast
    field_simp
    ring
  rw [hrow]
  unfold pureFiveMillionRootEnvelope
  rw [div_div]
  apply (div_le_div_iff₀ hdenQ htargetDenQ).2
  norm_num only
  have hnat' :
      height * (25 * (N / 26) * survivors + N + 50) * 15_625_000_000 ≤
        11_264_064 * (25 * (N / 26) * N) := by
    calc
      height * (25 * (N / 26) * survivors + N + 50) * 15_625_000_000 ≤
          11_264_064 * 25 * (N / 26) * N := hnat
      _ = 11_264_064 * (25 * (N / 26) * N) := by ring
  exact_mod_cast hnat'

theorem globalPureSupportPrefixPasses_sound
    {k : ℕ} {supportPrefix : List ℕ} {squareCoset : Bool}
    (hpass : globalPureSupportPrefixPasses k supportPrefix = true) :
    globalPureRootUpperRow
        (globalPureSupportEndpoint supportPrefix)
        (globalPureSupportEndpoint supportPrefix / 26)
        (4 * 2 ^ (k + 1))
        (globalPureOddRootSurvivorCount supportPrefix squareCoset) ≤
      pureFiveMillionRootEnvelope / 5_000_000 := by
  have hparts :
      globalPureRootEndpointPasses (4 * 2 ^ (k + 1))
          (globalPureOddRootSurvivorCount supportPrefix true)
          (globalPureSupportEndpoint supportPrefix) = true ∧
        globalPureRootEndpointPasses (4 * 2 ^ (k + 1))
          (globalPureOddRootSurvivorCount supportPrefix false)
          (globalPureSupportEndpoint supportPrefix) = true := by
    simpa only [globalPureSupportPrefixPasses, Bool.and_eq_true] using hpass
  cases squareCoset
  · exact globalPureRootEndpointPasses_sound
      (globalPureSupportEndpoint_split_pos supportPrefix) hparts.2
  · exact globalPureRootEndpointPasses_sound
      (globalPureSupportEndpoint_split_pos supportPrefix) hparts.1

#print axioms globalPureRootEndpointPasses_sound
#print axioms globalPureSupportPrefixPasses_sound

end Erdos848
