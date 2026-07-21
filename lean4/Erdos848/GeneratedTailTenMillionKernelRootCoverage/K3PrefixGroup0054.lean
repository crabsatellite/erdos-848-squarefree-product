import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0004

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0054NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k3PrefixGroup0054TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k3PrefixGroup0054MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k3PrefixGroup0054 : List (List ℕ) :=
  [[149, 179],
    [149, 181],
    [149, 191],
    [149, 193],
    [149, 197],
    [149, 199],
    [149, 211],
    [149, 223],
    [149, 227],
    [149, 229],
    [149, 233],
    [149, 239],
    [149, 241],
    [149, 251],
    [149, 257],
    [149, 263],
    [149, 269],
    [149, 271],
    [149, 277],
    [149, 281],
    [149, 283],
    [149, 293],
    [149, 307],
    [149, 311],
    [149, 313],
    [149, 317],
    [149, 331],
    [149, 337],
    [149, 347],
    [149, 349],
    [149, 353],
    [149, 359],
    [151, 157],
    [151, 163],
    [151, 167],
    [151, 173],
    [151, 179],
    [151, 181],
    [151, 191],
    [151, 193],
    [151, 197],
    [151, 199],
    [151, 211],
    [151, 223],
    [151, 227],
    [151, 229],
    [151, 233],
    [151, 239],
    [151, 241],
    [151, 251],
    [151, 257],
    [151, 263],
    [151, 269],
    [151, 271],
    [151, 277],
    [151, 281],
    [151, 283],
    [151, 293],
    [151, 307],
    [151, 311],
    [151, 313],
    [151, 317],
    [151, 331],
    [151, 337]]

theorem k3PrefixGroup0054_support_covered :
    k3PrefixGroup0054.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0054MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0054_passes :
    k3PrefixGroup0054.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k3PrefixGroup0054NormalLookup
        k3PrefixGroup0054TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0054_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0054NormalLookup
        k3PrefixGroup0054TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0054NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0054TwistLookup p =
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

theorem k3PrefixGroup0054_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0054NormalLookup
        k3PrefixGroup0054TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0054NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0054TwistLookup p =
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

theorem k3PrefixGroup0054_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0054NormalLookup
        k3PrefixGroup0054TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0054NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0054TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0054_mask_primes_pass :
    k3PrefixGroup0054MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0054NormalLookup
        k3PrefixGroup0054TwistLookup) = true := by
  simp only [k3PrefixGroup0054MaskPrimes, List.all_append]
  rw [k3PrefixGroup0054_mask_group0002_passes]
  rw [k3PrefixGroup0054_mask_group0003_passes]
  rw [k3PrefixGroup0054_mask_group0004_passes]
  rfl

theorem k3PrefixGroup0054_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0054) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0054NormalLookup,
    k3PrefixGroup0054TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0054_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0054_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0054MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0054_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0054_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
