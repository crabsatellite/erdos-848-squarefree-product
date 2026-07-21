import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0002NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k5PrefixGroup0002TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k5PrefixGroup0002MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k5PrefixGroup0002 : List (List ℕ) :=
  [[3, 7, 17, 109],
    [3, 7, 17, 113],
    [3, 7, 17, 127],
    [3, 7, 17, 131],
    [3, 7, 17, 137],
    [3, 7, 17, 139],
    [3, 7, 17, 149],
    [3, 7, 17, 151],
    [3, 7, 17, 157],
    [3, 7, 17, 163],
    [3, 7, 17, 167],
    [3, 7, 17, 173],
    [3, 7, 17, 179],
    [3, 7, 17, 181],
    [3, 7, 17, 191],
    [3, 7, 17, 193],
    [3, 7, 17, 197],
    [3, 7, 17, 199],
    [3, 7, 17, 211],
    [3, 7, 17, 223],
    [3, 7, 17, 227],
    [3, 7, 17, 229],
    [3, 7, 17, 233],
    [3, 7, 19, 23],
    [3, 7, 19, 29],
    [3, 7, 19, 31],
    [3, 7, 19, 37],
    [3, 7, 19, 41],
    [3, 7, 19, 43],
    [3, 7, 19, 47],
    [3, 7, 19, 53],
    [3, 7, 19, 59],
    [3, 7, 19, 61],
    [3, 7, 19, 67],
    [3, 7, 19, 71],
    [3, 7, 19, 73],
    [3, 7, 19, 79],
    [3, 7, 19, 83],
    [3, 7, 19, 89],
    [3, 7, 19, 97],
    [3, 7, 19, 101],
    [3, 7, 19, 103],
    [3, 7, 19, 107],
    [3, 7, 19, 109],
    [3, 7, 19, 113],
    [3, 7, 19, 127],
    [3, 7, 19, 131],
    [3, 7, 19, 137],
    [3, 7, 19, 139],
    [3, 7, 19, 149],
    [3, 7, 19, 151],
    [3, 7, 19, 157],
    [3, 7, 19, 163],
    [3, 7, 19, 167],
    [3, 7, 19, 173],
    [3, 7, 19, 179],
    [3, 7, 19, 181],
    [3, 7, 19, 191],
    [3, 7, 19, 193],
    [3, 7, 19, 197],
    [3, 7, 19, 199],
    [3, 7, 19, 211],
    [3, 7, 23, 29],
    [3, 7, 23, 31]]

theorem k5PrefixGroup0002_support_covered :
    k5PrefixGroup0002.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0002MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0002_passes :
    k5PrefixGroup0002.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0002NormalLookup
        k5PrefixGroup0002TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0002_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0002NormalLookup
        k5PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k5PrefixGroup0002_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0002NormalLookup
        k5PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k5PrefixGroup0002_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0002NormalLookup
        k5PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k5PrefixGroup0002_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0002NormalLookup
        k5PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k5PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k5PrefixGroup0002_mask_primes_pass :
    k5PrefixGroup0002MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0002NormalLookup
        k5PrefixGroup0002TwistLookup) = true := by
  simp only [k5PrefixGroup0002MaskPrimes, List.all_append]
  rw [k5PrefixGroup0002_mask_group0000_passes]
  rw [k5PrefixGroup0002_mask_group0001_passes]
  rw [k5PrefixGroup0002_mask_group0002_passes]
  rw [k5PrefixGroup0002_mask_group0003_passes]
  rfl

theorem k5PrefixGroup0002_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0002) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0002NormalLookup,
    k5PrefixGroup0002TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0002_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0002_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0002MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0002_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0002_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
