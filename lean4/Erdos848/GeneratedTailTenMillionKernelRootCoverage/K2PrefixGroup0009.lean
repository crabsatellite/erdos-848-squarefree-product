import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0009NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 4349 then rootNormalQrMaskWords0036 p else
  if p ≤ 4463 then rootNormalQrMaskWords0037 p else
  []

def k2PrefixGroup0009TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 4349 then rootTwistQrMaskWords0036 p else
  if p ≤ 4463 then rootTwistQrMaskWords0037 p else
  []

def k2PrefixGroup0009MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0036 ++
  rootMaskSemanticGroup0037

def k2PrefixGroup0009 : List (List ℕ) :=
  [[4229],
    [4231],
    [4241],
    [4243],
    [4253],
    [4259],
    [4261],
    [4271],
    [4273],
    [4283],
    [4289],
    [4297],
    [4327],
    [4337],
    [4339],
    [4349],
    [4357],
    [4363],
    [4373],
    [4391],
    [4397],
    [4409],
    [4421],
    [4423],
    [4441],
    [4447],
    [4451],
    [4457],
    [4463]]

theorem k2PrefixGroup0009_support_covered :
    k2PrefixGroup0009.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k2PrefixGroup0009MaskPrimes))) = true := by
  rfl

theorem k2PrefixGroup0009_passes :
    k2PrefixGroup0009.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k2PrefixGroup0009NormalLookup
        k2PrefixGroup0009TwistLookup rootBaseWords 2) = true := by
  rfl

theorem k2PrefixGroup0009_mask_group0036_passes :
    rootMaskSemanticGroup0036.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0009NormalLookup
        k2PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0036_passes) p hp
  have hnormal : k2PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0036 p := by
    simp only [rootMaskSemanticGroup0036,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0036 p := by
    simp only [rootMaskSemanticGroup0036,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k2PrefixGroup0009_mask_group0037_passes :
    rootMaskSemanticGroup0037.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0009NormalLookup
        k2PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0037_passes) p hp
  have hnormal : k2PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0037 p := by
    simp only [rootMaskSemanticGroup0037,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0037 p := by
    simp only [rootMaskSemanticGroup0037,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k2PrefixGroup0009_mask_primes_pass :
    k2PrefixGroup0009MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0009NormalLookup
        k2PrefixGroup0009TwistLookup) = true := by
  simp only [k2PrefixGroup0009MaskPrimes, List.all_append]
  rw [k2PrefixGroup0009_mask_group0036_passes]
  rw [k2PrefixGroup0009_mask_group0037_passes]
  rfl

theorem k2PrefixGroup0009_certified
    {support : List ℕ} (hsupport : support ∈ k2PrefixGroup0009) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  refine ⟨k2PrefixGroup0009NormalLookup,
    k2PrefixGroup0009TwistLookup, ?_,
    (List.all_eq_true.mp
      k2PrefixGroup0009_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k2PrefixGroup0009_support_covered) support hsupport
  have hmem : p ∈
      k2PrefixGroup0009MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k2PrefixGroup0009_mask_primes_pass) p hmem

#print axioms k2PrefixGroup0009_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
