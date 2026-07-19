import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0005 : List ℕ :=
  [191, 193, 197, 199, 211, 223, 227, 229]

def qrMaskCertificate_191 :
    Erdos848.SquareWordMaskCertificate 2401 191 (qrMaskWords 191) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_193 :
    Erdos848.SquareWordMaskCertificate 2401 193 (qrMaskWords 193) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_197 :
    Erdos848.SquareWordMaskCertificate 2401 197 (qrMaskWords 197) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_199 :
    Erdos848.SquareWordMaskCertificate 2401 199 (qrMaskWords 199) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_211 :
    Erdos848.SquareWordMaskCertificate 2401 211 (qrMaskWords 211) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_223 :
    Erdos848.SquareWordMaskCertificate 2401 223 (qrMaskWords 223) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_227 :
    Erdos848.SquareWordMaskCertificate 2401 227 (qrMaskWords 227) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_229 :
    Erdos848.SquareWordMaskCertificate 2401 229 (qrMaskWords 229) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0005
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0005)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0005, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_191.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_193.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_197.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_199.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_211.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_223.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_227.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_229.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
