import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0058NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k3PrefixGroup0058TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k3PrefixGroup0058MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k3PrefixGroup0058 : List (List ℕ) :=
  [[191, 283],
    [191, 293],
    [191, 307],
    [191, 311],
    [191, 313],
    [193, 197],
    [193, 199],
    [193, 211],
    [193, 223],
    [193, 227],
    [193, 229],
    [193, 233],
    [193, 239],
    [193, 241],
    [193, 251],
    [193, 257],
    [193, 263],
    [193, 269],
    [193, 271],
    [193, 277],
    [193, 281],
    [193, 283],
    [193, 293],
    [193, 307],
    [193, 311],
    [193, 313],
    [197, 199],
    [197, 211],
    [197, 223],
    [197, 227],
    [197, 229],
    [197, 233],
    [197, 239],
    [197, 241],
    [197, 251],
    [197, 257],
    [197, 263],
    [197, 269],
    [197, 271],
    [197, 277],
    [197, 281],
    [197, 283],
    [197, 293],
    [197, 307],
    [197, 311],
    [197, 313],
    [199, 211],
    [199, 223],
    [199, 227],
    [199, 229],
    [199, 233],
    [199, 239],
    [199, 241],
    [199, 251],
    [199, 257],
    [199, 263],
    [199, 269],
    [199, 271],
    [199, 277],
    [199, 281],
    [199, 283],
    [199, 293],
    [199, 307],
    [199, 311]]

theorem k3PrefixGroup0058_support_covered :
    k3PrefixGroup0058.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0058MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0058_passes :
    k3PrefixGroup0058.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k3PrefixGroup0058NormalLookup
        k3PrefixGroup0058TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0058_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0058NormalLookup
        k3PrefixGroup0058TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0058NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0058TwistLookup p =
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

theorem k3PrefixGroup0058_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0058NormalLookup
        k3PrefixGroup0058TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0058NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0058TwistLookup p =
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

theorem k3PrefixGroup0058_mask_primes_pass :
    k3PrefixGroup0058MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0058NormalLookup
        k3PrefixGroup0058TwistLookup) = true := by
  simp only [k3PrefixGroup0058MaskPrimes, List.all_append]
  rw [k3PrefixGroup0058_mask_group0002_passes]
  rw [k3PrefixGroup0058_mask_group0003_passes]
  rfl

theorem k3PrefixGroup0058_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0058) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0058NormalLookup,
    k3PrefixGroup0058TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0058_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0058_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0058MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0058_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0058_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
