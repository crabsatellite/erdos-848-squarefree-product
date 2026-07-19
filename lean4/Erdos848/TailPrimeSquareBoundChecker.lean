import Erdos848.TailPrimeIntervalTreeChecker

namespace Erdos848

/-!
## Kernel checker for reciprocal-prime-square tails

The interval certificate already classifies every integer in its range.  This
file equips the same proof tree with a fixed-denominator upper sum.  A prime
leaf above `cutoff` is charged

`scale ⌈/⌉ p ^ 2`

units, so the only arithmetic fact used by the checker is the defining
Galois-connection inequality for ceiling division.  Generated files need only
certify the resulting natural-number charge of each balanced block.
-/

namespace PrimeIntervalProofTree

/-- The exact rational reciprocal-square weight of the prime leaves above a
cutoff.  Composite leaves contribute zero. -/
def squareTailWeight {start size count : ℕ}
    (tree : PrimeIntervalProofTree start size count) (cutoff : ℕ) : ℚ :=
  match tree with
  | .composite _ _ _ _ _ => 0
  | .prime p _ => if cutoff < p then 1 / (p : ℚ) ^ 2 else 0
  | .node left right =>
      left.squareTailWeight cutoff + right.squareTailWeight cutoff

/-- A natural-number upper charge at the common denominator `scale`. -/
def squareTailCost {start size count : ℕ}
    (tree : PrimeIntervalProofTree start size count)
    (cutoff scale : ℕ) : ℕ :=
  match tree with
  | .composite _ _ _ _ _ => 0
  | .prime p _ => if cutoff < p then scale ⌈/⌉ (p ^ 2) else 0
  | .node left right =>
      left.squareTailCost cutoff scale + right.squareTailCost cutoff scale

/-- Expose exactly one internal cost node without unfolding either child.
Generated aggregate certificates use this lemma instead of simplifying the
recursive definition globally. -/
theorem squareTailCost_node
    {start leftSize rightSize leftCount rightCount cutoff scale : ℕ}
    (left : PrimeIntervalProofTree start leftSize leftCount)
    (right : PrimeIntervalProofTree
      (start + leftSize) rightSize rightCount) :
    (PrimeIntervalProofTree.node left right).squareTailCost cutoff scale =
      left.squareTailCost cutoff scale +
        right.squareTailCost cutoff scale := rfl

private theorem reciprocalSquare_le_ceilDiv
    {p scale : ℕ} (hp : 0 < p) (hscale : 0 < scale) :
    (1 / (p : ℚ) ^ 2) ≤
      ((scale ⌈/⌉ (p ^ 2) : ℕ) : ℚ) / scale := by
  have hpSq : 0 < p ^ 2 := pow_pos hp _
  have hceil : scale ≤ p ^ 2 * (scale ⌈/⌉ (p ^ 2)) :=
    (ceilDiv_le_iff_le_mul hpSq).1 le_rfl
  apply (div_le_div_iff₀ (by positivity : (0 : ℚ) < (p : ℚ) ^ 2)
    (by exact_mod_cast hscale : (0 : ℚ) < scale)).2
  norm_num only [one_mul]
  exact_mod_cast (by simpa [mul_comm] using hceil)

/-- The tree weight is bounded by its generated fixed-denominator charge. -/
theorem squareTailWeight_le_cost
    {start size count cutoff scale : ℕ}
    (tree : PrimeIntervalProofTree start size count)
    (hscale : 0 < scale) :
    tree.squareTailWeight cutoff ≤
      (tree.squareTailCost cutoff scale : ℚ) / scale := by
  induction tree with
  | composite => simp [squareTailWeight, squareTailCost]
  | prime p hp =>
      by_cases hcut : cutoff < p
      · simp only [squareTailWeight, squareTailCost, hcut, if_true]
        exact reciprocalSquare_le_ceilDiv hp.pos hscale
      · simp [squareTailWeight, squareTailCost, hcut]
  | node left right ihLeft ihRight =>
      simp only [squareTailWeight, squareTailCost]
      calc
        left.squareTailWeight cutoff + right.squareTailWeight cutoff ≤
            (left.squareTailCost cutoff scale : ℚ) / scale +
              (right.squareTailCost cutoff scale : ℚ) / scale :=
          add_le_add ihLeft ihRight
        _ = ((left.squareTailCost cutoff scale +
              right.squareTailCost cutoff scale : ℕ) : ℚ) / scale := by
          push_cast
          ring

/-- The recursively defined weight is the literal sum over the listed prime
leaves above `cutoff`. -/
theorem squareTailWeight_eq_listed_sum
    {start size count cutoff : ℕ}
    (tree : PrimeIntervalProofTree start size count) :
    tree.squareTailWeight cutoff =
      ∑ p ∈ tree.listed.filter (cutoff < ·), (1 / (p : ℚ) ^ 2) := by
  induction tree with
  | composite => simp [squareTailWeight, listed]
  | prime p hp =>
      by_cases hcut : cutoff < p <;>
        simp [squareTailWeight, listed, hcut, Finset.filter_singleton]
  | node left right ihLeft ihRight =>
      rw [squareTailWeight, ihLeft, ihRight, listed, Finset.filter_union]
      rw [Finset.sum_union]
      exact (listed_disjoint_of_adjacent left right).mono
        (Finset.filter_subset _ _) (Finset.filter_subset _ _)

end PrimeIntervalProofTree

end Erdos848
