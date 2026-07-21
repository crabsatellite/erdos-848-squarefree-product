import Erdos848.GeneratedTailPrimePrattCoverage.Certificate
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0000
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0001
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0002
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0003
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0004
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0005
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0006
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0007
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0008
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0009
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0010
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0011
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0012
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0013
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0014
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0015
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0016
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0017
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0018
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0019
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0020
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0021
import Erdos848.GeneratedTenMillionKernelPrimePrattCoverage.Block0022

namespace Erdos848.GeneratedTenMillionKernelPrimePrattCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem range_new : table.FastRangeValid 18311 27815 := by
  have combined_0 := range_0000
  have combined_1 := combined_0.append range_0001
  have combined_2 := combined_1.append range_0002
  have combined_3 := combined_2.append range_0003
  have combined_4 := combined_3.append range_0004
  have combined_5 := combined_4.append range_0005
  have combined_6 := combined_5.append range_0006
  have combined_7 := combined_6.append range_0007
  have combined_8 := combined_7.append range_0008
  have combined_9 := combined_8.append range_0009
  have combined_10 := combined_9.append range_0010
  have combined_11 := combined_10.append range_0011
  have combined_12 := combined_11.append range_0012
  have combined_13 := combined_12.append range_0013
  have combined_14 := combined_13.append range_0014
  have combined_15 := combined_14.append range_0015
  have combined_16 := combined_15.append range_0016
  have combined_17 := combined_16.append range_0017
  have combined_18 := combined_17.append range_0018
  have combined_19 := combined_18.append range_0019
  have combined_20 := combined_19.append range_0020
  have combined_21 := combined_20.append range_0021
  have combined_22 := combined_21.append range_0022
  exact combined_22

theorem table_valid : table.Valid :=
  Erdos848.PrattTableData.valid_extend_fast
    Erdos848.GeneratedTailPrimePrattCoverage.table_valid range_new

theorem target_prime : Nat.Prime 322573 :=
  table.primeAt table_valid (index := 27814) (by decide)

#print axioms target_prime

end Erdos848.GeneratedTenMillionKernelPrimePrattCoverage
