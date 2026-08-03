import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0060NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k3PrefixGroup0060TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k3PrefixGroup0060MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0003

def k3PrefixGroup0060 : List (List ℕ) :=
  [[239, 257],
    [239, 263],
    [239, 269],
    [239, 271],
    [239, 277],
    [239, 281],
    [239, 283],
    [241, 251],
    [241, 257],
    [241, 263],
    [241, 269],
    [241, 271],
    [241, 277],
    [241, 281],
    [241, 283],
    [251, 257],
    [251, 263],
    [251, 269],
    [251, 271],
    [251, 277],
    [251, 281],
    [257, 263],
    [257, 269],
    [257, 271],
    [263, 269],
    [263, 271]]

theorem k3PrefixGroup0060_support_covered :
    k3PrefixGroup0060.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0060MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0060_passes :
    k3PrefixGroup0060.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k3PrefixGroup0060NormalLookup
        k3PrefixGroup0060TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0060_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0060NormalLookup
        k3PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0060TwistLookup p =
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

theorem k3PrefixGroup0060_mask_primes_pass :
    k3PrefixGroup0060MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0060NormalLookup
        k3PrefixGroup0060TwistLookup) = true := by
  simpa only [k3PrefixGroup0060MaskPrimes] using k3PrefixGroup0060_mask_group0003_passes

theorem k3PrefixGroup0060_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0060) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0060NormalLookup,
    k3PrefixGroup0060TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0060_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0060_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0060MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0060_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0060_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
