import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0057
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0058
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0059
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0060
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0061
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0062
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0063
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0064

namespace Erdos848.GeneratedTailRootJumpCoverage

theorem jumpDispatchGroup0001_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hgroupLower : 116738 ≤ p)
    (hgroupUpper : p < 133122)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  by_cases hblock0057 : p < 118786
  · exact jumpBlock0057_all_prime_jumps_le p hp (by omega) hblock0057 hlower hupper
  · by_cases hblock0058 : p < 120834
    · exact jumpBlock0058_all_prime_jumps_le p hp (by omega) hblock0058 hlower hupper
    · by_cases hblock0059 : p < 122882
      · exact jumpBlock0059_all_prime_jumps_le p hp (by omega) hblock0059 hlower hupper
      · by_cases hblock0060 : p < 124930
        · exact jumpBlock0060_all_prime_jumps_le p hp (by omega) hblock0060 hlower hupper
        · by_cases hblock0061 : p < 126978
          · exact jumpBlock0061_all_prime_jumps_le p hp (by omega) hblock0061 hlower hupper
          · by_cases hblock0062 : p < 129026
            · exact jumpBlock0062_all_prime_jumps_le p hp (by omega) hblock0062 hlower hupper
            · by_cases hblock0063 : p < 131074
              · exact jumpBlock0063_all_prime_jumps_le p hp (by omega) hblock0063 hlower hupper
              · exact jumpBlock0064_all_prime_jumps_le p hp (by omega) (by omega) hlower hupper

end Erdos848.GeneratedTailRootJumpCoverage
