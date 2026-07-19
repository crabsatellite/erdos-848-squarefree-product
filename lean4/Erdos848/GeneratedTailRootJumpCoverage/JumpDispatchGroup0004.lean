import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0081
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0082
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0083
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0084
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0085
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0086
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0087
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0088

namespace Erdos848.GeneratedTailRootJumpCoverage

theorem jumpDispatchGroup0004_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hgroupLower : 165890 ≤ p)
    (hgroupUpper : p < 182274)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  by_cases hblock0081 : p < 167938
  · exact jumpBlock0081_all_prime_jumps_le p hp (by omega) hblock0081 hlower hupper
  · by_cases hblock0082 : p < 169986
    · exact jumpBlock0082_all_prime_jumps_le p hp (by omega) hblock0082 hlower hupper
    · by_cases hblock0083 : p < 172034
      · exact jumpBlock0083_all_prime_jumps_le p hp (by omega) hblock0083 hlower hupper
      · by_cases hblock0084 : p < 174082
        · exact jumpBlock0084_all_prime_jumps_le p hp (by omega) hblock0084 hlower hupper
        · by_cases hblock0085 : p < 176130
          · exact jumpBlock0085_all_prime_jumps_le p hp (by omega) hblock0085 hlower hupper
          · by_cases hblock0086 : p < 178178
            · exact jumpBlock0086_all_prime_jumps_le p hp (by omega) hblock0086 hlower hupper
            · by_cases hblock0087 : p < 180226
              · exact jumpBlock0087_all_prime_jumps_le p hp (by omega) hblock0087 hlower hupper
              · exact jumpBlock0088_all_prime_jumps_le p hp (by omega) (by omega) hlower hupper

end Erdos848.GeneratedTailRootJumpCoverage
