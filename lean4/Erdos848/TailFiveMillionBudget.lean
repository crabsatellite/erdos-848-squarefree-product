import Erdos848.TailFiveMillionFiniteDensity
import Erdos848.TailFiveMillionSupport
import Erdos848.TailFiveMillionSquareTailCore
import Erdos848.TailRootEnvelope
import Erdos848.GeneratedTailPrimeIntervalCoverage.Certificate
import Erdos848.GeneratedTailDiagonalCoverage.Certificate
import Erdos848.TailGlobalMixedFiveMillionConstants

namespace Erdos848

/-!
Exact rational arithmetic for the controlling five-million periodic row.
This file deliberately names every input separately: later generated
certificates must prove the diagonal, root, square-tail, and residue-density
envelopes themselves.  Once they do, the terminal strict inequality below is
already a kernel theorem and contains no decimal or floating-point step.
-/

def fiveMillionOneOddS7Density : ℚ := 55 / 196

def fiveMillionOneOddS7PrefixPayment : ℚ := 69795 / 196

def fiveMillionOneOddS7DiagonalEnvelope : ℚ :=
  492664032616705 / 100000000000000000

/-- Kernel-checked eventwise diagonal envelope on the whole literal
`[5_000_000, 10_000_000)` interval.  The generated proof covers every one of
the 139 half-percent blocks and both odd mod-four classes; this theorem is the
stable public bridge from that finite certificate to the controlling budget.
-/
theorem fiveMillionOneOddS7DiagonalEnvelope_kernel_close :
    TailDiagonalSevenCellRatioRange 5_000_000 10_000_000
      fiveMillionOneOddS7DiagonalEnvelope := by
  simpa [fiveMillionOneOddS7DiagonalEnvelope] using
    GeneratedTailDiagonalCoverage.fiveMillionOneOddS7Diagonal_kernel_close

/- Moved to `TailGlobalMixedFiveMillionConstants` so the affine global row
can be checked without loading the interval-specific diagonal certificate. -/

def fiveMillionOddRoot7WitnessN : ℕ := 5_000_107
def fiveMillionOddRoot7WitnessY : ℕ := 102_043
def fiveMillionOddRoot7PrimeDelta : ℕ := 9_768
def fiveMillionOddRoot7Height : ℕ := 64
def fiveMillionOddRoot7Survivors : ℕ := 70

/- Moved to `TailFiveMillionSquareTailCore` so the global Hall tail does not
import the interval-specific diagonal certificate.
def fiveMillionSquareTail7Envelope : ℚ :=
  263529083909042886517376461184337967 /
    8573456796637692379906289787841000000

/-- The formerly external square-tail constant is now a theorem about every
finite set of distinct primes above seven. -/
theorem fiveMillionSquareTail7_kernel_close
    (s : Finset ℕ)
    (hprime : ∀ p ∈ s, Nat.Prime p)
    (hcut : ∀ p ∈ s, 7 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) ≤
      fiveMillionSquareTail7Envelope := by
  simpa [fiveMillionSquareTail7Envelope, primeSquareTail7Envelope] using
    finitePrimeSquareTail7_le s hprime hcut
-/

/-- The archived `55 / 196` density is now justified uniformly over every
allowed mod-49 collision pattern, rather than imported from the Python dynamic
programme. -/
theorem fiveMillionOneOddS7_finite_density_le
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine) :
    (fiveMillionPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot : ℚ) / 1764 ≤ fiveMillionOneOddS7Density := by
  simpa [fiveMillionOneOddS7Density] using
    fiveMillionPeriodicFiniteDensity_le fullModFour modNineEvent
      modFortyNineRoot

theorem fiveMillionOneOddS7_residue_density_le
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine) :
    ((fiveMillionPeriodicFiniteResidues fullModFour modNineEvent
        modFortyNineRoot).card : ℚ) / 1764 ≤
      fiveMillionOneOddS7Density := by
  rw [fiveMillionPeriodicFiniteResidues_card]
  exact fiveMillionOneOddS7_finite_density_le fullModFour modNineEvent
    modFortyNineRoot

private theorem periodicPrefixPayment_le_at_495
    {R : ℕ} (hR : R ≤ 495) :
    (R : ℚ) * (1 - (R : ℚ) / 1764) ≤ 69795 / 196 := by
  have hRq : (R : ℚ) ≤ 495 := by exact_mod_cast hR
  have hnonneg : (0 : ℚ) ≤ R := by positivity
  have hproduct :
      0 ≤ (495 - (R : ℚ)) * (1269 - (R : ℚ)) :=
    mul_nonneg (sub_nonneg.mpr hRq) (by linarith)
  norm_num at hproduct ⊢
  nlinarith

/-- The exact endpoint payment is also uniform: the quadratic prefix error is
increasing throughout the only relevant range `R ≤ 495 < 1764 / 2`. -/
theorem fiveMillionOneOddS7_residue_prefix_payment_le
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine) :
    ((fiveMillionPeriodicFiniteResidues fullModFour modNineEvent
        modFortyNineRoot).card : ℚ) *
        (1 - ((fiveMillionPeriodicFiniteResidues fullModFour modNineEvent
          modFortyNineRoot).card : ℚ) / 1764) ≤
      fiveMillionOneOddS7PrefixPayment := by
  apply (show (fiveMillionOneOddS7PrefixPayment : ℚ) = 69795 / 196 by
    rfl) ▸ periodicPrefixPayment_le_at_495
  rw [fiveMillionPeriodicFiniteResidues_card]
  exact fiveMillionPeriodicFiniteCount_le_495 fullModFour modNineEvent
    modFortyNineRoot

theorem fiveMillionOddRoot7_witness_quotient :
    fiveMillionOddRoot7WitnessN / 49 = fiveMillionOddRoot7WitnessY := by
  norm_num [fiveMillionOddRoot7WitnessN, fiveMillionOddRoot7WitnessY]

/-- The controlling transformed-root row uses exactly the primes in
`(7, 102043]`.  Both endpoint counts are now kernel theorems. -/
theorem fiveMillionOddRoot7_primeDelta_exact :
    Nat.primeCounting fiveMillionOddRoot7WitnessY -
        Nat.primeCounting 7 = fiveMillionOddRoot7PrimeDelta := by
  rw [show Nat.primeCounting fiveMillionOddRoot7WitnessY = 9_772 by
    simpa [fiveMillionOddRoot7WitnessY] using
      GeneratedTailPrimeIntervalCoverage.primeCounting_102043]
  have hpiSeven : Nat.primeCounting 7 = 4 := by decide
  rw [hpiSeven]
  norm_num [fiveMillionOddRoot7PrimeDelta]

/-- Exact arithmetic identity for the archived controlling root row.  The
prime-count delta `9768` and support maximum `70` are kernel theorems; the
remaining root obligation is the finite jump-scan maximality. -/
theorem fiveMillionOddRoot7_witness_exact :
    transformedRootRow fiveMillionOddRoot7WitnessN
        fiveMillionOddRoot7WitnessY fiveMillionOddRoot7PrimeDelta
        fiveMillionOddRoot7Height fiveMillionOddRoot7Survivors =
      fiveMillionOddRoot7Envelope := by
  norm_num [transformedRootRow, fiveMillionOddRoot7WitnessN,
    fiveMillionOddRoot7WitnessY, fiveMillionOddRoot7PrimeDelta,
    fiveMillionOddRoot7Height, fiveMillionOddRoot7Survivors,
    fiveMillionOddRoot7Envelope]

theorem fiveMillionOddRoot7_witness_primeCounting_exact :
    transformedRootRow fiveMillionOddRoot7WitnessN
        fiveMillionOddRoot7WitnessY
        (Nat.primeCounting fiveMillionOddRoot7WitnessY -
          Nat.primeCounting 7)
        fiveMillionOddRoot7Height fiveMillionOddRoot7Survivors =
      fiveMillionOddRoot7Envelope := by
  rw [fiveMillionOddRoot7_primeDelta_exact]
  exact fiveMillionOddRoot7_witness_exact

theorem fiveMillionOneOddS7_residue_count :
    fiveMillionOneOddS7Density * 1764 = 495 := by
  norm_num [fiveMillionOneOddS7Density]

theorem fiveMillionOneOddS7_prefix_payment :
    495 * (1 - fiveMillionOneOddS7Density) =
      fiveMillionOneOddS7PrefixPayment := by
  norm_num [fiveMillionOneOddS7Density, fiveMillionOneOddS7PrefixPayment]

/-- The exact controlling budget from the archived `O1, s = 7` row.  The
left side is, in order, the eventwise diagonal, periodic finite payment,
transformed-root payment, square tail, and raw charge. -/
theorem fiveMillionOneOddS7_budget :
    fiveMillionOneOddS7DiagonalEnvelope +
        (2 * fiveMillionOneOddS7Density / 25 +
          2 * (fiveMillionOneOddS7Density +
            fiveMillionOneOddS7PrefixPayment) / 5_000_000) +
        (1 / 2 : ℚ) * fiveMillionOddRoot7Envelope +
        (1 / 2 : ℚ) * 6 * fiveMillionSquareTail7Envelope / 25 +
        128 / 5_000_000 <
      (1 / 25 : ℚ) - 7 / (25 * 5_000_000) := by
  norm_num [fiveMillionOneOddS7DiagonalEnvelope,
    fiveMillionOneOddS7Density, fiveMillionOneOddS7PrefixPayment,
    fiveMillionOddRoot7Envelope, fiveMillionSquareTail7Envelope]

end Erdos848
