import Erdos848.MainTheoremCore
import Erdos848.TailR263Exhaustion
import Erdos848.TailTenMillionKernelExhaustion
import Erdos848.TailTwentyMillionKernelClose
import Erdos848.TailFortyMillionKernelClose
import Erdos848.TailHybridKernelClose
import Erdos848.TailHighIntegratedClose

namespace Erdos848.PaperCertificateProvider

/-!
# Numerical paper-certificate provider

Every mathematical interval theorem is proved outside this structure.  The
provider contains only the finite certificate objects consumed by those
theorems: the sharp `5M` finite leaves, the `200M`--`2B` twist/root tables,
and the six necessary `2B`--`500B` QR rows.  Replacing generated data
cannot change the mathematical statement or inject an interval theorem.
-/

structure NumericalCertificates where
  fiveSharp : E1Finite23SharpCertificate
  middleNormal : HybridPaperRootCertificateProvider
  middleTwist : HybridPaperTwistCertificateProvider
  middleRoot : HybridPaperRootEnvelopeCertificate
  highTail : HighTailCloseCertificate

theorem fiveToTenMillion
    (certificates : NumericalCertificates) :
    Erdos848PaperFiveToTenMillionClose := by
  letI : E1Finite23SharpCertificate := certificates.fiveSharp
  exact erdos848FiveToTenMillionClose

theorem tenToTwentyMillion : Erdos848PaperTenToTwentyMillionClose :=
  erdos848TenToTwentyMillionClose

theorem twentyToFortyMillion : Erdos848PaperTwentyToFortyMillionClose :=
  erdos848TwentyMillionClose_kernel

theorem twoHundredToTwoBillion
    (certificates : NumericalCertificates) :
    Erdos848PaperTwoHundredMillionToTwoBillionClose :=
  erdos848PaperTwoHundredMillionToTwoBillionClose_of_certificates
    certificates.middleNormal
    certificates.middleTwist certificates.middleRoot

theorem twoBillionTail
    (certificates : NumericalCertificates) :
    Erdos848PaperTwoBillionTailClose := by
  intro N hLower
  exact certificates.highTail.close hLower

theorem fortyMillionTail
    (certificates : NumericalCertificates) :
    Erdos848PaperFortyMillionTailClose :=
  erdos848PaperFortyMillionTail_of_high_range_close
    erdos848FortyMillionClose_kernel
    (twoHundredToTwoBillion certificates)
    (twoBillionTail certificates)

def tailCertificate
    (certificates : NumericalCertificates) :
    Erdos848PaperTailCertificate where
  fiveToTen := fiveToTenMillion certificates
  tenToTwenty := tenToTwentyMillion
  twentyToForty := twentyToFortyMillion
  fortyMillionTail := fortyMillionTail certificates

def status : String :=
  "all-n-generated-certificates-trust-zero-kernel-checked"

#print axioms twoHundredToTwoBillion
#print axioms twoBillionTail
#print axioms fortyMillionTail

end Erdos848.PaperCertificateProvider
