import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0034NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0034TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0034MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0034 : List (List ℕ) :=
  [[7, 29, 131],
    [7, 29, 137],
    [7, 29, 139],
    [7, 29, 149],
    [7, 29, 151],
    [7, 29, 157],
    [7, 29, 163],
    [7, 29, 167],
    [7, 29, 173],
    [7, 29, 179],
    [7, 29, 181],
    [7, 29, 191],
    [7, 29, 193],
    [7, 29, 197],
    [7, 29, 199],
    [7, 29, 211],
    [7, 29, 223],
    [7, 29, 227],
    [7, 29, 229],
    [7, 29, 233],
    [7, 29, 239],
    [7, 29, 241],
    [7, 29, 251],
    [7, 29, 257],
    [7, 29, 263],
    [7, 29, 269],
    [7, 29, 271],
    [7, 29, 277],
    [7, 29, 281],
    [7, 29, 283],
    [7, 29, 293],
    [7, 29, 307],
    [7, 29, 311],
    [7, 31, 37],
    [7, 31, 41],
    [7, 31, 43],
    [7, 31, 47],
    [7, 31, 53],
    [7, 31, 59],
    [7, 31, 61],
    [7, 31, 67],
    [7, 31, 71],
    [7, 31, 73],
    [7, 31, 79],
    [7, 31, 83],
    [7, 31, 89],
    [7, 31, 97],
    [7, 31, 101],
    [7, 31, 103],
    [7, 31, 107],
    [7, 31, 109],
    [7, 31, 113],
    [7, 31, 127],
    [7, 31, 131],
    [7, 31, 137],
    [7, 31, 139],
    [7, 31, 149],
    [7, 31, 151],
    [7, 31, 157],
    [7, 31, 163],
    [7, 31, 167],
    [7, 31, 173],
    [7, 31, 179],
    [7, 31, 181]]

theorem k4PrefixGroup0034_support_covered :
    k4PrefixGroup0034.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0034MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0034_passes :
    k4PrefixGroup0034.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0034NormalLookup
        k4PrefixGroup0034TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0034_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0034NormalLookup
        k4PrefixGroup0034TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0034NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0034TwistLookup p =
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

theorem k4PrefixGroup0034_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0034NormalLookup
        k4PrefixGroup0034TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0034NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0034TwistLookup p =
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

theorem k4PrefixGroup0034_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0034NormalLookup
        k4PrefixGroup0034TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0034NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0034TwistLookup p =
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

theorem k4PrefixGroup0034_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0034NormalLookup
        k4PrefixGroup0034TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0034NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0034TwistLookup p =
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

theorem k4PrefixGroup0034_mask_primes_pass :
    k4PrefixGroup0034MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0034NormalLookup
        k4PrefixGroup0034TwistLookup) = true := by
  simp only [k4PrefixGroup0034MaskPrimes, List.all_append]
  rw [k4PrefixGroup0034_mask_group0000_passes]
  rw [k4PrefixGroup0034_mask_group0001_passes]
  rw [k4PrefixGroup0034_mask_group0002_passes]
  rw [k4PrefixGroup0034_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0034_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0034) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0034NormalLookup,
    k4PrefixGroup0034TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0034_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0034_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0034MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0034_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0034_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
