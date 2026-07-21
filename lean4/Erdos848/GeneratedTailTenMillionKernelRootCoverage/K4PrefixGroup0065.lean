import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0065NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0065TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0065MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0065 : List (List ℕ) :=
  [[17, 83, 107],
    [17, 83, 109],
    [17, 89, 97],
    [17, 89, 101],
    [17, 89, 103],
    [17, 89, 107],
    [17, 89, 109],
    [17, 97, 101],
    [17, 97, 103],
    [17, 97, 107],
    [17, 101, 103],
    [19, 23, 29],
    [19, 23, 31],
    [19, 23, 37],
    [19, 23, 41],
    [19, 23, 43],
    [19, 23, 47],
    [19, 23, 53],
    [19, 23, 59],
    [19, 23, 61],
    [19, 23, 67],
    [19, 23, 71],
    [19, 23, 73],
    [19, 23, 79],
    [19, 23, 83],
    [19, 23, 89],
    [19, 23, 97],
    [19, 23, 101],
    [19, 23, 103],
    [19, 23, 107],
    [19, 23, 109],
    [19, 23, 113],
    [19, 23, 127],
    [19, 23, 131],
    [19, 23, 137],
    [19, 23, 139],
    [19, 23, 149],
    [19, 23, 151],
    [19, 23, 157],
    [19, 23, 163],
    [19, 23, 167],
    [19, 23, 173],
    [19, 23, 179],
    [19, 23, 181],
    [19, 23, 191],
    [19, 23, 193],
    [19, 23, 197],
    [19, 23, 199],
    [19, 29, 31],
    [19, 29, 37],
    [19, 29, 41],
    [19, 29, 43],
    [19, 29, 47],
    [19, 29, 53],
    [19, 29, 59],
    [19, 29, 61],
    [19, 29, 67],
    [19, 29, 71],
    [19, 29, 73],
    [19, 29, 79],
    [19, 29, 83],
    [19, 29, 89],
    [19, 29, 97],
    [19, 29, 101]]

theorem k4PrefixGroup0065_support_covered :
    k4PrefixGroup0065.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0065MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0065_passes :
    k4PrefixGroup0065.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0065NormalLookup
        k4PrefixGroup0065TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0065_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0065NormalLookup
        k4PrefixGroup0065TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0065NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0065TwistLookup p =
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

theorem k4PrefixGroup0065_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0065NormalLookup
        k4PrefixGroup0065TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0065NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0065TwistLookup p =
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

theorem k4PrefixGroup0065_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0065NormalLookup
        k4PrefixGroup0065TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0065NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0065TwistLookup p =
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

theorem k4PrefixGroup0065_mask_primes_pass :
    k4PrefixGroup0065MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0065NormalLookup
        k4PrefixGroup0065TwistLookup) = true := by
  simp only [k4PrefixGroup0065MaskPrimes, List.all_append]
  rw [k4PrefixGroup0065_mask_group0000_passes]
  rw [k4PrefixGroup0065_mask_group0001_passes]
  rw [k4PrefixGroup0065_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0065_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0065) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0065NormalLookup,
    k4PrefixGroup0065TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0065_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0065_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0065MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0065_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0065_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
