import Erdos848.TailGlobalMixedEvenValuationRoot
import Erdos848.TailTenMillionKernelRootCounting
import Erdos848.TailTenMillionKernelRootHighParameter

namespace Erdos848

/-!
# Counting one certified twenty-million high-residue row

This layer is independent of the generated prefix dispatcher.  It consumes
one checked prefix result and turns the literal point-to-parameter map into
the exact rational expression used by the root envelopes.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem tenMillionHighResidue_card_le_parameterSet
    {N pivot baseResidue X Y modulus constant : Nat}
    {survivors : Finset Nat}
    (hmap : ∀ point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot Y baseResidue,
      point / 25 ∈
        transformedParameterSet X Y modulus constant survivors) :
    (twoBaseHighTailSquarePointsAtResidue
        N pivot Y baseResidue).card ≤
      (transformedParameterSet
        X Y modulus constant survivors).card := by
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

def tenMillionKernelRootHighCoefficient
    (row : TenMillionKernelRootRow) (supportLength N : Nat) : Rat :=
  (row.rootFactor * 2 ^ (supportLength + 1) : Nat) *
    ((row.survivorCeiling supportLength : Rat) +
      ((N / 25 + 2 : Nat) : Rat) /
          (2 * ((N / row.split : Nat) : Rat)) *
        (4 + (row.survivorCeiling supportLength : Rat) / 3026))

theorem tenMillionHighResidue_card_cast_le_coefficient
    {N pivot baseResidue modulus constant supportLength : Nat}
    {row : TenMillionKernelRootRow}
    {squareCoset : Bool}
    {normalLookup twistLookup : Nat → List Nat}
    {support : List Nat}
    (hLower : 10_000_000 ≤ N)
    (hmodulus : 0 < modulus)
    (hmap : ∀ point ∈
      twoBaseHighTailSquarePointsAtResidue
        N pivot (N / row.split) baseResidue,
      point / 25 ∈
        transformedParameterSet
          (N / 25 + 2) (N / row.split) modulus constant
          (tenMillionKernelRootSurvivorFinset
            normalLookup twistLookup row squareCoset support))
    (hpass :
      tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup
        GeneratedTailTenMillionKernelRootCoverage.rootBaseWords
        supportLength support = true)
    (hroots :
      ∀ m ∈ tenMillionKernelRootSurvivorFinset
          normalLookup twistLookup row squareCoset support,
        (transformedRootResidues m modulus constant).card ≤
          row.rootFactor * 2 ^ (supportLength + 1)) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / row.split) baseResidue).card : Rat) ≤
      tenMillionKernelRootHighCoefficient row supportLength N := by
  let survivors := tenMillionKernelRootSurvivorFinset
    normalLookup twistLookup row squareCoset support
  let height := row.rootFactor * 2 ^ (supportLength + 1)
  have hY : 0 < N / row.split := by
    cases row <;>
      norm_num [TenMillionKernelRootRow.split] at * <;> omega
  have hcard :
      (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / row.split) baseResidue).card ≤
        (transformedParameterSet
          (N / 25 + 2) (N / row.split) modulus constant survivors).card :=
    tenMillionHighResidue_card_le_parameterSet hmap
  have hcardQ :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / row.split) baseResidue).card : Rat) ≤
        ((transformedParameterSet
          (N / 25 + 2) (N / row.split)
          modulus constant survivors).card : Rat) := by
    exact_mod_cast hcard
  have hmPos : ∀ m ∈ survivors, 0 < m := by
    intro m hm
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
  have hreciprocal :
      (∑ m ∈ survivors, (1 : Rat) / m) ≤
        4 + (row.survivorCeiling supportLength : Rat) / 3026 := by
    exact tenMillionKernelRootSurvivor_reciprocal_sum_le_ceiling
      hpass row squareCoset
  have hparameter :
      ((transformedParameterSet
          (N / 25 + 2) (N / row.split)
          modulus constant survivors).card : Rat) ≤
        height * ((survivors.card : Rat) +
          ((N / 25 + 2 : Nat) : Rat) /
              (2 * ((N / row.split : Nat) : Rat)) *
            (4 +
              (row.survivorCeiling supportLength : Rat) / 3026)) := by
    exact transformedParameterSet_card_le_reciprocal
      survivors
      (4 + (row.survivorCeiling supportLength : Rat) / 3026)
      hY hmodulus hmPos (by simpa [height] using hroots) hreciprocal
  have hsurvivorCardNat :
      survivors.card ≤ row.survivorCeiling supportLength :=
    tenMillionKernelRootSurvivorFinset_card_le_ceiling
      hpass row squareCoset
  have hsurvivorCard :
      (survivors.card : Rat) ≤
        (row.survivorCeiling supportLength : Rat) := by
    exact_mod_cast hsurvivorCardNat
  calc
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / row.split) baseResidue).card : Rat) ≤
        ((transformedParameterSet
          (N / 25 + 2) (N / row.split)
          modulus constant survivors).card : Rat) := hcardQ
    _ ≤ height * ((survivors.card : Rat) +
          ((N / 25 + 2 : Nat) : Rat) /
              (2 * ((N / row.split : Nat) : Rat)) *
            (4 +
              (row.survivorCeiling supportLength : Rat) / 3026)) :=
      hparameter
    _ ≤ height *
          ((row.survivorCeiling supportLength : Rat) +
            ((N / 25 + 2 : Nat) : Rat) /
                (2 * ((N / row.split : Nat) : Rat)) *
              (4 +
                (row.survivorCeiling supportLength : Rat) / 3026)) := by
      gcongr
    _ = tenMillionKernelRootHighCoefficient row supportLength N := by
      simp [tenMillionKernelRootHighCoefficient, height]

#print axioms tenMillionHighResidue_card_le_parameterSet
#print axioms tenMillionHighResidue_card_cast_le_coefficient

end Erdos848
