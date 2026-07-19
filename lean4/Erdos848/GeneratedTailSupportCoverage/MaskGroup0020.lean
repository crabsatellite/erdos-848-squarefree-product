import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0020 : List ℕ :=
  [967, 971, 977, 983, 991, 997, 1009, 1013]

def qrMaskCertificate_967 :
    Erdos848.SquareWordMaskCertificate 2401 967 (qrMaskWords 967) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_971 :
    Erdos848.SquareWordMaskCertificate 2401 971 (qrMaskWords 971) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_977 :
    Erdos848.SquareWordMaskCertificate 2401 977 (qrMaskWords 977) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_983 :
    Erdos848.SquareWordMaskCertificate 2401 983 (qrMaskWords 983) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_991 :
    Erdos848.SquareWordMaskCertificate 2401 991 (qrMaskWords 991) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_997 :
    Erdos848.SquareWordMaskCertificate 2401 997 (qrMaskWords 997) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1009 :
    Erdos848.SquareWordMaskCertificate 2401 1009 (qrMaskWords 1009) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1013 :
    Erdos848.SquareWordMaskCertificate 2401 1013 (qrMaskWords 1013) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0020
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0020)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0020, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_967.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_971.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_977.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_983.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_991.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_997.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1009.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1013.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
