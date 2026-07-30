import Erdos848.TailFiveMillionHallTailCore

namespace Erdos848

/-! Kernel-only reciprocal-square tail above the cutoff `23`. -/

def fiveMillionSquareTail23Envelope : Rat :=
  64081802747648035629863 / 7596668444022826249000000

private def primesElevenThroughTwentyThree : Finset Nat :=
  {11, 13, 17, 19, 23}

theorem fiveMillionSquareTail23_kernel_close
    (s : Finset Nat)
    (hprime : ∀ p, p ∈ s → Nat.Prime p)
    (hcut : ∀ p, p ∈ s → 23 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) ≤
      fiveMillionSquareTail23Envelope := by
  classical
  let extras := primesElevenThroughTwentyThree
  have hextrasPrime : ∀ p, p ∈ extras → Nat.Prime p := by
    intro p hp
    simp [extras, primesElevenThroughTwentyThree] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl <;> norm_num
  have hextrasCut : ∀ p, p ∈ extras → 7 < p := by
    intro p hp
    simp [extras, primesElevenThroughTwentyThree] at hp
    omega
  have hdisjoint : Disjoint s extras := by
    rw [Finset.disjoint_left]
    intro p hps hpe
    have hpLarge := hcut p hps
    simp [extras, primesElevenThroughTwentyThree] at hpe
    omega
  have hunionPrime : ∀ p, p ∈ s ∪ extras → Nat.Prime p := by
    intro p hp
    rcases Finset.mem_union.mp hp with hp | hp
    · exact hprime p hp
    · exact hextrasPrime p hp
  have hunionCut : ∀ p, p ∈ s ∪ extras → 7 < p := by
    intro p hp
    rcases Finset.mem_union.mp hp with hp | hp
    · have hpLarge := hcut p hp
      omega
    · exact hextrasCut p hp
  have htotal := fiveMillionSquareTail7_kernel_close
    (s ∪ extras) hunionPrime hunionCut
  have hsum :
      (∑ p ∈ s ∪ extras, reciprocalSquareQ p) =
        (∑ p ∈ s, reciprocalSquareQ p) +
          ∑ p ∈ extras, reciprocalSquareQ p := by
    exact Finset.sum_union hdisjoint
  rw [hsum] at htotal
  norm_num [extras, primesElevenThroughTwentyThree, reciprocalSquareQ,
    fiveMillionSquareTail7Envelope, fiveMillionSquareTail23Envelope] at htotal ⊢
  linarith

#print axioms fiveMillionSquareTail23_kernel_close

end Erdos848
