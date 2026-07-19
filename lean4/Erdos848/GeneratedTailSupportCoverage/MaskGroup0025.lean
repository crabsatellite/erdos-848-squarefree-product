import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0025 : List ℕ :=
  [1237, 1249, 1259, 1277, 1279, 1283, 1289, 1291]

def qrMaskCertificate_1237 :
    Erdos848.SquareWordMaskCertificate 2401 1237 (qrMaskWords 1237) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1249 :
    Erdos848.SquareWordMaskCertificate 2401 1249 (qrMaskWords 1249) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1259 :
    Erdos848.SquareWordMaskCertificate 2401 1259 (qrMaskWords 1259) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1277 :
    Erdos848.SquareWordMaskCertificate 2401 1277 (qrMaskWords 1277) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1279 :
    Erdos848.SquareWordMaskCertificate 2401 1279 (qrMaskWords 1279) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1283 :
    Erdos848.SquareWordMaskCertificate 2401 1283 (qrMaskWords 1283) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1289 :
    Erdos848.SquareWordMaskCertificate 2401 1289 (qrMaskWords 1289) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1291 :
    Erdos848.SquareWordMaskCertificate 2401 1291 (qrMaskWords 1291) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0025
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0025)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0025, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1237.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1249.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1259.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1277.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1279.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1283.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1289.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1291.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
