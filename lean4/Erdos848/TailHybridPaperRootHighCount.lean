import Erdos848.TailHybridPaperRootHighParameter
import Erdos848.TailTwentyMillionRootCounting

namespace Erdos848

/-! # Counting actual high-residue rows in the hybrid paper blocks -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem hybridPaperHighResidue_card_le_parameterSet
    {N pivot baseResidue X Y modulus constant : Nat}
    {survivors : Finset Nat}
    (hmap : ∀ point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot Y baseResidue,
      point / 25 ∈
        transformedParameterSet X Y modulus constant survivors) :
    (twoBaseHighTailSquarePointsAtResidue
        N pivot Y baseResidue).card ≤
      (transformedParameterSet X Y modulus constant survivors).card := by
  classical
  let points :=
    twoBaseHighTailSquarePointsAtResidue N pivot Y baseResidue
  let target := transformedParameterSet X Y modulus constant survivors
  have hresidue : ∀ point ∈ points, point % 25 = baseResidue := by
    intro point hpoint
    exact (Finset.mem_filter.mp hpoint).2
  have hinjective : Set.InjOn (fun point : Nat => point / 25) points :=
    point_div_twentyFive_injective_on_residue hresidue
  have hsubset : points.image (fun point => point / 25) ⊆ target := by
    intro parameter hparameter
    obtain ⟨point, hpoint, rfl⟩ := Finset.mem_image.mp hparameter
    exact hmap point hpoint
  calc
    points.card = (points.image (fun point => point / 25)).card :=
      (Finset.card_image_iff.mpr hinjective).symm
    _ ≤ target.card := Finset.card_le_card hsubset

def hybridPaperRootHighCoefficient
    (regime : HybridPaperDiagonalRegime)
    (supportLength N : Nat) : Rat :=
  (4 * 2 ^ (supportLength + 1) : Nat) *
    ((regime.rootTarget supportLength : Rat) +
      ((N / 25 + 2 : Nat) : Rat) /
          (2 * ((N / regime.rootSplit : Nat) : Rat)) *
        (4 + (regime.rootTarget supportLength : Rat) / 3026))

theorem hybridPaperHighResidue_card_cast_le_coefficient
    (normalProvider : HybridPaperRootCertificateProvider)
    {N pivot baseResidue modulus constant supportLength : Nat}
    {regime : HybridPaperDiagonalRegime}
    {squareCoset : Bool} {lookup : Nat → List Nat}
    {support : List Nat}
    (hLower : 200_000_000 ≤ N)
    (hmodulus : 0 < modulus)
    (hmap : ∀ point ∈
      twoBaseHighTailSquarePointsAtResidue
        N pivot (N / regime.rootSplit) baseResidue,
      point / 25 ∈
        transformedParameterSet
          (N / 25 + 2) (N / regime.rootSplit) modulus constant
          (hybridPaperRootSurvivorFinset
            lookup regime squareCoset support))
    (hcard :
      (hybridPaperRootSurvivorFinset
        lookup regime squareCoset support).card ≤
        regime.rootTarget supportLength)
    (hroots :
      ∀ m ∈ hybridPaperRootSurvivorFinset
          lookup regime squareCoset support,
        (transformedRootResidues m modulus constant).card ≤
          4 * 2 ^ (supportLength + 1)) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / regime.rootSplit) baseResidue).card : Rat) ≤
      hybridPaperRootHighCoefficient regime supportLength N := by
  let survivors :=
    hybridPaperRootSurvivorFinset lookup regime squareCoset support
  let height := 4 * 2 ^ (supportLength + 1)
  have hY : 0 < N / regime.rootSplit := by
    cases regime <;>
      norm_num [HybridPaperDiagonalRegime.rootSplit] at * <;> omega
  have hpointCard :
      (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / regime.rootSplit) baseResidue).card ≤
        (transformedParameterSet
          (N / 25 + 2) (N / regime.rootSplit)
          modulus constant survivors).card :=
    hybridPaperHighResidue_card_le_parameterSet hmap
  have hpointCardRat :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / regime.rootSplit) baseResidue).card : Rat) ≤
        ((transformedParameterSet
          (N / 25 + 2) (N / regime.rootSplit)
          modulus constant survivors).card : Rat) := by
    exact_mod_cast hpointCard
  have hmPos : ∀ m ∈ survivors, 0 < m := by
    intro m hm
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
  have hreciprocal :
      (∑ m ∈ survivors, (1 : Rat) / m) ≤
        4 + (regime.rootTarget supportLength : Rat) / 3026 := by
    exact hybridPaperRootSurvivor_reciprocal_sum_le_target
      normalProvider hcard
  have hparameter :
      ((transformedParameterSet
          (N / 25 + 2) (N / regime.rootSplit)
          modulus constant survivors).card : Rat) ≤
        height * ((survivors.card : Rat) +
          ((N / 25 + 2 : Nat) : Rat) /
              (2 * ((N / regime.rootSplit : Nat) : Rat)) *
            (4 + (regime.rootTarget supportLength : Rat) / 3026)) := by
    exact transformedParameterSet_card_le_reciprocal
      survivors
      (4 + (regime.rootTarget supportLength : Rat) / 3026)
      hY hmodulus hmPos (by simpa [height] using hroots) hreciprocal
  have hcardRat :
      (survivors.card : Rat) ≤
        (regime.rootTarget supportLength : Rat) := by
    exact_mod_cast hcard
  calc
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / regime.rootSplit) baseResidue).card : Rat) ≤
        ((transformedParameterSet
          (N / 25 + 2) (N / regime.rootSplit)
          modulus constant survivors).card : Rat) := hpointCardRat
    _ ≤ height * ((survivors.card : Rat) +
          ((N / 25 + 2 : Nat) : Rat) /
              (2 * ((N / regime.rootSplit : Nat) : Rat)) *
            (4 + (regime.rootTarget supportLength : Rat) / 3026)) :=
      hparameter
    _ ≤ height *
          ((regime.rootTarget supportLength : Rat) +
            ((N / 25 + 2 : Nat) : Rat) /
                (2 * ((N / regime.rootSplit : Nat) : Rat)) *
              (4 + (regime.rootTarget supportLength : Rat) / 3026)) := by
      gcongr
    _ = hybridPaperRootHighCoefficient regime supportLength N := by
      simp [hybridPaperRootHighCoefficient, height]

theorem actualHybridPaperSupport_dropLast_mem_rootTable
    (normalProvider : HybridPaperRootCertificateProvider)
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    {regime : HybridPaperDiagonalRegime}
    (hUpper : N < regime.stop)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    ∀ q ∈ (fiveMillionPivotSupport pivot).dropLast,
      q ∈ Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes := by
  have hLength :=
    actualHybridPaperPivotSupport_length_le_eight
      hUpper hBout hpivotResidual
  have hProduct :=
    actualHybridPaperPivotSupport_product_lt
      hUpper hBout hpivotResidual
  intro q hq
  have hqPrime :=
    fiveMillionPivotSupport_primes pivot q
      (List.mem_of_mem_dropLast hq)
  exact normalProvider.supportPrimeCertificate hqPrime
    (Nat.le_of_lt
      (hybridPaperSupport_dropLast_lt_44729
        hLength (fiveMillionPivotSupport pivot) rfl
        (fiveMillionPivotSupport_primes pivot)
        (fiveMillionPivotSupport_increasing pivot)
        hProduct q hq))

theorem actualHybridPaperNormalHighResidue_card_cast_le
    (normalProvider : HybridPaperRootCertificateProvider)
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {regime : HybridPaperDiagonalRegime} {squareCoset : Bool}
    (hLower : 200_000_000 ≤ N)
    (hUpper : N < regime.stop)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / regime.rootSplit) baseResidue).card : Rat) ≤
      hybridPaperRootHighCoefficient regime
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hLength :=
    actualHybridPaperPivotSupport_length_le_eight
      hUpper hBout hpivotResidual
  have hProduct :=
    actualHybridPaperPivotSupport_product_lt
      hUpper hBout hpivotResidual
  exact hybridPaperHighResidue_card_cast_le_coefficient
    normalProvider
    (N := N) (pivot := pivot) (baseResidue := baseResidue)
    (modulus := 25 * pivot) (constant := pivot * baseResidue + 1)
    (supportLength := (fiveMillionPivotSupport pivot).length)
    (regime := regime) (squareCoset := squareCoset)
    (lookup := regime.rootLookup)
    (support := (fiveMillionPivotSupport pivot).dropLast)
    hLower (by positivity)
    (by
      intro point hpoint
      exact hybridPaperNormalHighPoint_parameter_mem
        normalProvider hLower hBout hpivotResidual hpoint
        hconstantFive hcoset)
    (hybridPaperNormalRootSurvivorFinset_card_le_target
      normalProvider regime squareCoset
      (fiveMillionPivotSupport pivot)
      hLength (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot) hProduct)
    (by
      intro m hm
      exact globalMixedNormalTransformedRoot_card_le_anyParity
        hpivotPos hconstantFive)

theorem actualHybridPaperFiveTwistHighResidue_card_cast_le
    (provider : HybridPaperTwistCertificateProvider)
    (normalProvider : HybridPaperRootCertificateProvider)
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {regime : HybridPaperDiagonalRegime} {squareCoset : Bool}
    (hLower : 200_000_000 ≤ N)
    (hUpper : N < regime.stop)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / regime.rootSplit) baseResidue).card : Rat) ≤
      hybridPaperRootHighCoefficient regime
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hLength :=
    actualHybridPaperPivotSupport_length_le_eight
      hUpper hBout hpivotResidual
  have hProduct :=
    actualHybridPaperPivotSupport_product_lt
      hUpper hBout hpivotResidual
  have hpTable :=
    actualHybridPaperSupport_dropLast_mem_rootTable
      normalProvider hUpper hBout hpivotResidual
  exact hybridPaperHighResidue_card_cast_le_coefficient
    normalProvider
    (N := N) (pivot := pivot) (baseResidue := baseResidue)
    (modulus := 5 * pivot)
    (constant := (pivot * baseResidue + 1) / 5)
    (supportLength := (fiveMillionPivotSupport pivot).length)
    (regime := regime) (squareCoset := squareCoset)
    (lookup := provider.lookup regime)
    (support := (fiveMillionPivotSupport pivot).dropLast)
    hLower (by positivity)
    (by
      intro point hpoint
      exact hybridPaperFiveTwistHighPoint_parameter_mem
        provider normalProvider hLower hBout hpivotResidual hpoint
        hconstantFive hconstantTwentyFive hcoset hpTable)
    (hybridPaperTwistRootSurvivorFinset_card_le_target
      provider normalProvider regime squareCoset
      (fiveMillionPivotSupport pivot)
      hLength (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot) hProduct)
    (by
      intro m hm
      exact globalMixedFiveTwistTransformedRoot_card_le_anyParity
        hpivotPos hconstantFive hconstantTwentyFive)

#print axioms hybridPaperHighResidue_card_cast_le_coefficient
#print axioms actualHybridPaperSupport_dropLast_mem_rootTable
#print axioms actualHybridPaperNormalHighResidue_card_cast_le
#print axioms actualHybridPaperFiveTwistHighResidue_card_cast_le

end Erdos848
