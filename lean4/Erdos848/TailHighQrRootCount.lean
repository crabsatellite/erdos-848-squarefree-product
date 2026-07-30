import Erdos848.TailHighQrActualParameter
import Erdos848.TailTwentyMillionRootReciprocal

namespace Erdos848

/-!
# Valuation-sensitive high QR root count

The checked survivor cardinality is combined with the same transformed
parameter spacing lemma used by the finite paper blocks.  The two-adic root
factor is an explicit parameter, so the four classes later consume
`1, 2, 4, 1` rather than a coarse uniform factor.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def highQrRootHighCoefficient
    (rootFactor supportLength target split N : Nat) : Rat :=
  (rootFactor * 2 ^ (supportLength + 1) : Nat) *
    ((target : Rat) +
      ((N / 25 + 2 : Nat) : Rat) /
          (2 * ((N / split : Nat) : Rat)) *
        (4 + (target : Rat) / 3026))

theorem highQrRootSurvivorFinset_subset_coset
    (certificate : CertifiedHighQrScreenRow)
    (lookup : Nat → List Nat) (support : List Nat) :
    highQrRootSurvivorFinset certificate.row.M lookup
        certificate.baseWords support ⊆
      modFiveCosetBlock certificate.row.squareCoset
        1 certificate.row.M := by
  intro m hm
  have hparts := Finset.mem_filter.mp hm
  have hmIco := Finset.mem_Ico.mp hparts.1
  have hbit := hparts.2
  rw [highQrSupportWords_testBit] at hbit
  have hbaseBit := (Bool.and_eq_true_iff.mp hbit).2
  have hcoset :
      modFiveCosetAccepts certificate.row.squareCoset m = true := by
    rw [← certificate.baseCertificate.testBit_eq_accepts
      hmIco.1 (by omega)]
    exact hbaseBit
  apply Finset.mem_filter.mpr
  exact ⟨Finset.mem_Ico.mpr ⟨hmIco.1, by omega⟩, hcoset⟩

theorem highQrRootSurvivor_reciprocal_sum_le_target
    (certificate : CertifiedHighQrScreenRow)
    (lookup : Nat → List Nat) (support : List Nat)
    (hcard :
      (highQrRootSurvivorFinset certificate.row.M lookup
        certificate.baseWords support).card ≤ certificate.row.target) :
    (∑ m ∈ highQrRootSurvivorFinset certificate.row.M lookup
        certificate.baseWords support, (1 : Rat) / m) ≤
      4 + (certificate.row.target : Rat) / 3026 := by
  let survivors :=
    highQrRootSurvivorFinset certificate.row.M lookup
      certificate.baseWords support
  have hmass :
      (∑ m ∈ survivors, (1 : Rat) / m) ≤
        4 + ((survivors.card : Nat) : Rat) / 3026 := by
    apply reciprocal_sum_le_four_add_card_div_3026
    · intro m hm
      exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
    · intro m hm
      exact (Finset.mem_filter.mp
        (highQrRootSurvivorFinset_subset_coset
          certificate lookup support hm)).2
  have hcardRat :
      ((survivors.card : Nat) : Rat) ≤ certificate.row.target := by
    exact_mod_cast hcard
  exact hmass.trans
    (add_le_add (le_refl (4 : Rat))
      (div_le_div_of_nonneg_right hcardRat (by norm_num)))

private theorem highQrHighResidue_card_cast_le_coefficient
    (certificate : CertifiedHighQrScreenRow)
    (lookup : Nat → List Nat)
    {N pivot baseResidue rootFactor : Nat}
    (hY : 0 < N / certificate.row.split)
    (hmap :
      ∀ point ∈ twoBaseHighTailSquarePointsAtResidue
          N pivot (N / certificate.row.split) baseResidue,
        point / 25 ∈ transformedParameterSet
          (N / 25 + 2) (N / certificate.row.split)
          (25 * pivot) (pivot * baseResidue + 1)
          (highQrRootSurvivorFinset certificate.row.M
            lookup certificate.baseWords
            (highQrSelectedSupport certificate.row
              (fiveMillionPivotSupport pivot))))
    (hcard :
      (highQrRootSurvivorFinset certificate.row.M
        lookup certificate.baseWords
        (highQrSelectedSupport certificate.row
          (fiveMillionPivotSupport pivot))).card ≤
        certificate.row.target)
    (hroots :
      ∀ m ∈ highQrRootSurvivorFinset certificate.row.M
          lookup certificate.baseWords
          (highQrSelectedSupport certificate.row
            (fiveMillionPivotSupport pivot)),
        (transformedRootResidues m (25 * pivot)
          (pivot * baseResidue + 1)).card ≤
            rootFactor *
              2 ^ ((fiveMillionPivotSupport pivot).length + 1))
    (hmodulus : 0 < 25 * pivot) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / certificate.row.split) baseResidue).card : Rat) ≤
      highQrRootHighCoefficient rootFactor
        (fiveMillionPivotSupport pivot).length
        certificate.row.target certificate.row.split N := by
  let survivors :=
    highQrRootSurvivorFinset certificate.row.M
      lookup certificate.baseWords
      (highQrSelectedSupport certificate.row
        (fiveMillionPivotSupport pivot))
  let height :=
    rootFactor *
      2 ^ ((fiveMillionPivotSupport pivot).length + 1)
  have hpointCard :
      (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / certificate.row.split) baseResidue).card ≤
        (transformedParameterSet
          (N / 25 + 2) (N / certificate.row.split)
          (25 * pivot) (pivot * baseResidue + 1)
          survivors).card :=
    globalMixedHighResidue_card_le_restrictedParameterSet hmap
  have hpointCardRat :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / certificate.row.split) baseResidue).card : Rat) ≤
        ((transformedParameterSet
          (N / 25 + 2) (N / certificate.row.split)
          (25 * pivot) (pivot * baseResidue + 1)
          survivors).card : Rat) := by
    exact_mod_cast hpointCard
  have hmPos : ∀ m ∈ survivors, 0 < m := by
    intro m hm
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
  have hreciprocal :
      (∑ m ∈ survivors, (1 : Rat) / m) ≤
        4 + (certificate.row.target : Rat) / 3026 :=
    highQrRootSurvivor_reciprocal_sum_le_target
      certificate lookup
      (highQrSelectedSupport certificate.row
        (fiveMillionPivotSupport pivot)) hcard
  have hparameter :
      ((transformedParameterSet
        (N / 25 + 2) (N / certificate.row.split)
        (25 * pivot) (pivot * baseResidue + 1)
        survivors).card : Rat) ≤
      height * ((survivors.card : Rat) +
        ((N / 25 + 2 : Nat) : Rat) /
            (2 * ((N / certificate.row.split : Nat) : Rat)) *
          (4 + (certificate.row.target : Rat) / 3026)) := by
    exact transformedParameterSet_card_le_reciprocal
      survivors
      (4 + (certificate.row.target : Rat) / 3026)
      hY hmodulus hmPos
      (by simpa [height, survivors] using hroots)
      hreciprocal
  have hcardRat :
      (survivors.card : Rat) ≤ certificate.row.target := by
    exact_mod_cast hcard
  calc
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / certificate.row.split) baseResidue).card : Rat) ≤
      ((transformedParameterSet
        (N / 25 + 2) (N / certificate.row.split)
        (25 * pivot) (pivot * baseResidue + 1)
        survivors).card : Rat) := hpointCardRat
    _ ≤ height * ((survivors.card : Rat) +
        ((N / 25 + 2 : Nat) : Rat) /
            (2 * ((N / certificate.row.split : Nat) : Rat)) *
          (4 + (certificate.row.target : Rat) / 3026)) := hparameter
    _ ≤ height * ((certificate.row.target : Rat) +
        ((N / 25 + 2 : Nat) : Rat) /
            (2 * ((N / certificate.row.split : Nat) : Rat)) *
          (4 + (certificate.row.target : Rat) / 3026)) := by
      gcongr
    _ = highQrRootHighCoefficient rootFactor
        (fiveMillionPivotSupport pivot).length
        certificate.row.target certificate.row.split N := by
      simp [highQrRootHighCoefficient, height]

theorem actualHighQrNormalHighResidue_card_cast_le
    (certificate : CertifiedHighQrScreenRow)
    {N : Nat} {B : Finset Nat}
    {pivot baseResidue rootFactor : Nat}
    (hYFive : 5 < N / certificate.row.split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hconstantFive : ¬5 ∣ pivot * baseResidue + 1)
    (hcoset :
      modFiveCosetAccepts certificate.row.squareCoset
        (pivot * baseResidue + 1) = true)
    (hSupportLength :
      (fiveMillionPivotSupport pivot).length =
        certificate.row.forcing.supportLength)
    (hSupportProduct :
      (fiveMillionPivotSupport pivot).prod <
        certificate.row.forcing.stop)
    (hroots :
      ∀ m,
        (transformedRootResidues m (25 * pivot)
          (pivot * baseResidue + 1)).card ≤
            rootFactor *
              2 ^ ((fiveMillionPivotSupport pivot).length + 1)) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / certificate.row.split) baseResidue).card : Rat) ≤
      highQrRootHighCoefficient rootFactor
        (fiveMillionPivotSupport pivot).length
        certificate.row.target certificate.row.split N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  apply highQrHighResidue_card_cast_le_coefficient
    certificate certificate.normalLookup
      (by omega)
  · intro point hpoint
    exact highQrNormalHighPoint_parameter_mem
      certificate hYFive hBout hpivotResidual hpoint
      hconstantFive hcoset hSupportLength hSupportProduct
  · exact certificate.normalSurvivor_card_le
      (fiveMillionPivotSupport pivot)
      hSupportLength (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot) hSupportProduct
  · intro m hm
    exact hroots m
  · positivity

/- The five-twist coefficient has the same spacing and survivor arithmetic;
the modulus and constant differ only by the stored factor five. -/
theorem actualHighQrFiveTwistHighResidue_card_cast_le
    (certificate : CertifiedHighQrScreenRow)
    {N : Nat} {B : Finset Nat}
    {pivot baseResidue rootFactor : Nat}
    (hYFive : 5 < N / certificate.row.split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬25 ∣ pivot * baseResidue + 1)
    (hcoset :
      modFiveCosetAccepts certificate.row.squareCoset
        ((pivot * baseResidue + 1) / 5) = true)
    (hSupportLength :
      (fiveMillionPivotSupport pivot).length =
        certificate.row.forcing.supportLength)
    (hSupportProduct :
      (fiveMillionPivotSupport pivot).prod <
        certificate.row.forcing.stop)
    (hroots :
      ∀ m,
        (transformedRootResidues m (5 * pivot)
          ((pivot * baseResidue + 1) / 5)).card ≤
            rootFactor *
              2 ^ ((fiveMillionPivotSupport pivot).length + 1)) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / certificate.row.split) baseResidue).card : Rat) ≤
      highQrRootHighCoefficient rootFactor
        (fiveMillionPivotSupport pivot).length
        certificate.row.target certificate.row.split N := by
  let survivors :=
    highQrRootSurvivorFinset certificate.row.M
      certificate.twistLookup certificate.baseWords
      (highQrSelectedSupport certificate.row
        (fiveMillionPivotSupport pivot))
  let height :=
    rootFactor *
      2 ^ ((fiveMillionPivotSupport pivot).length + 1)
  have hmap :
      ∀ point ∈ twoBaseHighTailSquarePointsAtResidue
          N pivot (N / certificate.row.split) baseResidue,
        point / 25 ∈ transformedParameterSet
          (N / 25 + 2) (N / certificate.row.split)
          (5 * pivot) ((pivot * baseResidue + 1) / 5)
          survivors := by
    intro point hpoint
    exact highQrFiveTwistHighPoint_parameter_mem
      certificate hYFive hBout hpivotResidual hpoint
      hconstantFive hconstantTwentyFive hcoset
      hSupportLength hSupportProduct
  have hcard :
      survivors.card ≤ certificate.row.target :=
    certificate.twistSurvivor_card_le
      (fiveMillionPivotSupport pivot)
      hSupportLength (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot) hSupportProduct
  have hpointCard :
      (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / certificate.row.split) baseResidue).card ≤
        (transformedParameterSet
          (N / 25 + 2) (N / certificate.row.split)
          (5 * pivot) ((pivot * baseResidue + 1) / 5)
          survivors).card :=
    globalMixedHighResidue_card_le_restrictedParameterSet hmap
  have hpointCardRat :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / certificate.row.split) baseResidue).card : Rat) ≤
        ((transformedParameterSet
          (N / 25 + 2) (N / certificate.row.split)
          (5 * pivot) ((pivot * baseResidue + 1) / 5)
          survivors).card : Rat) := by
    exact_mod_cast hpointCard
  have hmPos : ∀ m ∈ survivors, 0 < m := by
    intro m hm
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
  have hreciprocal :
      (∑ m ∈ survivors, (1 : Rat) / m) ≤
        4 + (certificate.row.target : Rat) / 3026 :=
    highQrRootSurvivor_reciprocal_sum_le_target
      certificate certificate.twistLookup
      (highQrSelectedSupport certificate.row
        (fiveMillionPivotSupport pivot)) hcard
  have hparameter :
      ((transformedParameterSet
        (N / 25 + 2) (N / certificate.row.split)
        (5 * pivot) ((pivot * baseResidue + 1) / 5)
        survivors).card : Rat) ≤
      height * ((survivors.card : Rat) +
        ((N / 25 + 2 : Nat) : Rat) /
            (2 * ((N / certificate.row.split : Nat) : Rat)) *
          (4 + (certificate.row.target : Rat) / 3026)) := by
    exact transformedParameterSet_card_le_reciprocal
      survivors
      (4 + (certificate.row.target : Rat) / 3026)
      (by omega) (by
        have hpivotCompletion : pivot ∈ hallCompletion N B :=
          (Finset.mem_sdiff.mp hpivotResidual).1
        have hpivotPos : 0 < pivot :=
          (Finset.mem_Icc.mp
            (hallCompletion_subset_Icc hBout hpivotCompletion)).1
        positivity)
      hmPos (by
        intro m hm
        simpa [height] using hroots m)
      hreciprocal
  have hcardRat :
      (survivors.card : Rat) ≤ certificate.row.target := by
    exact_mod_cast hcard
  calc
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / certificate.row.split) baseResidue).card : Rat) ≤
      ((transformedParameterSet
        (N / 25 + 2) (N / certificate.row.split)
        (5 * pivot) ((pivot * baseResidue + 1) / 5)
        survivors).card : Rat) := hpointCardRat
    _ ≤ height * ((survivors.card : Rat) +
        ((N / 25 + 2 : Nat) : Rat) /
            (2 * ((N / certificate.row.split : Nat) : Rat)) *
          (4 + (certificate.row.target : Rat) / 3026)) := hparameter
    _ ≤ height * ((certificate.row.target : Rat) +
        ((N / 25 + 2 : Nat) : Rat) /
            (2 * ((N / certificate.row.split : Nat) : Rat)) *
          (4 + (certificate.row.target : Rat) / 3026)) := by
      gcongr
    _ = highQrRootHighCoefficient rootFactor
        (fiveMillionPivotSupport pivot).length
        certificate.row.target certificate.row.split N := by
      simp [highQrRootHighCoefficient, height]

#print axioms highQrRootSurvivor_reciprocal_sum_le_target
#print axioms actualHighQrNormalHighResidue_card_cast_le
#print axioms actualHighQrFiveTwistHighResidue_card_cast_le

end Erdos848
