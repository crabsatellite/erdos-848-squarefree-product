import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0062NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0062TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0062MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0062 : List (List ℕ) :=
  [[17, 31, 181],
    [17, 31, 191],
    [17, 37, 41],
    [17, 37, 43],
    [17, 37, 47],
    [17, 37, 53],
    [17, 37, 59],
    [17, 37, 61],
    [17, 37, 67],
    [17, 37, 71],
    [17, 37, 73],
    [17, 37, 79],
    [17, 37, 83],
    [17, 37, 89],
    [17, 37, 97],
    [17, 37, 101],
    [17, 37, 103],
    [17, 37, 107],
    [17, 37, 109],
    [17, 37, 113],
    [17, 37, 127],
    [17, 37, 131],
    [17, 37, 137],
    [17, 37, 139],
    [17, 37, 149],
    [17, 37, 151],
    [17, 37, 157],
    [17, 37, 163],
    [17, 37, 167],
    [17, 37, 173],
    [17, 41, 43],
    [17, 41, 47],
    [17, 41, 53],
    [17, 41, 59],
    [17, 41, 61],
    [17, 41, 67],
    [17, 41, 71],
    [17, 41, 73],
    [17, 41, 79],
    [17, 41, 83],
    [17, 41, 89],
    [17, 41, 97],
    [17, 41, 101],
    [17, 41, 103],
    [17, 41, 107],
    [17, 41, 109],
    [17, 41, 113],
    [17, 41, 127],
    [17, 41, 131],
    [17, 41, 137],
    [17, 41, 139],
    [17, 41, 149],
    [17, 41, 151],
    [17, 41, 157],
    [17, 41, 163],
    [17, 43, 47],
    [17, 43, 53],
    [17, 43, 59],
    [17, 43, 61],
    [17, 43, 67],
    [17, 43, 71],
    [17, 43, 73],
    [17, 43, 79],
    [17, 43, 83]]

theorem k4PrefixGroup0062_support_covered :
    k4PrefixGroup0062.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0062MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0062_passes :
    k4PrefixGroup0062.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0062NormalLookup
        k4PrefixGroup0062TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0062_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0062NormalLookup
        k4PrefixGroup0062TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0062NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0062TwistLookup p =
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

theorem k4PrefixGroup0062_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0062NormalLookup
        k4PrefixGroup0062TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0062NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0062TwistLookup p =
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

theorem k4PrefixGroup0062_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0062NormalLookup
        k4PrefixGroup0062TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0062NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0062TwistLookup p =
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

theorem k4PrefixGroup0062_mask_primes_pass :
    k4PrefixGroup0062MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0062NormalLookup
        k4PrefixGroup0062TwistLookup) = true := by
  simp only [k4PrefixGroup0062MaskPrimes, List.all_append]
  rw [k4PrefixGroup0062_mask_group0000_passes]
  rw [k4PrefixGroup0062_mask_group0001_passes]
  rw [k4PrefixGroup0062_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0062_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0062) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0062NormalLookup,
    k4PrefixGroup0062TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0062_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0062_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0062MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0062_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0062_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
