import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0067NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0067TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0067MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0067 : List (List ℕ) :=
  [[19, 37, 127],
    [19, 37, 131],
    [19, 37, 137],
    [19, 37, 139],
    [19, 37, 149],
    [19, 37, 151],
    [19, 37, 157],
    [19, 37, 163],
    [19, 41, 43],
    [19, 41, 47],
    [19, 41, 53],
    [19, 41, 59],
    [19, 41, 61],
    [19, 41, 67],
    [19, 41, 71],
    [19, 41, 73],
    [19, 41, 79],
    [19, 41, 83],
    [19, 41, 89],
    [19, 41, 97],
    [19, 41, 101],
    [19, 41, 103],
    [19, 41, 107],
    [19, 41, 109],
    [19, 41, 113],
    [19, 41, 127],
    [19, 41, 131],
    [19, 41, 137],
    [19, 41, 139],
    [19, 41, 149],
    [19, 41, 151],
    [19, 41, 157],
    [19, 43, 47],
    [19, 43, 53],
    [19, 43, 59],
    [19, 43, 61],
    [19, 43, 67],
    [19, 43, 71],
    [19, 43, 73],
    [19, 43, 79],
    [19, 43, 83],
    [19, 43, 89],
    [19, 43, 97],
    [19, 43, 101],
    [19, 43, 103],
    [19, 43, 107],
    [19, 43, 109],
    [19, 43, 113],
    [19, 43, 127],
    [19, 43, 131],
    [19, 43, 137],
    [19, 43, 139],
    [19, 43, 149],
    [19, 43, 151],
    [19, 47, 53],
    [19, 47, 59],
    [19, 47, 61],
    [19, 47, 67],
    [19, 47, 71],
    [19, 47, 73],
    [19, 47, 79],
    [19, 47, 83],
    [19, 47, 89],
    [19, 47, 97]]

theorem k4PrefixGroup0067_support_covered :
    k4PrefixGroup0067.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0067MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0067_passes :
    k4PrefixGroup0067.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0067NormalLookup
        k4PrefixGroup0067TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0067_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0067NormalLookup
        k4PrefixGroup0067TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0067NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0067TwistLookup p =
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

theorem k4PrefixGroup0067_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0067NormalLookup
        k4PrefixGroup0067TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0067NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0067TwistLookup p =
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

theorem k4PrefixGroup0067_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0067NormalLookup
        k4PrefixGroup0067TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0067NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0067TwistLookup p =
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

theorem k4PrefixGroup0067_mask_primes_pass :
    k4PrefixGroup0067MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0067NormalLookup
        k4PrefixGroup0067TwistLookup) = true := by
  simp only [k4PrefixGroup0067MaskPrimes, List.all_append]
  rw [k4PrefixGroup0067_mask_group0000_passes]
  rw [k4PrefixGroup0067_mask_group0001_passes]
  rw [k4PrefixGroup0067_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0067_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0067) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0067NormalLookup,
    k4PrefixGroup0067TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0067_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0067_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0067MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0067_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0067_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
