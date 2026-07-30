import Erdos848.TailR263EvenOneCells

namespace Erdos848

/-!
# Common-residue obstruction for an enumerated triple

This small module isolates the generic fact that two selected pivots with
different residues prevent a three-pivot common-residue certificate.  Keeping
the proof outside the larger four-pivot consumer avoids re-elaborating the
finite-triple equivalence in an environment containing all terminal data.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem e1FiniteTripleCommonAt_false_of_two_mem
    {pivots : Finset Nat} (hcard : pivots.card = 3)
    {a b : Nat} (ha : a ∈ pivots) (hb : b ∈ pivots)
    {index : E1FinitePrimeIndex}
    (hmod : a % e1FiniteModulus index ≠
      b % e1FiniteModulus index) :
    ¬ e1FiniteTripleCommonAt pivots hcard index := by
  rintro ⟨residue, hall⟩
  obtain ⟨i, hi⟩ :=
    globalMixedThreePivotAt_surjective_on pivots hcard ha
  obtain ⟨j, hj⟩ :=
    globalMixedThreePivotAt_surjective_on pivots hcard hb
  apply hmod
  have hai := hall i
  have hbj := hall j
  rw [hi] at hai
  rw [hj] at hbj
  exact hai.trans hbj.symm

#print axioms e1FiniteTripleCommonAt_false_of_two_mem

end Erdos848
