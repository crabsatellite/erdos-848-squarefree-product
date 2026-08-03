import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0059NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0059TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0059MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0059 : List (List ℕ) :=
  [[13, 73, 137],
    [13, 73, 139],
    [13, 79, 83],
    [13, 79, 89],
    [13, 79, 97],
    [13, 79, 101],
    [13, 79, 103],
    [13, 79, 107],
    [13, 79, 109],
    [13, 79, 113],
    [13, 79, 127],
    [13, 79, 131],
    [13, 79, 137],
    [13, 83, 89],
    [13, 83, 97],
    [13, 83, 101],
    [13, 83, 103],
    [13, 83, 107],
    [13, 83, 109],
    [13, 83, 113],
    [13, 83, 127],
    [13, 83, 131],
    [13, 89, 97],
    [13, 89, 101],
    [13, 89, 103],
    [13, 89, 107],
    [13, 89, 109],
    [13, 89, 113],
    [13, 89, 127],
    [13, 97, 101],
    [13, 97, 103],
    [13, 97, 107],
    [13, 97, 109],
    [13, 97, 113],
    [13, 101, 103],
    [13, 101, 107],
    [13, 101, 109],
    [13, 101, 113],
    [13, 103, 107],
    [13, 103, 109],
    [13, 103, 113],
    [13, 107, 109],
    [13, 107, 113],
    [17, 19, 23],
    [17, 19, 29],
    [17, 19, 31],
    [17, 19, 37],
    [17, 19, 41],
    [17, 19, 43],
    [17, 19, 47],
    [17, 19, 53],
    [17, 19, 59],
    [17, 19, 61],
    [17, 19, 67],
    [17, 19, 71],
    [17, 19, 73],
    [17, 19, 79],
    [17, 19, 83],
    [17, 19, 89],
    [17, 19, 97],
    [17, 19, 101],
    [17, 19, 103],
    [17, 19, 107],
    [17, 19, 109]]

theorem k4PrefixGroup0059_support_covered :
    k4PrefixGroup0059.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0059MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0059_passes :
    k4PrefixGroup0059.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0059NormalLookup
        k4PrefixGroup0059TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0059_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0059NormalLookup
        k4PrefixGroup0059TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0059NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0059TwistLookup p =
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

theorem k4PrefixGroup0059_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0059NormalLookup
        k4PrefixGroup0059TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0059NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0059TwistLookup p =
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

theorem k4PrefixGroup0059_mask_primes_pass :
    k4PrefixGroup0059MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0059NormalLookup
        k4PrefixGroup0059TwistLookup) = true := by
  simp only [k4PrefixGroup0059MaskPrimes, List.all_append]
  rw [k4PrefixGroup0059_mask_group0000_passes]
  rw [k4PrefixGroup0059_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0059_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0059) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0059NormalLookup,
    k4PrefixGroup0059TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0059_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0059_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0059MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0059_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0059_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
