import Erdos848.GeneratedTailRootJumpCoverage.JumpDispatchGroup0000
import Erdos848.GeneratedTailRootJumpCoverage.JumpDispatchGroup0001
import Erdos848.GeneratedTailRootJumpCoverage.JumpDispatchGroup0002
import Erdos848.GeneratedTailRootJumpCoverage.JumpDispatchGroup0003
import Erdos848.GeneratedTailRootJumpCoverage.JumpDispatchGroup0004
import Erdos848.GeneratedTailRootJumpCoverage.JumpDispatchGroup0005
import Erdos848.GeneratedTailRootJumpCoverage.JumpDispatchGroup0006

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem fiveMillionOddRoot7_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  by_cases hgroup0000 : p < 116738
  · exact jumpDispatchGroup0000_all_prime_jumps_le p hp (by omega) hgroup0000 hlower hupper
  · by_cases hgroup0001 : p < 133122
    · exact jumpDispatchGroup0001_all_prime_jumps_le p hp (by omega) hgroup0001 hlower hupper
    · by_cases hgroup0002 : p < 149506
      · exact jumpDispatchGroup0002_all_prime_jumps_le p hp (by omega) hgroup0002 hlower hupper
      · by_cases hgroup0003 : p < 165890
        · exact jumpDispatchGroup0003_all_prime_jumps_le p hp (by omega) hgroup0003 hlower hupper
        · by_cases hgroup0004 : p < 182274
          · exact jumpDispatchGroup0004_all_prime_jumps_le p hp (by omega) hgroup0004 hlower hupper
          · by_cases hgroup0005 : p < 198658
            · exact jumpDispatchGroup0005_all_prime_jumps_le p hp (by omega) hgroup0005 hlower hupper
            · exact jumpDispatchGroup0006_all_prime_jumps_le p hp (by omega) (by omega) hlower hupper

#print axioms fiveMillionOddRoot7_all_prime_jumps_le

end Erdos848.GeneratedTailRootJumpCoverage
