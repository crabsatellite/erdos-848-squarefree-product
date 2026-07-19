import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailRootJumpCoverage.JumpBoundary0003
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0073

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem jumpBlock0073_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hblockLower : 149506 ≤ p)
    (hblockUpper : p < 151554)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0073.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0073.prime_mem_listed
      hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0073.allPrimeRanks_holds
    jumpBlock0073_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0073.primeCounting_eq_before_add_localRank
    (by decide) primeCounting_jumpBoundary0003 hpListed
  have hpassGlobal :
      Erdos848.fiveMillionOddRoot7JumpPasses p
        (Nat.primeCounting p) = true := by
    rw [hcount]
    exact hpassLocal
  exact Erdos848.fiveMillionOddRoot7JumpPasses_sound
    hpassGlobal hlower hupper

end Erdos848.GeneratedTailRootJumpCoverage
