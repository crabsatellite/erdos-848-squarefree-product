import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0008NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0008TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0008MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0008 : List (List ℕ) :=
  [[3, 11, 17, 113],
    [3, 11, 17, 127],
    [3, 11, 17, 131],
    [3, 11, 17, 137],
    [3, 11, 17, 139],
    [3, 11, 17, 149],
    [3, 11, 17, 151],
    [3, 11, 17, 157],
    [3, 11, 17, 163],
    [3, 11, 17, 167],
    [3, 11, 17, 173],
    [3, 11, 17, 179],
    [3, 11, 17, 181],
    [3, 11, 19, 23],
    [3, 11, 19, 29],
    [3, 11, 19, 31],
    [3, 11, 19, 37],
    [3, 11, 19, 41],
    [3, 11, 19, 43],
    [3, 11, 19, 47],
    [3, 11, 19, 53],
    [3, 11, 19, 59],
    [3, 11, 19, 61],
    [3, 11, 19, 67],
    [3, 11, 19, 71],
    [3, 11, 19, 73],
    [3, 11, 19, 79],
    [3, 11, 19, 83],
    [3, 11, 19, 89],
    [3, 11, 19, 97],
    [3, 11, 19, 101],
    [3, 11, 19, 103],
    [3, 11, 19, 107],
    [3, 11, 19, 109],
    [3, 11, 19, 113],
    [3, 11, 19, 127],
    [3, 11, 19, 131],
    [3, 11, 19, 137],
    [3, 11, 19, 139],
    [3, 11, 19, 149],
    [3, 11, 19, 151],
    [3, 11, 19, 157],
    [3, 11, 19, 163],
    [3, 11, 19, 167],
    [3, 11, 19, 173],
    [3, 11, 23, 29],
    [3, 11, 23, 31],
    [3, 11, 23, 37],
    [3, 11, 23, 41],
    [3, 11, 23, 43],
    [3, 11, 23, 47],
    [3, 11, 23, 53],
    [3, 11, 23, 59],
    [3, 11, 23, 61],
    [3, 11, 23, 67],
    [3, 11, 23, 71],
    [3, 11, 23, 73],
    [3, 11, 23, 79],
    [3, 11, 23, 83],
    [3, 11, 23, 89],
    [3, 11, 23, 97],
    [3, 11, 23, 101],
    [3, 11, 23, 103],
    [3, 11, 23, 107]]

theorem k5PrefixGroup0008_support_covered :
    k5PrefixGroup0008.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0008MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0008_passes :
    k5PrefixGroup0008.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0008NormalLookup
        k5PrefixGroup0008TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0008_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0008NormalLookup
        k5PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0008TwistLookup p =
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

theorem k5PrefixGroup0008_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0008NormalLookup
        k5PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0008TwistLookup p =
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

theorem k5PrefixGroup0008_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0008NormalLookup
        k5PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0008TwistLookup p =
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

theorem k5PrefixGroup0008_mask_primes_pass :
    k5PrefixGroup0008MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0008NormalLookup
        k5PrefixGroup0008TwistLookup) = true := by
  simp only [k5PrefixGroup0008MaskPrimes, List.all_append]
  rw [k5PrefixGroup0008_mask_group0000_passes]
  rw [k5PrefixGroup0008_mask_group0001_passes]
  rw [k5PrefixGroup0008_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0008_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0008) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0008NormalLookup,
    k5PrefixGroup0008TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0008_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0008_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0008MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0008_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0008_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
