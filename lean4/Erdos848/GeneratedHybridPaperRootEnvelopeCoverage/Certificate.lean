import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0000
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0001
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0002
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0003
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0004
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0005
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0006
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0007
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0008
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0009
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0010
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0011
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0012
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0013
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0014
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0015
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0016
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0017
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0018
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0019
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0020
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0021
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0022
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0023
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0024
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0025
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0026
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0027
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0028
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0029
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0030
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0031
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0032
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0033
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0034
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0035
import Erdos848.GeneratedHybridPaperRootEnvelopeCoverage.RowsGroup0036

namespace Erdos848.GeneratedHybridPaperRootEnvelopeCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def rootEnvelopeRows :
    List Erdos848.CertifiedHybridPaperRootEnvelopeRow :=
  rootEnvelopeRowsGroup0000 ++ (rootEnvelopeRowsGroup0001 ++ (rootEnvelopeRowsGroup0002 ++ (rootEnvelopeRowsGroup0003 ++ (rootEnvelopeRowsGroup0004 ++ (rootEnvelopeRowsGroup0005 ++ (rootEnvelopeRowsGroup0006 ++ (rootEnvelopeRowsGroup0007 ++ (rootEnvelopeRowsGroup0008 ++ (rootEnvelopeRowsGroup0009 ++ (rootEnvelopeRowsGroup0010 ++ (rootEnvelopeRowsGroup0011 ++ (rootEnvelopeRowsGroup0012 ++ (rootEnvelopeRowsGroup0013 ++ (rootEnvelopeRowsGroup0014 ++ (rootEnvelopeRowsGroup0015 ++ (rootEnvelopeRowsGroup0016 ++ (rootEnvelopeRowsGroup0017 ++ (rootEnvelopeRowsGroup0018 ++ (rootEnvelopeRowsGroup0019 ++ (rootEnvelopeRowsGroup0020 ++ (rootEnvelopeRowsGroup0021 ++ (rootEnvelopeRowsGroup0022 ++ (rootEnvelopeRowsGroup0023 ++ (rootEnvelopeRowsGroup0024 ++ (rootEnvelopeRowsGroup0025 ++ (rootEnvelopeRowsGroup0026 ++ (rootEnvelopeRowsGroup0027 ++ (rootEnvelopeRowsGroup0028 ++ (rootEnvelopeRowsGroup0029 ++ (rootEnvelopeRowsGroup0030 ++ (rootEnvelopeRowsGroup0031 ++ (rootEnvelopeRowsGroup0032 ++ (rootEnvelopeRowsGroup0033 ++ (rootEnvelopeRowsGroup0034 ++ (rootEnvelopeRowsGroup0035 ++ (rootEnvelopeRowsGroup0036))))))))))))))))))))))))))))))))))))

def certificate : Erdos848.HybridPaperRootEnvelopeCertificate where
  rows := rootEnvelopeRows
  covers := by decide

#print axioms certificate

end Erdos848.GeneratedHybridPaperRootEnvelopeCoverage
