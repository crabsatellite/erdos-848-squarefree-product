import Erdos848.PublicationRoot
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpCertificate
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedCertificate
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedCertificate
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.Certificate
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalCertificate

namespace Erdos848.PaperGeneratedCertificateProvider

/-!
# Final generated-certificate assembly

Every field below is a finite certificate object.  There is no theorem-valued
placeholder and no remaining argument once the generated source modules have
passed ordinary kernel replay.
-/

def numericalCertificates :
    PaperCertificateProvider.NumericalCertificates where
  fiveSharp :=
    GeneratedTailR263EvenOneFinite23.sharpCertificate
  middleNormal :=
    GeneratedHybridPaperRootCoverage.unifiedCertificateProvider
  middleTwist :=
    GeneratedHybridPaperRootTwistCoverage.unifiedCertificateProvider
  middleRoot :=
    GeneratedHybridPaperRootEnvelopeCoverage.certificate
  highTail :=
    GeneratedHybridPaperRootCoverage.highQrFinalHighTailCertificate

theorem tailClose :
    Erdos848FiveMillionTailClose :=
  erdos848_paper_tail_close numericalCertificates

theorem all_N :
    ∀ N, OriginalProblem848Statement N :=
  erdos848_all_N_of_certificates numericalCertificates

#print axioms numericalCertificates
#print axioms tailClose
#print axioms all_N

end Erdos848.PaperGeneratedCertificateProvider
