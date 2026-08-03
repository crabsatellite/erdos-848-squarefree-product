import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0027NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0027TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0027MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0027 : List (List ℕ) :=
  [[3, 139, 199],
    [3, 139, 211],
    [3, 149, 151],
    [3, 149, 157],
    [3, 149, 163],
    [3, 149, 167],
    [3, 149, 173],
    [3, 149, 179],
    [3, 149, 181],
    [3, 149, 191],
    [3, 149, 193],
    [3, 149, 197],
    [3, 149, 199],
    [3, 151, 157],
    [3, 151, 163],
    [3, 151, 167],
    [3, 151, 173],
    [3, 151, 179],
    [3, 151, 181],
    [3, 151, 191],
    [3, 151, 193],
    [3, 151, 197],
    [3, 151, 199],
    [3, 157, 163],
    [3, 157, 167],
    [3, 157, 173],
    [3, 157, 179],
    [3, 157, 181],
    [3, 157, 191],
    [3, 157, 193],
    [3, 157, 197],
    [3, 157, 199],
    [3, 163, 167],
    [3, 163, 173],
    [3, 163, 179],
    [3, 163, 181],
    [3, 163, 191],
    [3, 163, 193],
    [3, 163, 197],
    [3, 167, 173],
    [3, 167, 179],
    [3, 167, 181],
    [3, 167, 191],
    [3, 167, 193],
    [3, 167, 197],
    [3, 173, 179],
    [3, 173, 181],
    [3, 173, 191],
    [3, 173, 193],
    [3, 179, 181],
    [3, 179, 191],
    [7, 11, 13],
    [7, 11, 17],
    [7, 11, 19],
    [7, 11, 23],
    [7, 11, 29],
    [7, 11, 31],
    [7, 11, 37],
    [7, 11, 41],
    [7, 11, 43],
    [7, 11, 47],
    [7, 11, 53],
    [7, 11, 59],
    [7, 11, 61]]

theorem k4PrefixGroup0027_support_covered :
    k4PrefixGroup0027.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0027MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0027_passes :
    k4PrefixGroup0027.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0027NormalLookup
        k4PrefixGroup0027TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0027_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0027NormalLookup
        k4PrefixGroup0027TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0027NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0027TwistLookup p =
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

theorem k4PrefixGroup0027_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0027NormalLookup
        k4PrefixGroup0027TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0027NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0027TwistLookup p =
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

theorem k4PrefixGroup0027_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0027NormalLookup
        k4PrefixGroup0027TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0027NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0027TwistLookup p =
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

theorem k4PrefixGroup0027_mask_primes_pass :
    k4PrefixGroup0027MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0027NormalLookup
        k4PrefixGroup0027TwistLookup) = true := by
  simp only [k4PrefixGroup0027MaskPrimes, List.all_append]
  rw [k4PrefixGroup0027_mask_group0000_passes]
  rw [k4PrefixGroup0027_mask_group0001_passes]
  rw [k4PrefixGroup0027_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0027_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0027) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0027NormalLookup,
    k4PrefixGroup0027TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0027_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0027_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0027MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0027_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0027_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
