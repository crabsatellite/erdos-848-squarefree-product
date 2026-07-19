import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0073
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0074
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0075
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0076
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0077
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0078
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0079
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlockClose0080

namespace Erdos848.GeneratedTailRootJumpCoverage

theorem jumpDispatchGroup0003_all_prime_jumps_le
    (p : ℕ) (hp : Nat.Prime p)
    (hgroupLower : 149506 ≤ p)
    (hgroupUpper : p < 165890)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    Erdos848.transformedRootRow (49 * p) p
        (Nat.primeCounting p - 4)
        Erdos848.fiveMillionOddRoot7Height
        Erdos848.fiveMillionOddRoot7Survivors ≤
      Erdos848.fiveMillionOddRoot7Envelope := by
  by_cases hblock0073 : p < 151554
  · exact jumpBlock0073_all_prime_jumps_le p hp (by omega) hblock0073 hlower hupper
  · by_cases hblock0074 : p < 153602
    · exact jumpBlock0074_all_prime_jumps_le p hp (by omega) hblock0074 hlower hupper
    · by_cases hblock0075 : p < 155650
      · exact jumpBlock0075_all_prime_jumps_le p hp (by omega) hblock0075 hlower hupper
      · by_cases hblock0076 : p < 157698
        · exact jumpBlock0076_all_prime_jumps_le p hp (by omega) hblock0076 hlower hupper
        · by_cases hblock0077 : p < 159746
          · exact jumpBlock0077_all_prime_jumps_le p hp (by omega) hblock0077 hlower hupper
          · by_cases hblock0078 : p < 161794
            · exact jumpBlock0078_all_prime_jumps_le p hp (by omega) hblock0078 hlower hupper
            · by_cases hblock0079 : p < 163842
              · exact jumpBlock0079_all_prime_jumps_le p hp (by omega) hblock0079 hlower hupper
              · exact jumpBlock0080_all_prime_jumps_le p hp (by omega) (by omega) hlower hupper

end Erdos848.GeneratedTailRootJumpCoverage
