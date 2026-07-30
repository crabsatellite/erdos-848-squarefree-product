import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0003
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0011
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0012

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3QrMaskWords (p : ℕ) : List ℕ :=
  if p ≤ 61 then block3QrMaskWordsGroup0000 p
  else
    if p ≤ 139 then block3QrMaskWordsGroup0001 p
    else
      if p ≤ 229 then block3QrMaskWordsGroup0002 p
      else
        if p ≤ 317 then block3QrMaskWordsGroup0003 p
        else
          if p ≤ 421 then block3QrMaskWordsGroup0004 p
          else
            if p ≤ 521 then block3QrMaskWordsGroup0005 p
            else
              if p ≤ 619 then block3QrMaskWordsGroup0006 p
              else
                if p ≤ 733 then block3QrMaskWordsGroup0007 p
                else
                  if p ≤ 839 then block3QrMaskWordsGroup0008 p
                  else
                    if p ≤ 953 then block3QrMaskWordsGroup0009 p
                    else
                      if p ≤ 1061 then block3QrMaskWordsGroup0010 p
                      else
                        if p ≤ 1181 then block3QrMaskWordsGroup0011 p
                        else
                          if p ≤ 1237 then block3QrMaskWordsGroup0012 p
                          else
                            block3BaseWords

def block3Target : ℕ → ℕ
  | 0 => 6250
  | 1 => 6250
  | 2 => 6250
  | 3 => 4256
  | 4 => 2124
  | 5 => 1056
  | 6 => 522
  | 7 => 256
  | 8 => 122
  | _ => 0

end Erdos848.GeneratedHybridPaperRootCoverage
