import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0061NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0061TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0061MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0061 : List (List ℕ) :=
  [[17, 29, 37],
    [17, 29, 41],
    [17, 29, 43],
    [17, 29, 47],
    [17, 29, 53],
    [17, 29, 59],
    [17, 29, 61],
    [17, 29, 67],
    [17, 29, 71],
    [17, 29, 73],
    [17, 29, 79],
    [17, 29, 83],
    [17, 29, 89],
    [17, 29, 97],
    [17, 29, 101],
    [17, 29, 103],
    [17, 29, 107],
    [17, 29, 109],
    [17, 29, 113],
    [17, 29, 127],
    [17, 29, 131],
    [17, 29, 137],
    [17, 29, 139],
    [17, 29, 149],
    [17, 29, 151],
    [17, 29, 157],
    [17, 29, 163],
    [17, 29, 167],
    [17, 29, 173],
    [17, 29, 179],
    [17, 29, 181],
    [17, 29, 191],
    [17, 29, 193],
    [17, 29, 197],
    [17, 31, 37],
    [17, 31, 41],
    [17, 31, 43],
    [17, 31, 47],
    [17, 31, 53],
    [17, 31, 59],
    [17, 31, 61],
    [17, 31, 67],
    [17, 31, 71],
    [17, 31, 73],
    [17, 31, 79],
    [17, 31, 83],
    [17, 31, 89],
    [17, 31, 97],
    [17, 31, 101],
    [17, 31, 103],
    [17, 31, 107],
    [17, 31, 109],
    [17, 31, 113],
    [17, 31, 127],
    [17, 31, 131],
    [17, 31, 137],
    [17, 31, 139],
    [17, 31, 149],
    [17, 31, 151],
    [17, 31, 157],
    [17, 31, 163],
    [17, 31, 167],
    [17, 31, 173],
    [17, 31, 179]]

theorem k4PrefixGroup0061_support_covered :
    k4PrefixGroup0061.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0061MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0061_passes :
    k4PrefixGroup0061.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0061NormalLookup
        k4PrefixGroup0061TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0061_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0061NormalLookup
        k4PrefixGroup0061TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0061NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0061TwistLookup p =
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

theorem k4PrefixGroup0061_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0061NormalLookup
        k4PrefixGroup0061TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0061NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0061TwistLookup p =
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

theorem k4PrefixGroup0061_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0061NormalLookup
        k4PrefixGroup0061TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0061NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0061TwistLookup p =
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

theorem k4PrefixGroup0061_mask_primes_pass :
    k4PrefixGroup0061MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0061NormalLookup
        k4PrefixGroup0061TwistLookup) = true := by
  simp only [k4PrefixGroup0061MaskPrimes, List.all_append]
  rw [k4PrefixGroup0061_mask_group0000_passes]
  rw [k4PrefixGroup0061_mask_group0001_passes]
  rw [k4PrefixGroup0061_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0061_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0061) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0061NormalLookup,
    k4PrefixGroup0061TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0061_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0061_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0061MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0061_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0061_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
