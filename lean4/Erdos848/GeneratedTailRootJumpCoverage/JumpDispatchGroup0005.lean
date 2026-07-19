import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0089
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0090
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0091
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0092
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0093
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0094
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0095
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0096

namespace Erdos848.GeneratedTailRootJumpCoverage

theorem jumpDispatchGroup0005_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hgroupLower : 182274 ≤ p)
    (hgroupUpper : p < 198658)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  by_cases hblock0089 : p < 184322
  · exact jumpBlock0089_all_prime_jumps_le p hp (by omega) hblock0089 hlower hupper
  · by_cases hblock0090 : p < 186370
    · exact jumpBlock0090_all_prime_jumps_le p hp (by omega) hblock0090 hlower hupper
    · by_cases hblock0091 : p < 188418
      · exact jumpBlock0091_all_prime_jumps_le p hp (by omega) hblock0091 hlower hupper
      · by_cases hblock0092 : p < 190466
        · exact jumpBlock0092_all_prime_jumps_le p hp (by omega) hblock0092 hlower hupper
        · by_cases hblock0093 : p < 192514
          · exact jumpBlock0093_all_prime_jumps_le p hp (by omega) hblock0093 hlower hupper
          · by_cases hblock0094 : p < 194562
            · exact jumpBlock0094_all_prime_jumps_le p hp (by omega) hblock0094 hlower hupper
            · by_cases hblock0095 : p < 196610
              · exact jumpBlock0095_all_prime_jumps_le p hp (by omega) hblock0095 hlower hupper
              · exact jumpBlock0096_all_prime_jumps_le p hp (by omega) (by omega) hlower hupper

end Erdos848.GeneratedTailRootJumpCoverage
