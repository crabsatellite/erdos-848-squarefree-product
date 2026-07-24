import Erdos848.PublicationContract
import Erdos848.TailClose

/-!
# Minimal publication root

The release package starts from this module.  It deliberately imports the
paper/machine contract separately from the mathematical root so that changing
the paper version cannot be hidden inside a large generated certificate.
-/
