import Erdos848.TailDiagonalModFortyNineChecker

namespace Erdos848

/-!
## Exact diagonal cover for at most three mod-49 fibres in one odd cell

This is the small-cell alternative left by the one-cell matching split.  The
untrusted generator supplies endpoint counts; the kernel checks every cutoff
and the sharp top-three scalar bound.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailDiagonalThreeFibreCover (N : Nat) (cell : OddModNineCell)
    (residues : Finset (Fin 49)) : Finset Nat :=
  residues.biUnion fun residue =>
    tailDiagonalCellFortyNine N cell residue

theorem tailDiagonalThreeFibreCover_card_le
    (N : Nat) (cell : OddModNineCell) (residues : Finset (Fin 49))
    (counts : Fin 49 → Nat)
    (hcounts : ∀ residue ∈ residues,
      (tailDiagonalCellFortyNine N cell residue).card ≤ counts residue) :
    (tailDiagonalThreeFibreCover N cell residues).card ≤
      ∑ residue ∈ residues, counts residue := by
  calc
    (tailDiagonalThreeFibreCover N cell residues).card ≤
        ∑ residue ∈ residues,
          (tailDiagonalCellFortyNine N cell residue).card :=
      Finset.card_biUnion_le
    _ ≤ ∑ residue ∈ residues, counts residue :=
      Finset.sum_le_sum fun residue hresidue => hcounts residue hresidue

def topThreeThresholdPasses
    (counts : Fin 9 → Fin 49 → Nat)
    (topOne topTwo topThree : Fin 9 → Nat) : Bool :=
  decide (∀ cell : Fin 9,
    topThree cell ≤ topTwo cell ∧ topTwo cell ≤ topOne cell ∧
    (∀ residue : Fin 49, counts cell residue ≤ topOne cell) ∧
    (Finset.univ.filter fun residue : Fin 49 =>
      topTwo cell < counts cell residue).card ≤ 1 ∧
    (Finset.univ.filter fun residue : Fin 49 =>
      topThree cell < counts cell residue).card ≤ 2)

private theorem sum_indicator_eq_card_inter_mul
    {α : Type*} [DecidableEq α] (source target : Finset α) (weight : Nat) :
    (∑ x ∈ source, if x ∈ target then weight else 0) =
      (source ∩ target).card * weight := by
  classical
  induction source using Finset.induction_on with
  | empty => simp
  | @insert a source ha ih =>
      by_cases htarget : a ∈ target <;> simp [ha, htarget, ih]

theorem topThreeThresholdPasses_sound
    {counts : Fin 9 → Fin 49 → Nat}
    {topOne topTwo topThree : Fin 9 → Nat}
    (hpasses : topThreeThresholdPasses
      counts topOne topTwo topThree = true)
    (cell : Fin 9) (residues : Finset (Fin 49))
    (hcard : residues.card ≤ 3) :
    (∑ residue ∈ residues, counts cell residue) ≤
      topOne cell + topTwo cell + topThree cell := by
  classical
  have hdata := of_decide_eq_true hpasses cell
  have hthreeTwo : topThree cell ≤ topTwo cell := hdata.1
  have htwoOne : topTwo cell ≤ topOne cell := hdata.2.1
  have htopOne : ∀ residue : Fin 49,
      counts cell residue ≤ topOne cell := hdata.2.2.1
  let highTwo : Finset (Fin 49) := Finset.univ.filter fun residue =>
    topTwo cell < counts cell residue
  let highThree : Finset (Fin 49) := Finset.univ.filter fun residue =>
    topThree cell < counts cell residue
  have hhighTwo : highTwo.card ≤ 1 := by
    simpa [highTwo] using hdata.2.2.2.1
  have hhighThree : highThree.card ≤ 2 := by
    simpa [highThree] using hdata.2.2.2.2
  have hpoint : ∀ residue : Fin 49,
      counts cell residue ≤ topThree cell +
        (if residue ∈ highThree then topTwo cell - topThree cell else 0) +
        (if residue ∈ highTwo then topOne cell - topTwo cell else 0) := by
    intro residue
    by_cases hthree : topThree cell < counts cell residue
    · have hmemThree : residue ∈ highThree := by
        simp [highThree, hthree]
      by_cases htwo : topTwo cell < counts cell residue
      · have hmemTwo : residue ∈ highTwo := by simp [highTwo, htwo]
        simp only [hmemThree, hmemTwo, if_true]
        have := htopOne residue
        omega
      · have hnotMemTwo : residue ∉ highTwo := by simp [highTwo, htwo]
        simp only [hmemThree, hnotMemTwo, if_true, if_false, add_zero]
        omega
    · have hnotMemThree : residue ∉ highThree := by simp [highThree, hthree]
      have hnotMemTwo : residue ∉ highTwo := by
        simp [highTwo]
        omega
      simp only [hnotMemThree, hnotMemTwo, if_false, add_zero]
      omega
  let weightedCount : Fin 49 → Nat := fun residue =>
    topThree cell +
      (if residue ∈ highThree then topTwo cell - topThree cell else 0) +
      (if residue ∈ highTwo then topOne cell - topTwo cell else 0)
  have hsum :
      (∑ residue ∈ residues, counts cell residue) ≤
        (∑ residue ∈ residues, weightedCount residue) :=
    Finset.sum_le_sum fun residue _ => by
      simpa [weightedCount] using hpoint residue
  have hexpand :
      (∑ residue ∈ residues, weightedCount residue) =
        residues.card * topThree cell +
          (residues ∩ highThree).card * (topTwo cell - topThree cell) +
          (residues ∩ highTwo).card * (topOne cell - topTwo cell) := by
    simp only [weightedCount]
    rw [Finset.sum_add_distrib, Finset.sum_add_distrib]
    rw [sum_indicator_eq_card_inter_mul,
      sum_indicator_eq_card_inter_mul]
    simp
  have hbase : residues.card * topThree cell ≤ 3 * topThree cell := by
    exact Nat.mul_le_mul_right (topThree cell) hcard
  have hthreeCard : (residues ∩ highThree).card ≤ 2 :=
    (Finset.card_le_card (Finset.inter_subset_right)).trans hhighThree
  have hthreeWeight :
      (residues ∩ highThree).card * (topTwo cell - topThree cell) ≤
        2 * (topTwo cell - topThree cell) := by
    exact Nat.mul_le_mul_right (topTwo cell - topThree cell) hthreeCard
  have htwoCard : (residues ∩ highTwo).card ≤ 1 :=
    (Finset.card_le_card (Finset.inter_subset_right)).trans hhighTwo
  have htwoWeight :
      (residues ∩ highTwo).card * (topOne cell - topTwo cell) ≤
        1 * (topOne cell - topTwo cell) := by
    exact Nat.mul_le_mul_right (topOne cell - topTwo cell) htwoCard
  rw [hexpand] at hsum
  omega

theorem tailDiagonalThreeFibre_ratio_le
    (certificate : LowRangeDiagonalCoverageCertificate)
    (cellTargets : OddModNineCell → IndexedMarkerData)
    (hcellProjects : certificate.marker.ProjectsOddCells cellTargets)
    (fibreTargets : OddModNineCell → Fin 49 → IndexedMarkerData)
    (hfibreProjects : ∀ cell,
      (cellTargets cell).ProjectsModFortyNine (fibreTargets cell))
    (parity : Bool) (counts : Fin 9 → Fin 49 → Nat)
    (topOne topTwo topThree : Fin 9 → Nat)
    {lower upper N : Nat}
    (hfibreOrdered : ∀ cell : Fin 9, ∀ residue : Fin 49,
      (fibreTargets { parity := parity, residue := cell } residue).AdjacentOrdered)
    (hfibreCutoff : ∀ cell : Fin 9, ∀ residue : Fin 49,
      (fibreTargets { parity := parity, residue := cell } residue).Cutoff
        upper (counts cell residue))
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hLowerPositive : 0 < lower) (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (hpasses : topThreeThresholdPasses
      counts topOne topTwo topThree = true)
    (cell : Fin 9) (residues : Finset (Fin 49))
    (hcard : residues.card ≤ 3) :
    ((tailDiagonalThreeFibreCover N
      { parity := parity, residue := cell } residues).card : Rat) / N ≤
        ((topOne cell + topTwo cell + topThree cell : Nat) : Rat) / lower := by
  apply natCardRatio_le_block hLowerPositive hNLower
  refine (tailDiagonalThreeFibreCover_card_le N
    { parity := parity, residue := cell } residues (counts cell) ?_).trans ?_
  · intro residue hresidue
    exact tailDiagonalCellFortyNine_card_le certificate cellTargets
      hcellProjects fibreTargets hfibreProjects
      (hfibreOrdered cell residue) (hfibreCutoff cell residue)
      hUpperLimit hNUpper
  · exact topThreeThresholdPasses_sound hpasses cell residues hcard

def TailDiagonalThreeFibreRatioRange
    (start stop : Nat) (envelope : Rat) : Prop :=
  ∀ N, start ≤ N → N < stop → ∀ parity cell residues,
    residues.card ≤ 3 →
    ((tailDiagonalThreeFibreCover N
      { parity := parity, residue := cell } residues).card : Rat) / N ≤ envelope

theorem tailDiagonalThreeFibreRatioRangeAppend
    {start middle stop : Nat} {envelope : Rat}
    (hleft : TailDiagonalThreeFibreRatioRange start middle envelope)
    (hright : TailDiagonalThreeFibreRatioRange middle stop envelope) :
    TailDiagonalThreeFibreRatioRange start stop envelope := by
  intro N hstart hstop parity cell residues hcard
  by_cases hN : N < middle
  · exact hleft N hstart hN parity cell residues hcard
  · exact hright N (Nat.le_of_not_gt hN) hstop parity cell residues hcard

#print axioms topThreeThresholdPasses_sound
#print axioms tailDiagonalThreeFibre_ratio_le

end Erdos848
