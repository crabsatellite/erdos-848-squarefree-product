import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0044NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0044TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0044MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0044 : List (List ℕ) :=
  [[11, 17, 193],
    [11, 17, 197],
    [11, 17, 199],
    [11, 17, 211],
    [11, 17, 223],
    [11, 17, 227],
    [11, 17, 229],
    [11, 17, 233],
    [11, 17, 239],
    [11, 17, 241],
    [11, 17, 251],
    [11, 17, 257],
    [11, 17, 263],
    [11, 17, 269],
    [11, 17, 271],
    [11, 17, 277],
    [11, 17, 281],
    [11, 17, 283],
    [11, 17, 293],
    [11, 17, 307],
    [11, 17, 311],
    [11, 17, 313],
    [11, 17, 317],
    [11, 19, 23],
    [11, 19, 29],
    [11, 19, 31],
    [11, 19, 37],
    [11, 19, 41],
    [11, 19, 43],
    [11, 19, 47],
    [11, 19, 53],
    [11, 19, 59],
    [11, 19, 61],
    [11, 19, 67],
    [11, 19, 71],
    [11, 19, 73],
    [11, 19, 79],
    [11, 19, 83],
    [11, 19, 89],
    [11, 19, 97],
    [11, 19, 101],
    [11, 19, 103],
    [11, 19, 107],
    [11, 19, 109],
    [11, 19, 113],
    [11, 19, 127],
    [11, 19, 131],
    [11, 19, 137],
    [11, 19, 139],
    [11, 19, 149],
    [11, 19, 151],
    [11, 19, 157],
    [11, 19, 163],
    [11, 19, 167],
    [11, 19, 173],
    [11, 19, 179],
    [11, 19, 181],
    [11, 19, 191],
    [11, 19, 193],
    [11, 19, 197],
    [11, 19, 199],
    [11, 19, 211],
    [11, 19, 223],
    [11, 19, 227]]

theorem k4PrefixGroup0044_support_covered :
    k4PrefixGroup0044.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0044MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0044_passes :
    k4PrefixGroup0044.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0044NormalLookup
        k4PrefixGroup0044TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0044_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0044NormalLookup
        k4PrefixGroup0044TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0044NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0044TwistLookup p =
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

theorem k4PrefixGroup0044_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0044NormalLookup
        k4PrefixGroup0044TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0044NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0044TwistLookup p =
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

theorem k4PrefixGroup0044_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0044NormalLookup
        k4PrefixGroup0044TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0044NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0044TwistLookup p =
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

theorem k4PrefixGroup0044_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0044NormalLookup
        k4PrefixGroup0044TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0044NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0044TwistLookup p =
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

theorem k4PrefixGroup0044_mask_primes_pass :
    k4PrefixGroup0044MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0044NormalLookup
        k4PrefixGroup0044TwistLookup) = true := by
  simp only [k4PrefixGroup0044MaskPrimes, List.all_append]
  rw [k4PrefixGroup0044_mask_group0000_passes]
  rw [k4PrefixGroup0044_mask_group0001_passes]
  rw [k4PrefixGroup0044_mask_group0002_passes]
  rw [k4PrefixGroup0044_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0044_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0044) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0044NormalLookup,
    k4PrefixGroup0044TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0044_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0044_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0044MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0044_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0044_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
