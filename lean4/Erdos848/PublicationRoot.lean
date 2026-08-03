import Erdos848.PublicationContract
import Erdos848.PrefixClose
import Erdos848.PaperCertificateProvider
import Erdos848.SharpnessCore

/-!
# Minimal publication root

The release package starts from this module.  Its range split is exactly the
one in the audited paper.  Heavy numerical certificates enter only through
`PaperCertificateProvider.NumericalCertificates`; the integration root
introduces no theorem-valued assumptions.
-/

namespace Erdos848

/-- The paper's four tail intervals assembled at the five-million
cut from numerical certificates only. -/
theorem erdos848_paper_tail_close
    (certificates :
      PaperCertificateProvider.NumericalCertificates) :
    Erdos848FiveMillionTailClose :=
  (PaperCertificateProvider.tailCertificate certificates).tailClose

/-- Stable kernel endpoint parameterized only by numerical certificates.
The exact five-million prefix is a single certificate, so the final assembly
has only two mathematical inputs: that prefix and the assembled tail.
`PaperGeneratedCertificateProvider.all_N` is the unconditional publication
specialization built from the checked generated provider. -/
theorem erdos848_all_N_of_certificates
    (certificates :
      PaperCertificateProvider.NumericalCertificates) :
    ∀ N, OriginalProblem848Statement N :=
  erdos848_full_of_five_million_tail
    (erdos848_paper_tail_close certificates)

end Erdos848
