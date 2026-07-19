import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0049
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0050
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0051
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0052
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0053
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0054
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0055
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0056

namespace Erdos848.GeneratedTailRootJumpCoverage

theorem jumpDispatchGroup0000_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hgroupLower : 100354 ≤ p)
    (hgroupUpper : p < 116738)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  by_cases hblock0049 : p < 102402
  · exact jumpBlock0049_all_prime_jumps_le p hp (by omega) hblock0049 hlower hupper
  · by_cases hblock0050 : p < 104450
    · exact jumpBlock0050_all_prime_jumps_le p hp (by omega) hblock0050 hlower hupper
    · by_cases hblock0051 : p < 106498
      · exact jumpBlock0051_all_prime_jumps_le p hp (by omega) hblock0051 hlower hupper
      · by_cases hblock0052 : p < 108546
        · exact jumpBlock0052_all_prime_jumps_le p hp (by omega) hblock0052 hlower hupper
        · by_cases hblock0053 : p < 110594
          · exact jumpBlock0053_all_prime_jumps_le p hp (by omega) hblock0053 hlower hupper
          · by_cases hblock0054 : p < 112642
            · exact jumpBlock0054_all_prime_jumps_le p hp (by omega) hblock0054 hlower hupper
            · by_cases hblock0055 : p < 114690
              · exact jumpBlock0055_all_prime_jumps_le p hp (by omega) hblock0055 hlower hupper
              · exact jumpBlock0056_all_prime_jumps_le p hp (by omega) (by omega) hlower hupper

end Erdos848.GeneratedTailRootJumpCoverage
