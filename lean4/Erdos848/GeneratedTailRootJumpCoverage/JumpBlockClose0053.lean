import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockBoundary0053
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0053

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem jumpBlock0053_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hblockLower : 108546 ≤ p)
    (hblockUpper : p < 110594)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0053.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0053.prime_mem_listed
      hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0053.allPrimeRanks_holds
    jumpBlock0053_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0053.primeCounting_eq_before_add_localRank
    (by decide) primeCounting_blockBoundary0053 hpListed
  have hpassGlobal :
      Erdos848.fiveMillionOddRoot7JumpPasses p
        (Nat.primeCounting p) = true := by
    rw [hcount]
    exact hpassLocal
  exact Erdos848.fiveMillionOddRoot7JumpPasses_sound
    hpassGlobal hlower hupper

end Erdos848.GeneratedTailRootJumpCoverage
