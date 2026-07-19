import Erdos848.GeneratedTailGlobalMixedSupportCoverage.Data
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0002
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0006
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0007
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0008
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0009
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0010
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0011
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0012
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0013
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0014
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0015
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0016
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0017
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0018
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0019
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0020
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0021
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0022
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0023
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0024
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0025

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000

def normalQrMaskWords (p : ℕ) : List ℕ :=
  if p ≤ 61 then normalQrMaskWords0000 p else
  if p ≤ 139 then normalQrMaskWords0001 p else
  if p ≤ 229 then normalQrMaskWords0002 p else
  if p ≤ 317 then normalQrMaskWords0003 p else
  if p ≤ 421 then normalQrMaskWords0004 p else
  if p ≤ 521 then normalQrMaskWords0005 p else
  if p ≤ 619 then normalQrMaskWords0006 p else
  if p ≤ 733 then normalQrMaskWords0007 p else
  if p ≤ 839 then normalQrMaskWords0008 p else
  if p ≤ 953 then normalQrMaskWords0009 p else
  if p ≤ 1061 then normalQrMaskWords0010 p else
  if p ≤ 1181 then normalQrMaskWords0011 p else
  if p ≤ 1291 then normalQrMaskWords0012 p else
  if p ≤ 1429 then normalQrMaskWords0013 p else
  if p ≤ 1531 then normalQrMaskWords0014 p else
  if p ≤ 1627 then normalQrMaskWords0015 p else
  if p ≤ 1759 then normalQrMaskWords0016 p else
  if p ≤ 1889 then normalQrMaskWords0017 p else
  if p ≤ 2017 then normalQrMaskWords0018 p else
  if p ≤ 2137 then normalQrMaskWords0019 p else
  if p ≤ 2273 then normalQrMaskWords0020 p else
  if p ≤ 2383 then normalQrMaskWords0021 p else
  if p ≤ 2531 then normalQrMaskWords0022 p else
  if p ≤ 2663 then normalQrMaskWords0023 p else
  if p ≤ 2753 then normalQrMaskWords0024 p else
  if p ≤ 2843 then normalQrMaskWords0025 p else
  []

def twistQrMaskWords (p : ℕ) : List ℕ :=
  if p ≤ 61 then twistQrMaskWords0000 p else
  if p ≤ 139 then twistQrMaskWords0001 p else
  if p ≤ 229 then twistQrMaskWords0002 p else
  if p ≤ 317 then twistQrMaskWords0003 p else
  if p ≤ 421 then twistQrMaskWords0004 p else
  if p ≤ 521 then twistQrMaskWords0005 p else
  if p ≤ 619 then twistQrMaskWords0006 p else
  if p ≤ 733 then twistQrMaskWords0007 p else
  if p ≤ 839 then twistQrMaskWords0008 p else
  if p ≤ 953 then twistQrMaskWords0009 p else
  if p ≤ 1061 then twistQrMaskWords0010 p else
  if p ≤ 1181 then twistQrMaskWords0011 p else
  if p ≤ 1291 then twistQrMaskWords0012 p else
  if p ≤ 1429 then twistQrMaskWords0013 p else
  if p ≤ 1531 then twistQrMaskWords0014 p else
  if p ≤ 1627 then twistQrMaskWords0015 p else
  if p ≤ 1759 then twistQrMaskWords0016 p else
  if p ≤ 1889 then twistQrMaskWords0017 p else
  if p ≤ 2017 then twistQrMaskWords0018 p else
  if p ≤ 2137 then twistQrMaskWords0019 p else
  if p ≤ 2273 then twistQrMaskWords0020 p else
  if p ≤ 2383 then twistQrMaskWords0021 p else
  if p ≤ 2531 then twistQrMaskWords0022 p else
  if p ≤ 2663 then twistQrMaskWords0023 p else
  if p ≤ 2753 then twistQrMaskWords0024 p else
  if p ≤ 2843 then twistQrMaskWords0025 p else
  []

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
