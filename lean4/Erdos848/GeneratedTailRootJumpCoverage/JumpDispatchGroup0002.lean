import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0065
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0066
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0067
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0068
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0069
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0070
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0071
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0072

namespace Erdos848.GeneratedTailRootJumpCoverage

theorem jumpDispatchGroup0002_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hgroupLower : 133122 ≤ p)
    (hgroupUpper : p < 149506)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  by_cases hblock0065 : p < 135170
  · exact jumpBlock0065_all_prime_jumps_le p hp (by omega) hblock0065 hlower hupper
  · by_cases hblock0066 : p < 137218
    · exact jumpBlock0066_all_prime_jumps_le p hp (by omega) hblock0066 hlower hupper
    · by_cases hblock0067 : p < 139266
      · exact jumpBlock0067_all_prime_jumps_le p hp (by omega) hblock0067 hlower hupper
      · by_cases hblock0068 : p < 141314
        · exact jumpBlock0068_all_prime_jumps_le p hp (by omega) hblock0068 hlower hupper
        · by_cases hblock0069 : p < 143362
          · exact jumpBlock0069_all_prime_jumps_le p hp (by omega) hblock0069 hlower hupper
          · by_cases hblock0070 : p < 145410
            · exact jumpBlock0070_all_prime_jumps_le p hp (by omega) hblock0070 hlower hupper
            · by_cases hblock0071 : p < 147458
              · exact jumpBlock0071_all_prime_jumps_le p hp (by omega) hblock0071 hlower hupper
              · exact jumpBlock0072_all_prime_jumps_le p hp (by omega) (by omega) hlower hupper

end Erdos848.GeneratedTailRootJumpCoverage
