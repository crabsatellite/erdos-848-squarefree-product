import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0006 : List ℕ :=
  [233, 239, 241, 251, 257, 263, 269, 271]

def qrMaskCertificate_233 :
    Erdos848.SquareWordMaskCertificate 2401 233 (qrMaskWords 233) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_239 :
    Erdos848.SquareWordMaskCertificate 2401 239 (qrMaskWords 239) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_241 :
    Erdos848.SquareWordMaskCertificate 2401 241 (qrMaskWords 241) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_251 :
    Erdos848.SquareWordMaskCertificate 2401 251 (qrMaskWords 251) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_257 :
    Erdos848.SquareWordMaskCertificate 2401 257 (qrMaskWords 257) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_263 :
    Erdos848.SquareWordMaskCertificate 2401 263 (qrMaskWords 263) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_269 :
    Erdos848.SquareWordMaskCertificate 2401 269 (qrMaskWords 269) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_271 :
    Erdos848.SquareWordMaskCertificate 2401 271 (qrMaskWords 271) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0006
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0006)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0006, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_233.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_239.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_241.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_251.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_257.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_263.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_269.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_271.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
