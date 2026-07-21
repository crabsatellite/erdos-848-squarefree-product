import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0003
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0004
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0005
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0006
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0007
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0008
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0009
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0010
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpGroup0011

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem tenMillionKernelRoot_all_prime_jumps_le
    (p : Nat) (hp : Nat.Prime p)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpGlobalLower : 126978 ≤ p := by
    cases row <;>
      norm_num [Erdos848.TenMillionKernelRootRow.split,
        Erdos848.tenMillionLower] at hLower ⊢ <;> omega
  have hpGlobalUpper : p < 322581 := by
    cases row <;>
      norm_num [Erdos848.TenMillionKernelRootRow.split,
        Erdos848.tenMillionUpper] at hUpper ⊢ <;> omega
  by_cases hpiece0000 : p < 143362
  · exact rootJumpGroup0000_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 159746
    · exact rootJumpGroup0001_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 176130
      · exact rootJumpGroup0002_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 192514
        · exact rootJumpGroup0003_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 208178
          · exact rootJumpGroup0004_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 224562
            · exact rootJumpGroup0005_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 240946
              · exact rootJumpGroup0006_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · by_cases hpiece0007 : p < 257330
                · exact rootJumpGroup0007_sound p hp (by omega) hpiece0007 row hrow supportLength hLength hLower hUpper
                · by_cases hpiece0008 : p < 273714
                  · exact rootJumpGroup0008_sound p hp (by omega) hpiece0008 row hrow supportLength hLength hLower hUpper
                  · by_cases hpiece0009 : p < 290098
                    · exact rootJumpGroup0009_sound p hp (by omega) hpiece0009 row hrow supportLength hLength hLower hUpper
                    · by_cases hpiece0010 : p < 306482
                      · exact rootJumpGroup0010_sound p hp (by omega) hpiece0010 row hrow supportLength hLength hLower hUpper
                      · exact rootJumpGroup0011_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
