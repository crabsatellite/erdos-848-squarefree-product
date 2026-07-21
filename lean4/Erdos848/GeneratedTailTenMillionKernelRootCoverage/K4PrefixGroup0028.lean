import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0004

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0028NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k4PrefixGroup0028TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k4PrefixGroup0028MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k4PrefixGroup0028 : List (List ℕ) :=
  [[7, 11, 67],
    [7, 11, 71],
    [7, 11, 73],
    [7, 11, 79],
    [7, 11, 83],
    [7, 11, 89],
    [7, 11, 97],
    [7, 11, 101],
    [7, 11, 103],
    [7, 11, 107],
    [7, 11, 109],
    [7, 11, 113],
    [7, 11, 127],
    [7, 11, 131],
    [7, 11, 137],
    [7, 11, 139],
    [7, 11, 149],
    [7, 11, 151],
    [7, 11, 157],
    [7, 11, 163],
    [7, 11, 167],
    [7, 11, 173],
    [7, 11, 179],
    [7, 11, 181],
    [7, 11, 191],
    [7, 11, 193],
    [7, 11, 197],
    [7, 11, 199],
    [7, 11, 211],
    [7, 11, 223],
    [7, 11, 227],
    [7, 11, 229],
    [7, 11, 233],
    [7, 11, 239],
    [7, 11, 241],
    [7, 11, 251],
    [7, 11, 257],
    [7, 11, 263],
    [7, 11, 269],
    [7, 11, 271],
    [7, 11, 277],
    [7, 11, 281],
    [7, 11, 283],
    [7, 11, 293],
    [7, 11, 307],
    [7, 11, 311],
    [7, 11, 313],
    [7, 11, 317],
    [7, 11, 331],
    [7, 11, 337],
    [7, 11, 347],
    [7, 11, 349],
    [7, 11, 353],
    [7, 11, 359],
    [7, 11, 367],
    [7, 11, 373],
    [7, 11, 379],
    [7, 11, 383],
    [7, 11, 389],
    [7, 11, 397],
    [7, 11, 401],
    [7, 11, 409],
    [7, 11, 419],
    [7, 11, 421]]

theorem k4PrefixGroup0028_support_covered :
    k4PrefixGroup0028.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0028MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0028_passes :
    k4PrefixGroup0028.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0028NormalLookup
        k4PrefixGroup0028TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0028_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0028NormalLookup
        k4PrefixGroup0028TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0028NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0028TwistLookup p =
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

theorem k4PrefixGroup0028_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0028NormalLookup
        k4PrefixGroup0028TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0028NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0028TwistLookup p =
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

theorem k4PrefixGroup0028_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0028NormalLookup
        k4PrefixGroup0028TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0028NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0028TwistLookup p =
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

theorem k4PrefixGroup0028_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0028NormalLookup
        k4PrefixGroup0028TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0028NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0028TwistLookup p =
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

theorem k4PrefixGroup0028_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0028NormalLookup
        k4PrefixGroup0028TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k4PrefixGroup0028NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0028TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k4PrefixGroup0028_mask_primes_pass :
    k4PrefixGroup0028MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0028NormalLookup
        k4PrefixGroup0028TwistLookup) = true := by
  simp only [k4PrefixGroup0028MaskPrimes, List.all_append]
  rw [k4PrefixGroup0028_mask_group0000_passes]
  rw [k4PrefixGroup0028_mask_group0001_passes]
  rw [k4PrefixGroup0028_mask_group0002_passes]
  rw [k4PrefixGroup0028_mask_group0003_passes]
  rw [k4PrefixGroup0028_mask_group0004_passes]
  rfl

theorem k4PrefixGroup0028_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0028) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0028NormalLookup,
    k4PrefixGroup0028TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0028_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0028_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0028MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0028_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0028_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
