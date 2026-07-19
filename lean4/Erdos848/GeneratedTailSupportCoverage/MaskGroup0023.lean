import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0023 : List ℕ :=
  [1117, 1123, 1129, 1151, 1153, 1163, 1171, 1181]

def qrMaskCertificate_1117 :
    Erdos848.SquareWordMaskCertificate 2401 1117 (qrMaskWords 1117) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1123 :
    Erdos848.SquareWordMaskCertificate 2401 1123 (qrMaskWords 1123) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1129 :
    Erdos848.SquareWordMaskCertificate 2401 1129 (qrMaskWords 1129) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1151 :
    Erdos848.SquareWordMaskCertificate 2401 1151 (qrMaskWords 1151) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1153 :
    Erdos848.SquareWordMaskCertificate 2401 1153 (qrMaskWords 1153) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1163 :
    Erdos848.SquareWordMaskCertificate 2401 1163 (qrMaskWords 1163) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1171 :
    Erdos848.SquareWordMaskCertificate 2401 1171 (qrMaskWords 1171) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1181 :
    Erdos848.SquareWordMaskCertificate 2401 1181 (qrMaskWords 1181) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0023
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0023)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0023, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1117.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1123.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1129.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1151.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1153.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1163.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1171.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1181.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
