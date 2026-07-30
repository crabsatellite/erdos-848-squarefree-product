import Erdos848.TailHybridDiagonalBoundsTruncated
import Erdos848.TailHybridDiagonalBoundsInterval
import Erdos848.TailHybridDiagonalBoundsSmall
import Erdos848.TailHybridDiagonalBoundsFinal

namespace Erdos848

/-!
# Cardinal bound for the hybrid diagonal certificate

Every cutoff-small obstruction is split at prime `1000`. The lower part is
paid by the periodic CRT sum; the upper part is supplied by the sparse marker.

The proof is partitioned by semantic theorem boundary so every successful
kernel check is independently cached and recoverable.
-/

#print axioms truncatedPrimeSquareBadXValues_subset_small_union_interval
#print axioms intervalPrimeSquareAtomUnion_card_le
#print axioms hybridTailDiagonalSelection_card_le

end Erdos848
