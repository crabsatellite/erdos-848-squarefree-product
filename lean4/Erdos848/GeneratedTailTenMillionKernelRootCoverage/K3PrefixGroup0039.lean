import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0004
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0005

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0039NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  if p ≤ 521 then rootNormalQrMaskWords0005 p else
  []

def k3PrefixGroup0039TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  if p ≤ 521 then rootTwistQrMaskWords0005 p else
  []

def k3PrefixGroup0039MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004 ++
  rootMaskSemanticGroup0005

def k3PrefixGroup0039 : List (List ℕ) :=
  [[67, 71],
    [67, 73],
    [67, 79],
    [67, 83],
    [67, 89],
    [67, 97],
    [67, 101],
    [67, 103],
    [67, 107],
    [67, 109],
    [67, 113],
    [67, 127],
    [67, 131],
    [67, 137],
    [67, 139],
    [67, 149],
    [67, 151],
    [67, 157],
    [67, 163],
    [67, 167],
    [67, 173],
    [67, 179],
    [67, 181],
    [67, 191],
    [67, 193],
    [67, 197],
    [67, 199],
    [67, 211],
    [67, 223],
    [67, 227],
    [67, 229],
    [67, 233],
    [67, 239],
    [67, 241],
    [67, 251],
    [67, 257],
    [67, 263],
    [67, 269],
    [67, 271],
    [67, 277],
    [67, 281],
    [67, 283],
    [67, 293],
    [67, 307],
    [67, 311],
    [67, 313],
    [67, 317],
    [67, 331],
    [67, 337],
    [67, 347],
    [67, 349],
    [67, 353],
    [67, 359],
    [67, 367],
    [67, 373],
    [67, 379],
    [67, 383],
    [67, 389],
    [67, 397],
    [67, 401],
    [67, 409],
    [67, 419],
    [67, 421],
    [67, 431]]

theorem k3PrefixGroup0039_support_covered :
    k3PrefixGroup0039.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0039MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0039_passes :
    k3PrefixGroup0039.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k3PrefixGroup0039NormalLookup
        k3PrefixGroup0039TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0039_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0039NormalLookup
        k3PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k3PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0039TwistLookup p =
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

theorem k3PrefixGroup0039_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0039NormalLookup
        k3PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0039TwistLookup p =
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

theorem k3PrefixGroup0039_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0039NormalLookup
        k3PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0039TwistLookup p =
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

theorem k3PrefixGroup0039_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0039NormalLookup
        k3PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0039TwistLookup p =
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

theorem k3PrefixGroup0039_mask_group0005_passes :
    rootMaskSemanticGroup0005.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0039NormalLookup
        k3PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0005_passes) p hp
  have hnormal : k3PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0039TwistLookup p =
      rootTwistQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0039_mask_primes_pass :
    k3PrefixGroup0039MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0039NormalLookup
        k3PrefixGroup0039TwistLookup) = true := by
  simp only [k3PrefixGroup0039MaskPrimes, List.all_append]
  rw [k3PrefixGroup0039_mask_group0001_passes]
  rw [k3PrefixGroup0039_mask_group0002_passes]
  rw [k3PrefixGroup0039_mask_group0003_passes]
  rw [k3PrefixGroup0039_mask_group0004_passes]
  rw [k3PrefixGroup0039_mask_group0005_passes]
  rfl

theorem k3PrefixGroup0039_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0039) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0039NormalLookup,
    k3PrefixGroup0039TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0039_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0039_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0039MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0039_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0039_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
