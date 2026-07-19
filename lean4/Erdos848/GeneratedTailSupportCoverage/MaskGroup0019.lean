import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0019 : List ℕ :=
  [907, 911, 919, 929, 937, 941, 947, 953]

def qrMaskCertificate_907 :
    Erdos848.SquareWordMaskCertificate 2401 907 (qrMaskWords 907) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_911 :
    Erdos848.SquareWordMaskCertificate 2401 911 (qrMaskWords 911) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_919 :
    Erdos848.SquareWordMaskCertificate 2401 919 (qrMaskWords 919) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_929 :
    Erdos848.SquareWordMaskCertificate 2401 929 (qrMaskWords 929) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_937 :
    Erdos848.SquareWordMaskCertificate 2401 937 (qrMaskWords 937) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_941 :
    Erdos848.SquareWordMaskCertificate 2401 941 (qrMaskWords 941) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_947 :
    Erdos848.SquareWordMaskCertificate 2401 947 (qrMaskWords 947) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_953 :
    Erdos848.SquareWordMaskCertificate 2401 953 (qrMaskWords 953) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0019
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0019)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0019, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_907.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_911.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_919.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_929.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_937.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_941.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_947.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_953.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
