import Erdos848.HallReduction

namespace Erdos848

/-!
## Lightweight base/residual partition of a Hall completion

The mixed proofs always split the literal Hall completion into the two sharp
base progressions and their complement.  This file contains only that finite
set identity, so tail certificates can use it without importing the analytic
or low-range arithmetic layers.
-/

def lowBaseSet (N : ℕ) : Finset ℕ :=
  OriginalA7 N ∪ OriginalA18 N

lemma lowBaseSet_subset_Icc (N : ℕ) :
    lowBaseSet N ⊆ Finset.Icc 1 N := by
  intro point hpoint
  rcases Finset.mem_union.mp hpoint with h7 | h18
  · exact originalA7_subset_Icc N h7
  · exact (Finset.mem_filter.mp h18).1

def hallResidual (N : ℕ) (B : Finset ℕ) : Finset ℕ :=
  hallCompletion N B \ lowBaseSet N

def hallBasePart (N : ℕ) (B : Finset ℕ) : Finset ℕ :=
  hallCompletion N B ∩ lowBaseSet N

lemma hallCompletion_card_partition (N : ℕ) (B : Finset ℕ) :
    (hallResidual N B).card + (hallBasePart N B).card =
      (hallCompletion N B).card := by
  simpa [hallResidual, hallBasePart] using
    Finset.card_sdiff_add_card_inter (hallCompletion N B) (lowBaseSet N)

end Erdos848
