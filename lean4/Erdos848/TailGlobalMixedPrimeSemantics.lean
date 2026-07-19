import Erdos848.TailGlobalMixedPrimeCheckerDefs
import Erdos848.TailGlobalMixedFiveMillionConstants
import Erdos848.TailPrimeTerminalSieve
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.PrimePrefixCoverage

namespace Erdos848

/-!
# Prime-count semantics of the fixed-cut global mixed checker

This module turns the checker's cross-multiplied natural-number tests into
the rational inequalities used by the transformed-root argument.  The
finite block data are backed by kernel-checked prime interval trees, while
the terminal branch uses the proved elementary sieve beyond `204081`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private def globalMixedPrimeBlockDiscount
    (block : ℕ × ℕ × ℕ) : ℕ :=
  min (153 * block.1 - 1000 * block.2.2) 11_427_393

private theorem globalMixedPrimeBlockDiscount_pairwise :
    GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.Pairwise
      (fun left right =>
        globalMixedPrimeBlockDiscount left ≤
          globalMixedPrimeBlockDiscount right) := by
  decide

private theorem globalMixedLineDiscountAux_le_blockDiscount
    (endpoint : ℕ) (blocks : List (ℕ × ℕ × ℕ))
    (block : ℕ × ℕ × ℕ)
    (hpairwise : blocks.Pairwise
      (fun left right =>
        globalMixedPrimeBlockDiscount left ≤
          globalMixedPrimeBlockDiscount right))
    (hmem : block ∈ blocks)
    (hendpoint : endpoint < globalMixedSplit * (block.2.1 + 1)) :
    globalMixedLineDiscountAux endpoint blocks ≤
      globalMixedPrimeBlockDiscount block := by
  induction blocks with
  | nil => simp at hmem
  | cons head tail ih =>
      rw [List.pairwise_cons] at hpairwise
      simp only [globalMixedLineDiscountAux]
      split
      case isTrue hhead =>
        rcases List.mem_cons.mp hmem with rfl | hmem
        · exact le_rfl
        · exact hpairwise.1 block hmem
      case isFalse hhead =>
        rcases List.mem_cons.mp hmem with rfl | hmem
        · exact False.elim (hhead hendpoint)
        · exact ih hpairwise.2 hmem

private theorem globalMixedLineDiscount_le_terminal
    (endpoint : ℕ) :
    globalMixedLineDiscount endpoint ≤ 11_427_393 := by
  unfold globalMixedLineDiscount
  generalize
    GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks = blocks
  induction blocks with
  | nil => rfl
  | cons block blocks ih =>
      simp only [globalMixedLineDiscountAux]
      split
      · exact min_le_right _ _
      · exact ih

/-- The generated prime blocks cover every quotient endpoint needed below
the terminal sieve. -/
theorem globalMixedPrimeBlocks_cover
    {y : ℕ} (hyLower : 90_114 ≤ y) (hyUpper : y ≤ 204_081) :
    ∃ block ∈
        GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks,
      block.1 ≤ y ∧ y ≤ block.2.1 := by
  let index := (y - 90_114) / 2048
  let block :=
    GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.getD
      index (0, 0, 0)
  have hindex : index ≤ 55 := by
    dsimp [index]
    omega
  have hmod : (y - 90_114) % 2048 < 2048 :=
    Nat.mod_lt _ (by norm_num)
  have hdecomp := Nat.mod_add_div (y - 90_114) 2048
  have hyDecomp : y = 90_114 + (y - 90_114) := by omega
  refine ⟨block, ?_⟩
  interval_cases hcase : index <;>
    norm_num [block, hcase,
      GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks] <;>
    omega

private theorem globalMixedPrimeBlocks_stop_count_all :
    GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.all
      (fun block =>
        decide (Nat.primeCounting block.2.1 = block.2.2)) = true := by
  norm_num [
      GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_92161,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_94209,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_96257,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_98305,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_100353,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_102401,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_104449,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_106497,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_108545,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_110593,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_112641,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_114689,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_116737,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_118785,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_120833,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_122881,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_124929,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_126977,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_129025,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_131073,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_133121,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_135169,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_137217,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_139265,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_141313,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_143361,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_145409,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_147457,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_149505,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_151553,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_153601,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_155649,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_157697,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_159745,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_161793,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_163841,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_165889,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_167937,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_169985,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_172033,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_174081,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_176129,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_178177,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_180225,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_182273,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_184321,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_186369,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_188417,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_190465,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_192513,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_194561,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_196609,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_198657,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_200705,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_202753,
      GeneratedTailGlobalMixedSupportCoverage.primeCounting_204081]

/-- Each cumulative count stored in a generated block is the literal prime
count at that block's upper endpoint. -/
theorem globalMixedPrimeBlock_stop_count
    {block : ℕ × ℕ × ℕ}
    (hmem :
      block ∈
        GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks) :
    Nat.primeCounting block.2.1 = block.2.2 := by
  exact of_decide_eq_true
    ((List.all_eq_true.mp globalMixedPrimeBlocks_stop_count_all)
      block hmem)

private theorem globalMixedPrimeBlock_rawDiscount_eq
    {block : ℕ × ℕ × ℕ}
    (hmem :
      block ∈
        GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks) :
    153 * block.1 =
      1000 * block.2.2 +
        (153 * block.1 - 1000 * block.2.2) := by
  have hall :
      GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.all
        (fun entry =>
          decide (1000 * entry.2.2 ≤ 153 * entry.1)) = true := by
    decide
  have hle := of_decide_eq_true
    ((List.all_eq_true.mp hall) block hmem)
  omega

/-- Uniform affine prime-count bound selected by a support endpoint. -/
theorem globalMixedPrimeCounting_line_bound
    {endpoint N : ℕ} (hN : 5_000_000 ≤ N) (hEndpoint : endpoint ≤ N) :
    (Nat.primeCounting (N / globalMixedSplit) : ℚ) ≤
      (153 / 1000 : ℚ) * (N / globalMixedSplit : ℕ) -
        (globalMixedLineDiscount endpoint : ℕ) / 1000 := by
  let y := N / globalMixedSplit
  have hyLower : 90_114 ≤ y := by
    dsimp [y, globalMixedSplit]
    omega
  have hmod : N % 55 < 55 :=
    Nat.mod_lt _ (by norm_num)
  have hdecomp := Nat.mod_add_div N 55
  have hNlt : N < globalMixedSplit * (y + 1) := by
    dsimp [y, globalMixedSplit]
    omega
  by_cases hyUpper : y ≤ 204_081
  · obtain ⟨block, hblockMem, hblockLower, hblockUpper⟩ :=
      globalMixedPrimeBlocks_cover hyLower hyUpper
    have hcountNat :
        Nat.primeCounting y ≤ block.2.2 := by
      have hmono := Nat.monotone_primeCounting hblockUpper
      rw [globalMixedPrimeBlock_stop_count hblockMem] at hmono
      exact hmono
    have hendpointBlock :
        endpoint < globalMixedSplit * (block.2.1 + 1) := by
      norm_num [globalMixedSplit] at hNlt ⊢
      omega
    have hdiscountCapped :
        globalMixedLineDiscount endpoint ≤
          globalMixedPrimeBlockDiscount block := by
      unfold globalMixedLineDiscount
      exact globalMixedLineDiscountAux_le_blockDiscount
        endpoint
        GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks
        block globalMixedPrimeBlockDiscount_pairwise hblockMem
        hendpointBlock
    have hdiscountRaw :
        globalMixedLineDiscount endpoint ≤
          153 * block.1 - 1000 * block.2.2 :=
      hdiscountCapped.trans (min_le_left _ _)
    have hrawEq := globalMixedPrimeBlock_rawDiscount_eq hblockMem
    have hcountQ :
        (Nat.primeCounting y : ℚ) ≤ block.2.2 := by
      exact_mod_cast hcountNat
    have hblockLowerQ : (block.1 : ℚ) ≤ y := by
      exact_mod_cast hblockLower
    have hdiscountQ :
        (globalMixedLineDiscount endpoint : ℚ) ≤
          (153 * block.1 - 1000 * block.2.2 : ℕ) := by
      exact_mod_cast hdiscountRaw
    have hrawEqQ :
        (153 : ℚ) * block.1 =
          1000 * block.2.2 +
            (153 * block.1 - 1000 * block.2.2 : ℕ) := by
      exact_mod_cast hrawEq
    have hblockEq :
        (block.2.2 : ℚ) =
          (153 / 1000 : ℚ) * block.1 -
            (153 * block.1 - 1000 * block.2.2 : ℕ) / 1000 := by
      linarith [hrawEqQ]
    dsimp [y, globalMixedSplit] at hcountQ hblockLowerQ ⊢
    calc
      (Nat.primeCounting (N / 55) : ℚ) ≤ block.2.2 := hcountQ
      _ = (153 / 1000 : ℚ) * block.1 -
          (153 * block.1 - 1000 * block.2.2 : ℕ) / 1000 := hblockEq
      _ ≤ (153 / 1000 : ℚ) * (N / 55 : ℕ) -
          (globalMixedLineDiscount endpoint : ℕ) / 1000 := by
        linarith [hblockLowerQ, hdiscountQ]
  · have hyTerminal : 204_081 ≤ y := by omega
    have hcount :=
      primeCounting_le_endpoint_add_terminalSieve hyTerminal
    have hdiscountNat :=
      globalMixedLineDiscount_le_terminal endpoint
    have hdiscountQ :
        (globalMixedLineDiscount endpoint : ℚ) ≤ 11_427_393 := by
      exact_mod_cast hdiscountNat
    dsimp [y] at hcount ⊢
    norm_num [globalMixedSplit] at hcount ⊢
    calc
      (Nat.primeCounting (N / 55) : ℚ) ≤
          18_311 +
            ((153 / 1000 : ℚ) * ((N / 55 : ℕ) - 204_081) + 1486) := hcount
      _ = (153 / 1000 : ℚ) * (N / 55 : ℕ) -
          11_427_393 / 1000 := by ring
      _ ≤ (153 / 1000 : ℚ) * (N / 55 : ℕ) -
          (globalMixedLineDiscount endpoint : ℕ) / 1000 := by
        linarith [hdiscountQ]

theorem globalMixedAffineAt_sound
    {excess endpoint : ℕ} (hEndpoint : 0 < endpoint)
    (hpass :
      (153_000 * endpoint + 55_000 * excess) *
          (6 * 12_755_647_965_025) ≤
        221_926_420_176 * 55_000_000 * endpoint) :
    (153 / 55_000 : ℚ) +
        (excess : ℚ) / (1000 * endpoint) ≤
      fiveMillionOddRoot7Envelope / 6 := by
  have hq :
      (((153_000 * endpoint + 55_000 * excess : ℕ) : ℚ) *
          (6 * 12_755_647_965_025)) ≤
        ((221_926_420_176 * 55_000_000 * endpoint : ℕ) : ℚ) := by
    exact_mod_cast hpass
  have hEndpointQ : (0 : ℚ) < endpoint := by exact_mod_cast hEndpoint
  rw [show
      (153 / 55_000 : ℚ) + (excess : ℚ) / (1000 * endpoint) =
        ((153_000 : ℚ) * endpoint + 55_000 * excess) /
          (55_000_000 * endpoint) by
      field_simp
      ring]
  rw [div_le_iff₀ (mul_pos (by norm_num) hEndpointQ)]
  push_cast at hq
  norm_num [fiveMillionOddRoot7Envelope] at hq ⊢
  linarith

/-- Soundness of the affine-line short circuit for every later ambient
value, including the terminal-sieve range. -/
theorem globalMixedLinePasses_sound
    {coefficient endpoint N : ℕ}
    (hN : 5_000_000 ≤ N) (hEndpointLower : 5_000_000 ≤ endpoint)
    (hEndpoint : endpoint ≤ N)
    (hpass : globalMixedLinePasses coefficient endpoint = true) :
    (((coefficient : ℚ) / 100 +
        Nat.primeCounting (N / globalMixedSplit)) / N) ≤
      fiveMillionOddRoot7Envelope / 6 := by
  have hNpos : 0 < N := lt_of_lt_of_le (by norm_num) hN
  have hNq : (0 : ℚ) < N := by exact_mod_cast hNpos
  have hprime :=
    globalMixedPrimeCounting_line_bound hN hEndpoint
  have hfloorNat :
      (N / globalMixedSplit) * globalMixedSplit ≤ N :=
    Nat.div_mul_le_self _ _
  have hfloorQ :
      ((N / globalMixedSplit : ℕ) : ℚ) ≤
        (N : ℚ) / globalMixedSplit := by
    have hcast :
        (((N / globalMixedSplit) * globalMixedSplit : ℕ) : ℚ) ≤ N := by
      exact_mod_cast hfloorNat
    push_cast at hcast
    norm_num [globalMixedSplit] at hcast ⊢
    linarith
  unfold globalMixedLinePasses at hpass
  dsimp only at hpass
  split at hpass
  case isTrue hpaid =>
    have hpaidQ :
        (coefficient : ℚ) / 100 ≤
          (globalMixedLineDiscount endpoint : ℕ) / 1000 := by
      have hpaidCast :
          (10 * coefficient : ℚ) ≤
            (globalMixedLineDiscount endpoint : ℕ) := by
        exact_mod_cast hpaid
      linarith
    have hnumerator :
        (coefficient : ℚ) / 100 +
            Nat.primeCounting (N / globalMixedSplit) ≤
          (153 / 55_000 : ℚ) * N := by
      norm_num [globalMixedSplit] at hprime hfloorQ ⊢
      linarith
    calc
      ((coefficient : ℚ) / 100 +
          Nat.primeCounting (N / globalMixedSplit)) / N ≤
          ((153 / 55_000 : ℚ) * N) / N :=
        div_le_div_of_nonneg_right hnumerator hNq.le
      _ = 153 / 55_000 := by field_simp
      _ ≤ fiveMillionOddRoot7Envelope / 6 := by
        norm_num [fiveMillionOddRoot7Envelope]
  case isFalse hunpaid =>
    have hcheck :
        (153_000 * endpoint +
              55_000 *
                (10 * coefficient -
                  globalMixedLineDiscount endpoint)) *
              (6 * 12_755_647_965_025) ≤
          221_926_420_176 * 55_000_000 * endpoint :=
      of_decide_eq_true hpass
    have hEndpointPos : 0 < endpoint :=
      lt_of_lt_of_le (by norm_num) hEndpointLower
    have haffine := globalMixedAffineAt_sound hEndpointPos hcheck
    have hexcessEq :
        (globalMixedLineDiscount endpoint : ℕ) +
            (10 * coefficient -
              globalMixedLineDiscount endpoint) =
          10 * coefficient := by
      omega
    have hexcessEqQ :
        (globalMixedLineDiscount endpoint : ℚ) +
            (10 * coefficient -
              globalMixedLineDiscount endpoint : ℕ) =
          10 * coefficient := by
      exact_mod_cast hexcessEq
    have hnumerator :
        (coefficient : ℚ) / 100 +
            Nat.primeCounting (N / globalMixedSplit) ≤
          (153 / 55_000 : ℚ) * N +
            (10 * coefficient -
              globalMixedLineDiscount endpoint : ℕ) / 1000 := by
      norm_num [globalMixedSplit] at hprime hfloorQ ⊢
      linarith
    have hEndpointQ : (0 : ℚ) < endpoint := by
      exact_mod_cast hEndpointPos
    have hdenNat : 1000 * endpoint ≤ 1000 * N :=
      Nat.mul_le_mul_left 1000 hEndpoint
    have hdenQ : (1000 : ℚ) * endpoint ≤ 1000 * N := by
      exact_mod_cast hdenNat
    have hfrac :
        ((10 * coefficient -
            globalMixedLineDiscount endpoint : ℕ) : ℚ) / (1000 * N) ≤
          (10 * coefficient -
            globalMixedLineDiscount endpoint : ℕ) / (1000 * endpoint) := by
      exact div_le_div_of_nonneg_left
        (a := ((10 * coefficient -
          globalMixedLineDiscount endpoint : ℕ) : ℚ))
        (b := (1000 : ℚ) * N) (c := (1000 : ℚ) * endpoint)
        (by positivity) (by positivity) hdenQ
    calc
      ((coefficient : ℚ) / 100 +
          Nat.primeCounting (N / globalMixedSplit)) / N ≤
          (((153 / 55_000 : ℚ) * N +
            (10 * coefficient -
              globalMixedLineDiscount endpoint : ℕ) / 1000) / N) :=
        div_le_div_of_nonneg_right hnumerator hNq.le
      _ = (153 / 55_000 : ℚ) +
          (10 * coefficient -
            globalMixedLineDiscount endpoint : ℕ) / (1000 * N) := by
        field_simp
      _ ≤ (153 / 55_000 : ℚ) +
          (10 * coefficient -
            globalMixedLineDiscount endpoint : ℕ) / (1000 * endpoint) := by
        linarith [hfrac]
      _ ≤ fiveMillionOddRoot7Envelope / 6 := haffine

/-- Soundness of the primitive cross-multiplied combined row. -/
theorem globalMixedCombinedAtPasses_sound
    {coefficient primeCount N : ℕ} (hN : 0 < N)
    (hpass : globalMixedCombinedAtPasses coefficient primeCount N = true) :
    (((coefficient : ℚ) / 100 + (primeCount : ℚ)) / N) ≤
      fiveMillionOddRoot7Envelope / 6 := by
  have hnat :
      (coefficient + 100 * primeCount) *
          (6 * 12_755_647_965_025) ≤
        100 * 221_926_420_176 * N := by
    exact of_decide_eq_true hpass
  have hq :
      ((coefficient + 100 * primeCount : ℕ) : ℚ) *
          (6 * 12_755_647_965_025) ≤
        ((100 * 221_926_420_176 * N : ℕ) : ℚ) := by
    exact_mod_cast hnat
  have hNq : (0 : ℚ) < N := by exact_mod_cast hN
  push_cast at hq
  rw [div_le_iff₀ hNq]
  norm_num [fiveMillionOddRoot7Envelope] at hq ⊢
  linarith

#print axioms globalMixedCombinedAtPasses_sound

end Erdos848
