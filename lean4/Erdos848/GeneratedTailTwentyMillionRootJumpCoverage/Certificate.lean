import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0000
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0001
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0002
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0003
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0004
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0005
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0006
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0007
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0008
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0009
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0010
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0011
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0012
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0013
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0014
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0015
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0016
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0017
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpGroup0018

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem twentyMillionRoot_all_prime_jumps_le
    (p : Nat) (hp : Nat.Prime p)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpGlobalLower : 261426 ≤ p := by
    cases row <;>
      norm_num [Erdos848.TwentyMillionRootRow.split,
        Erdos848.twentyMillionLower] at hLower ⊢ <;> omega
  have hpGlobalUpper : p < 571429 := by
    cases row <;>
      norm_num [Erdos848.TwentyMillionRootRow.split,
        Erdos848.twentyMillionUpper] at hUpper ⊢ <;> omega
  by_cases hpiece0000 : p < 277810
  · exact rootJumpGroup0000_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 294194
    · exact rootJumpGroup0001_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 310578
      · exact rootJumpGroup0002_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 326962
        · exact rootJumpGroup0003_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 343346
          · exact rootJumpGroup0004_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 359730
            · exact rootJumpGroup0005_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 376114
              · exact rootJumpGroup0006_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · by_cases hpiece0007 : p < 392498
                · exact rootJumpGroup0007_sound p hp (by omega) hpiece0007 row hrow supportLength hLength hLower hUpper
                · by_cases hpiece0008 : p < 408882
                  · exact rootJumpGroup0008_sound p hp (by omega) hpiece0008 row hrow supportLength hLength hLower hUpper
                  · by_cases hpiece0009 : p < 425266
                    · exact rootJumpGroup0009_sound p hp (by omega) hpiece0009 row hrow supportLength hLength hLower hUpper
                    · by_cases hpiece0010 : p < 441650
                      · exact rootJumpGroup0010_sound p hp (by omega) hpiece0010 row hrow supportLength hLength hLower hUpper
                      · by_cases hpiece0011 : p < 458034
                        · exact rootJumpGroup0011_sound p hp (by omega) hpiece0011 row hrow supportLength hLength hLower hUpper
                        · by_cases hpiece0012 : p < 474418
                          · exact rootJumpGroup0012_sound p hp (by omega) hpiece0012 row hrow supportLength hLength hLower hUpper
                          · by_cases hpiece0013 : p < 490802
                            · exact rootJumpGroup0013_sound p hp (by omega) hpiece0013 row hrow supportLength hLength hLower hUpper
                            · by_cases hpiece0014 : p < 507186
                              · exact rootJumpGroup0014_sound p hp (by omega) hpiece0014 row hrow supportLength hLength hLower hUpper
                              · by_cases hpiece0015 : p < 523570
                                · exact rootJumpGroup0015_sound p hp (by omega) hpiece0015 row hrow supportLength hLength hLower hUpper
                                · by_cases hpiece0016 : p < 539954
                                  · exact rootJumpGroup0016_sound p hp (by omega) hpiece0016 row hrow supportLength hLength hLower hUpper
                                  · by_cases hpiece0017 : p < 556338
                                    · exact rootJumpGroup0017_sound p hp (by omega) hpiece0017 row hrow supportLength hLength hLower hUpper
                                    · exact rootJumpGroup0018_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

#print axioms twentyMillionRoot_all_prime_jumps_le

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
