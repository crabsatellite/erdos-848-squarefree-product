import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0002
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0003
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0004
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0011
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0012

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000

def block3TwistQrMaskWords (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes then
    if p ≤ 61 then block3TwistQrMaskWordsGroup0000 p
      else if p ≤ 139 then block3TwistQrMaskWordsGroup0001 p
      else if p ≤ 229 then block3TwistQrMaskWordsGroup0002 p
      else if p ≤ 317 then block3TwistQrMaskWordsGroup0003 p
      else if p ≤ 421 then block3TwistQrMaskWordsGroup0004 p
      else if p ≤ 521 then block3TwistQrMaskWordsGroup0005 p
      else if p ≤ 619 then block3TwistQrMaskWordsGroup0006 p
      else if p ≤ 733 then block3TwistQrMaskWordsGroup0007 p
      else if p ≤ 839 then block3TwistQrMaskWordsGroup0008 p
      else if p ≤ 953 then block3TwistQrMaskWordsGroup0009 p
      else if p ≤ 1061 then block3TwistQrMaskWordsGroup0010 p
      else if p ≤ 1181 then block3TwistQrMaskWordsGroup0011 p
      else if p ≤ 1237 then block3TwistQrMaskWordsGroup0012 p
      else Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords
  else Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

end Erdos848.GeneratedHybridPaperRootTwistCoverage
