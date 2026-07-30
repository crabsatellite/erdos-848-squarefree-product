import Erdos848.PublicationContract
import Erdos848.PrefixClose
import Erdos848.PaperCertificateProvider
import Erdos848.SharpnessCore

/-!
# Minimal publication root

The release package starts from this module.  Its range split is exactly the
one in the audited paper.  Heavy numerical certificates enter only through
`PaperCertificateProvider.NumericalCertificates`; there is no theorem-valued
placeholder in the integration root.
-/

namespace Erdos848

/-- The paper's four tail intervals assembled at the literal five-million
cut from numerical certificates only. -/
theorem erdos848_paper_tail_close
    (certificates :
      PaperCertificateProvider.NumericalCertificates) :
    Erdos848FiveMillionTailClose :=
  (PaperCertificateProvider.tailCertificate certificates).tailClose

/-- Stable kernel endpoint parameterized only by numerical certificates.
`PaperGeneratedCertificateProvider.all_N` is the unconditional publication
specialization built from the checked generated provider. -/
theorem erdos848_all_N_of_certificates
    (certificates :
      PaperCertificateProvider.NumericalCertificates) :
    ∀ N, OriginalProblem848Statement N :=
  erdos848_full_of_paper_four_range_close
    erdos848_prefix_close
    erdos848_first_low_close
    erdos848_second_low_close
    (PaperCertificateProvider.fiveToTenMillion certificates)
    PaperCertificateProvider.tenToTwentyMillion
    PaperCertificateProvider.twentyToFortyMillion
    (PaperCertificateProvider.fortyMillionTail certificates)

end Erdos848
