import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0097
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0098
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0099

namespace Erdos848.GeneratedTailRootJumpCoverage

theorem jumpDispatchGroup0006_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hgroupLower : 198658 ≤ p)
    (hgroupUpper : p < 204082)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  by_cases hblock0097 : p < 200706
  · exact jumpBlock0097_all_prime_jumps_le p hp (by omega) hblock0097 hlower hupper
  · by_cases hblock0098 : p < 202754
    · exact jumpBlock0098_all_prime_jumps_le p hp (by omega) hblock0098 hlower hupper
    · exact jumpBlock0099_all_prime_jumps_le p hp (by omega) (by omega) hlower hupper

end Erdos848.GeneratedTailRootJumpCoverage
