import Erdos848.GeneratedTailR263Diagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263Diagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0000Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 79010
  | .evenTwoCell residue => ![1762, 1754, 1759, 1755, 1766, 1751, 1762, 1753, 1760] residue

theorem envelope0000 : TailR263DiagonalRange 5000000 5025000 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5024999 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5024999 (envelope0000Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0000Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5000000) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0000Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0000Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5000000) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0000Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0000Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5000000) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0000Counts (.evenTwoCell residue)) = 15822 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0000Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0001Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 79413
  | .evenTwoCell residue => ![1768, 1759, 1767, 1763, 1776, 1760, 1771, 1763, 1770] residue

theorem envelope0001 : TailR263DiagonalRange 5025000 5050125 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5050124 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5050124 (envelope0001Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0001Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5025000) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0001Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0001Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5025000) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0001Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0001Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5025000) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0001Counts (.evenTwoCell residue)) = 15897 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0001Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0002Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 79800
  | .evenTwoCell residue => ![1777, 1771, 1777, 1771, 1786, 1767, 1779, 1771, 1777] residue

theorem envelope0002 : TailR263DiagonalRange 5050125 5075375 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5075374 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5075374 (envelope0002Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0002Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5050125) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0002Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0002Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5050125) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0002Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0002Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5050125) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0002Counts (.evenTwoCell residue)) = 15976 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0002Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0003Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 80208
  | .evenTwoCell residue => ![1787, 1779, 1787, 1782, 1796, 1776, 1786, 1779, 1783] residue

theorem envelope0003 : TailR263DiagonalRange 5075375 5100751 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5100750 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5100750 (envelope0003Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0003Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5075375) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0003Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0003Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5075375) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0003Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0003Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5075375) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0003Counts (.evenTwoCell residue)) = 16055 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0003Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0004Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 80599
  | .evenTwoCell residue => ![1796, 1789, 1796, 1790, 1803, 1784, 1794, 1787, 1794] residue

theorem envelope0004 : TailR263DiagonalRange 5100751 5126254 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5126253 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5126253 (envelope0004Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0004Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5100751) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0004Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0004Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5100751) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0004Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0004Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5100751) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0004Counts (.evenTwoCell residue)) = 16133 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0004Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0005Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 80997
  | .evenTwoCell residue => ![1805, 1797, 1806, 1799, 1813, 1795, 1802, 1794, 1806] residue

theorem envelope0005 : TailR263DiagonalRange 5126254 5151885 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5151884 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5151884 (envelope0005Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0005Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5126254) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0005Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0005Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5126254) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0005Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0005Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5126254) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0005Counts (.evenTwoCell residue)) = 16217 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0005Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0006Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 81415
  | .evenTwoCell residue => ![1816, 1804, 1814, 1809, 1822, 1802, 1812, 1804, 1814] residue

theorem envelope0006 : TailR263DiagonalRange 5151885 5177644 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5177643 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5177643 (envelope0006Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0006Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5151885) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0006Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0006Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5151885) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0006Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0006Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5151885) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0006Counts (.evenTwoCell residue)) = 16297 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0006Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0007Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 81814
  | .evenTwoCell residue => ![1825, 1815, 1824, 1819, 1831, 1814, 1819, 1816, 1822] residue

theorem envelope0007 : TailR263DiagonalRange 5177644 5203532 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5203531 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5203531 (envelope0007Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0007Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5177644) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0007Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0007Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5177644) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0007Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0007Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5177644) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0007Counts (.evenTwoCell residue)) = 16385 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0007Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0008Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 82223
  | .evenTwoCell residue => ![1832, 1825, 1832, 1823, 1838, 1822, 1831, 1826, 1833] residue

theorem envelope0008 : TailR263DiagonalRange 5203532 5229549 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5229548 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5229548 (envelope0008Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0008Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5203532) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0008Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0008Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5203532) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0008Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0008Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5203532) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0008Counts (.evenTwoCell residue)) = 16462 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0008Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0009Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 82625
  | .evenTwoCell residue => ![1843, 1834, 1840, 1832, 1846, 1833, 1842, 1838, 1840] residue

theorem envelope0009 : TailR263DiagonalRange 5229549 5255696 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5255695 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5255695 (envelope0009Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0009Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5229549) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0009Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0009Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5229549) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0009Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0009Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5229549) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0009Counts (.evenTwoCell residue)) = 16548 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0009Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0010Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 83024
  | .evenTwoCell residue => ![1853, 1845, 1849, 1842, 1857, 1844, 1853, 1847, 1847] residue

theorem envelope0010 : TailR263DiagonalRange 5255696 5281974 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5281973 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5281973 (envelope0010Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0010Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5255696) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0010Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0010Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5255696) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0010Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0010Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5255696) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0010Counts (.evenTwoCell residue)) = 16637 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0010Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0011Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 83454
  | .evenTwoCell residue => ![1863, 1855, 1859, 1851, 1865, 1852, 1861, 1855, 1855] residue

theorem envelope0011 : TailR263DiagonalRange 5281974 5308383 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5308382 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5308382 (envelope0011Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0011Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5281974) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0011Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0011Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5281974) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0011Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0011Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5281974) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0011Counts (.evenTwoCell residue)) = 16716 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0011Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0012Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 83866
  | .evenTwoCell residue => ![1871, 1865, 1869, 1859, 1871, 1860, 1871, 1868, 1866] residue

theorem envelope0012 : TailR263DiagonalRange 5308383 5334924 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5334923 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5334923 (envelope0012Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0012Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5308383) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0012Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0012Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5308383) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0012Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0012Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5308383) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0012Counts (.evenTwoCell residue)) = 16800 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0012Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0013Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 84293
  | .evenTwoCell residue => ![1879, 1873, 1876, 1870, 1878, 1869, 1880, 1878, 1877] residue

theorem envelope0013 : TailR263DiagonalRange 5334924 5361598 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5361597 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5361597 (envelope0013Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0013Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5334924) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0013Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0013Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5334924) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0013Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0013Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5334924) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0013Counts (.evenTwoCell residue)) = 16880 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0013Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0014Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 84723
  | .evenTwoCell residue => ![1888, 1883, 1886, 1880, 1889, 1877, 1887, 1887, 1885] residue

theorem envelope0014 : TailR263DiagonalRange 5361598 5388405 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5388404 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5388404 (envelope0014Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0014Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5361598) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0014Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0014Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5361598) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0014Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0014Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5361598) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0014Counts (.evenTwoCell residue)) = 16962 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0014Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0015Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 85144
  | .evenTwoCell residue => ![1899, 1891, 1899, 1891, 1898, 1885, 1896, 1899, 1895] residue

theorem envelope0015 : TailR263DiagonalRange 5388405 5415347 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5415346 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5415346 (envelope0015Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0015Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5388405) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0015Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0015Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5388405) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0015Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0015Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5388405) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0015Counts (.evenTwoCell residue)) = 17053 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0015Counts, tailR263EvenTwoAllDiagonalEnvelope])

end Erdos848.GeneratedTailR263Diagonal
