import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0060NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0060TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0060MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0060 : List (List ℕ) :=
  [[17, 19, 113],
    [17, 19, 127],
    [17, 19, 131],
    [17, 19, 137],
    [17, 19, 139],
    [17, 19, 149],
    [17, 19, 151],
    [17, 19, 157],
    [17, 19, 163],
    [17, 19, 167],
    [17, 19, 173],
    [17, 19, 179],
    [17, 19, 181],
    [17, 19, 191],
    [17, 19, 193],
    [17, 19, 197],
    [17, 19, 199],
    [17, 19, 211],
    [17, 19, 223],
    [17, 19, 227],
    [17, 19, 229],
    [17, 19, 233],
    [17, 19, 239],
    [17, 19, 241],
    [17, 23, 29],
    [17, 23, 31],
    [17, 23, 37],
    [17, 23, 41],
    [17, 23, 43],
    [17, 23, 47],
    [17, 23, 53],
    [17, 23, 59],
    [17, 23, 61],
    [17, 23, 67],
    [17, 23, 71],
    [17, 23, 73],
    [17, 23, 79],
    [17, 23, 83],
    [17, 23, 89],
    [17, 23, 97],
    [17, 23, 101],
    [17, 23, 103],
    [17, 23, 107],
    [17, 23, 109],
    [17, 23, 113],
    [17, 23, 127],
    [17, 23, 131],
    [17, 23, 137],
    [17, 23, 139],
    [17, 23, 149],
    [17, 23, 151],
    [17, 23, 157],
    [17, 23, 163],
    [17, 23, 167],
    [17, 23, 173],
    [17, 23, 179],
    [17, 23, 181],
    [17, 23, 191],
    [17, 23, 193],
    [17, 23, 197],
    [17, 23, 199],
    [17, 23, 211],
    [17, 23, 223],
    [17, 29, 31]]

theorem k4PrefixGroup0060_support_covered :
    k4PrefixGroup0060.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0060MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0060_passes :
    k4PrefixGroup0060.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0060_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0060TwistLookup p =
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

theorem k4PrefixGroup0060_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0060TwistLookup p =
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

theorem k4PrefixGroup0060_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0060TwistLookup p =
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

theorem k4PrefixGroup0060_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0060TwistLookup p =
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

theorem k4PrefixGroup0060_mask_primes_pass :
    k4PrefixGroup0060MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup) = true := by
  simp only [k4PrefixGroup0060MaskPrimes, List.all_append]
  rw [k4PrefixGroup0060_mask_group0000_passes]
  rw [k4PrefixGroup0060_mask_group0001_passes]
  rw [k4PrefixGroup0060_mask_group0002_passes]
  rw [k4PrefixGroup0060_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0060_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0060) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0060NormalLookup,
    k4PrefixGroup0060TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0060_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0060_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0060MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0060_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0060_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
