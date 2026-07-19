import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0024 : List ℕ :=
  [1187, 1193, 1201, 1213, 1217, 1223, 1229, 1231]

def qrMaskCertificate_1187 :
    Erdos848.SquareWordMaskCertificate 2401 1187 (qrMaskWords 1187) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1193 :
    Erdos848.SquareWordMaskCertificate 2401 1193 (qrMaskWords 1193) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1201 :
    Erdos848.SquareWordMaskCertificate 2401 1201 (qrMaskWords 1201) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1213 :
    Erdos848.SquareWordMaskCertificate 2401 1213 (qrMaskWords 1213) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1217 :
    Erdos848.SquareWordMaskCertificate 2401 1217 (qrMaskWords 1217) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1223 :
    Erdos848.SquareWordMaskCertificate 2401 1223 (qrMaskWords 1223) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1229 :
    Erdos848.SquareWordMaskCertificate 2401 1229 (qrMaskWords 1229) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1231 :
    Erdos848.SquareWordMaskCertificate 2401 1231 (qrMaskWords 1231) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0024
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0024)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0024, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1187.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1193.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1201.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1213.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1217.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1223.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1229.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1231.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
