import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailRootJumpCoverage.JumpBoundary0006
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0097

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem jumpBlock0097_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hblockLower : 198658 ≤ p)
    (hblockUpper : p < 200706)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097.prime_mem_listed
      hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097.allPrimeRanks_holds
    jumpBlock0097_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097.primeCounting_eq_before_add_localRank
    (by decide) primeCounting_jumpBoundary0006 hpListed
  have hpassGlobal :
      Erdos848.fiveMillionOddRoot7JumpPasses p
        (Nat.primeCounting p) = true := by
    rw [hcount]
    exact hpassLocal
  exact Erdos848.fiveMillionOddRoot7JumpPasses_sound
    hpassGlobal hlower hupper

end Erdos848.GeneratedTailRootJumpCoverage
