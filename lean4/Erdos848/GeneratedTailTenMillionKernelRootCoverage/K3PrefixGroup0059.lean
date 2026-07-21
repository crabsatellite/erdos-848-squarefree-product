import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0059NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k3PrefixGroup0059TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k3PrefixGroup0059MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k3PrefixGroup0059 : List (List ℕ) :=
  [[199, 313],
    [211, 223],
    [211, 227],
    [211, 229],
    [211, 233],
    [211, 239],
    [211, 241],
    [211, 251],
    [211, 257],
    [211, 263],
    [211, 269],
    [211, 271],
    [211, 277],
    [211, 281],
    [211, 283],
    [211, 293],
    [223, 227],
    [223, 229],
    [223, 233],
    [223, 239],
    [223, 241],
    [223, 251],
    [223, 257],
    [223, 263],
    [223, 269],
    [223, 271],
    [223, 277],
    [223, 281],
    [223, 283],
    [227, 229],
    [227, 233],
    [227, 239],
    [227, 241],
    [227, 251],
    [227, 257],
    [227, 263],
    [227, 269],
    [227, 271],
    [227, 277],
    [227, 281],
    [227, 283],
    [229, 233],
    [229, 239],
    [229, 241],
    [229, 251],
    [229, 257],
    [229, 263],
    [229, 269],
    [229, 271],
    [229, 277],
    [229, 281],
    [229, 283],
    [233, 239],
    [233, 241],
    [233, 251],
    [233, 257],
    [233, 263],
    [233, 269],
    [233, 271],
    [233, 277],
    [233, 281],
    [233, 283],
    [239, 241],
    [239, 251]]

theorem k3PrefixGroup0059_support_covered :
    k3PrefixGroup0059.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0059MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0059_passes :
    k3PrefixGroup0059.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k3PrefixGroup0059NormalLookup
        k3PrefixGroup0059TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0059_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0059NormalLookup
        k3PrefixGroup0059TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0059NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0059TwistLookup p =
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

theorem k3PrefixGroup0059_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0059NormalLookup
        k3PrefixGroup0059TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0059NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0059TwistLookup p =
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

theorem k3PrefixGroup0059_mask_primes_pass :
    k3PrefixGroup0059MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0059NormalLookup
        k3PrefixGroup0059TwistLookup) = true := by
  simp only [k3PrefixGroup0059MaskPrimes, List.all_append]
  rw [k3PrefixGroup0059_mask_group0002_passes]
  rw [k3PrefixGroup0059_mask_group0003_passes]
  rfl

theorem k3PrefixGroup0059_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0059) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0059NormalLookup,
    k3PrefixGroup0059TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0059_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0059_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0059MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0059_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0059_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
