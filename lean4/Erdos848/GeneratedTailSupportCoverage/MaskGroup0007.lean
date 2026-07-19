import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0007 : List ℕ :=
  [277, 281, 283, 293, 307, 311, 313, 317]

def qrMaskCertificate_277 :
    Erdos848.SquareWordMaskCertificate 2401 277 (qrMaskWords 277) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_281 :
    Erdos848.SquareWordMaskCertificate 2401 281 (qrMaskWords 281) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_283 :
    Erdos848.SquareWordMaskCertificate 2401 283 (qrMaskWords 283) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_293 :
    Erdos848.SquareWordMaskCertificate 2401 293 (qrMaskWords 293) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_307 :
    Erdos848.SquareWordMaskCertificate 2401 307 (qrMaskWords 307) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_311 :
    Erdos848.SquareWordMaskCertificate 2401 311 (qrMaskWords 311) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_313 :
    Erdos848.SquareWordMaskCertificate 2401 313 (qrMaskWords 313) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_317 :
    Erdos848.SquareWordMaskCertificate 2401 317 (qrMaskWords 317) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0007
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0007)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0007, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_277.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_281.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_283.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_293.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_307.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_311.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_313.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_317.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
