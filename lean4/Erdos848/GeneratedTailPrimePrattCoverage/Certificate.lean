import Erdos848.GeneratedTailPrimePrattCoverage.ValidGroup0000
import Erdos848.GeneratedTailPrimePrattCoverage.ValidGroup0001
import Erdos848.GeneratedTailPrimePrattCoverage.ValidGroup0002
import Erdos848.GeneratedTailPrimePrattCoverage.ValidGroup0003
import Erdos848.GeneratedTailPrimePrattCoverage.ValidGroup0004
import Erdos848.GeneratedTailPrimePrattCoverage.ValidGroup0005
import Erdos848.GeneratedTailPrimePrattCoverage.ValidGroup0006
import Erdos848.GeneratedTailPrimePrattCoverage.ValidGroup0007
import Erdos848.GeneratedTailPrimePrattCoverage.ValidGroup0008

namespace Erdos848.GeneratedTailPrimePrattCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem range_all : table.RangeValid 1 18311 := by
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
  have combined_23 := combined_22.append range_0023
  have combined_24 := combined_23.append range_0024
  have combined_25 := combined_24.append range_0025
  have combined_26 := combined_25.append range_0026
  have combined_27 := combined_26.append range_0027
  have combined_28 := combined_27.append range_0028
  have combined_29 := combined_28.append range_0029
  have combined_30 := combined_29.append range_0030
  have combined_31 := combined_30.append range_0031
  have combined_32 := combined_31.append range_0032
  have combined_33 := combined_32.append range_0033
  have combined_34 := combined_33.append range_0034
  have combined_35 := combined_34.append range_0035
  exact combined_35

theorem table_valid : table.Valid :=
  Erdos848.PrattTableData.valid_of_range table (by decide) (by decide) range_all

theorem target_prime : Nat.Prime 204067 :=
  table.primeAt table_valid (index := 18310) (by decide)

#print axioms target_prime

end Erdos848.GeneratedTailPrimePrattCoverage
