import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockBoundary0095
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0095

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem jumpBlock0095_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hblockLower : 194562 ≤ p)
    (hblockUpper : p < 196610)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095.prime_mem_listed
      hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095.allPrimeRanks_holds
    jumpBlock0095_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095.primeCounting_eq_before_add_localRank
    (by decide) primeCounting_blockBoundary0095 hpListed
  have hpassGlobal :
      Erdos848.fiveMillionOddRoot7JumpPasses p
        (Nat.primeCounting p) = true := by
    rw [hcount]
    exact hpassLocal
  exact Erdos848.fiveMillionOddRoot7JumpPasses_sound
    hpassGlobal hlower hupper

end Erdos848.GeneratedTailRootJumpCoverage
