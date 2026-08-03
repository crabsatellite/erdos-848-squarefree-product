import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0056NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0056TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0056MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0056 : List (List ℕ) :=
  [[13, 37, 173],
    [13, 37, 179],
    [13, 37, 181],
    [13, 37, 191],
    [13, 37, 193],
    [13, 37, 197],
    [13, 41, 43],
    [13, 41, 47],
    [13, 41, 53],
    [13, 41, 59],
    [13, 41, 61],
    [13, 41, 67],
    [13, 41, 71],
    [13, 41, 73],
    [13, 41, 79],
    [13, 41, 83],
    [13, 41, 89],
    [13, 41, 97],
    [13, 41, 101],
    [13, 41, 103],
    [13, 41, 107],
    [13, 41, 109],
    [13, 41, 113],
    [13, 41, 127],
    [13, 41, 131],
    [13, 41, 137],
    [13, 41, 139],
    [13, 41, 149],
    [13, 41, 151],
    [13, 41, 157],
    [13, 41, 163],
    [13, 41, 167],
    [13, 41, 173],
    [13, 41, 179],
    [13, 41, 181],
    [13, 41, 191],
    [13, 43, 47],
    [13, 43, 53],
    [13, 43, 59],
    [13, 43, 61],
    [13, 43, 67],
    [13, 43, 71],
    [13, 43, 73],
    [13, 43, 79],
    [13, 43, 83],
    [13, 43, 89],
    [13, 43, 97],
    [13, 43, 101],
    [13, 43, 103],
    [13, 43, 107],
    [13, 43, 109],
    [13, 43, 113],
    [13, 43, 127],
    [13, 43, 131],
    [13, 43, 137],
    [13, 43, 139],
    [13, 43, 149],
    [13, 43, 151],
    [13, 43, 157],
    [13, 43, 163],
    [13, 43, 167],
    [13, 43, 173],
    [13, 43, 179],
    [13, 43, 181]]

theorem k4PrefixGroup0056_support_covered :
    k4PrefixGroup0056.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0056MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0056_passes :
    k4PrefixGroup0056.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0056NormalLookup
        k4PrefixGroup0056TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0056_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0056NormalLookup
        k4PrefixGroup0056TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0056NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0056TwistLookup p =
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

theorem k4PrefixGroup0056_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0056NormalLookup
        k4PrefixGroup0056TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0056NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0056TwistLookup p =
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

theorem k4PrefixGroup0056_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0056NormalLookup
        k4PrefixGroup0056TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0056NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0056TwistLookup p =
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

theorem k4PrefixGroup0056_mask_primes_pass :
    k4PrefixGroup0056MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0056NormalLookup
        k4PrefixGroup0056TwistLookup) = true := by
  simp only [k4PrefixGroup0056MaskPrimes, List.all_append]
  rw [k4PrefixGroup0056_mask_group0000_passes]
  rw [k4PrefixGroup0056_mask_group0001_passes]
  rw [k4PrefixGroup0056_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0056_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0056) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0056NormalLookup,
    k4PrefixGroup0056TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0056_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0056_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0056MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0056_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0056_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
