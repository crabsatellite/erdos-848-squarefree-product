import Erdos848.GeneratedTailDiagonalCoverage.Data

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def coverageTree0612 : PrimeCoverageTree :=
  (.node 128 (.node 64 (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 37 270253) (.leaf 5 1999873)) (.node 2 (.leaf 3 3333123) (.leaf 947 10559))) (.node 4 (.node 2 (.leaf 19 526283) (.leaf 3 3333127)) (.node 2 (.leaf 5 1999877) (.leaf 653 15313)))) (.node 8 (.node 4 (.node 2 (.leaf 3 3333131) (.leaf 0 332161)) (.node 2 (.leaf 0 332162) (.leaf 3 3333135))) (.node 4 (.node 2 (.leaf 7 1428487) (.leaf 1231 8123)) (.node 2 (.leaf 3 3333139) (.leaf 1423 7027))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 5 1999885) (.leaf 3 3333143)) (.node 2 (.leaf 0 332163) (.leaf 7 1428491))) (.node 4 (.node 2 (.leaf 3 3333147) (.leaf 5 1999889)) (.node 2 (.leaf 41 243889) (.leaf 3 3333151)))) (.node 8 (.node 4 (.node 2 (.leaf 13 769189) (.leaf 29 344809)) (.node 2 (.leaf 3 3333155) (.leaf 0 332164))) (.node 4 (.node 2 (.leaf 11 909043) (.leaf 3 3333159)) (.node 2 (.leaf 0 332165) (.leaf 5 1999897)))))) (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 3 3333163) (.leaf 7 1428499)) (.node 2 (.leaf 59 169483) (.leaf 3 3333167))) (.node 4 (.node 2 (.leaf 5 1999901) (.leaf 13 769193)) (.node 2 (.leaf 3 3333171) (.leaf 11 909047)))) (.node 8 (.node 4 (.node 2 (.leaf 7 1428503) (.leaf 3 3333175)) (.node 2 (.leaf 19 526291) (.leaf 0 332166))) (.node 4 (.node 2 (.leaf 3 3333179) (.leaf 2683 3727)) (.node 2 (.leaf 5 1999909) (.leaf 3 3333183))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 17 588209) (.leaf 2617 3821)) (.node 2 (.leaf 3 3333187) (.leaf 5 1999913))) (.node 4 (.node 2 (.leaf 71 140839) (.leaf 3 3333191)) (.node 2 (.leaf 7 1428511) (.leaf 863 11587)))) (.node 8 (.node 4 (.node 2 (.leaf 3 3333195) (.leaf 251 39839)) (.node 2 (.leaf 0 332167) (.leaf 3 3333199))) (.node 4 (.node 2 (.leaf 0 332168) (.leaf 5 1999921)) (.node 2 (.leaf 3 3333203) (.leaf 13 769201))))))) (.node 64 (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 457 21881) (.leaf 3 3333207)) (.node 2 (.leaf 5 1999925) (.leaf 271 36899))) (.node 4 (.node 2 (.leaf 3 3333211) (.leaf 0 332169)) (.node 2 (.leaf 23 434767) (.leaf 3 3333215)))) (.node 8 (.node 4 (.node 2 (.leaf 11 909059) (.leaf 0 332170)) (.node 2 (.leaf 3 3333219) (.leaf 7 1428523))) (.node 4 (.node 2 (.leaf 5 1999933) (.leaf 3 3333223)) (.node 2 (.leaf 47 212759) (.leaf 0 332171))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 3 3333227) (.leaf 5 1999937)) (.node 2 (.leaf 7 1428527) (.leaf 3 3333231))) (.node 4 (.node 2 (.leaf 2311 4327) (.leaf 31 322571)) (.node 2 (.leaf 3 3333235) (.leaf 113 88493)))) (.node 8 (.node 4 (.node 2 (.leaf 0 332172) (.leaf 3 3333239)) (.node 2 (.leaf 2423 4127) (.leaf 5 1999945))) (.node 4 (.node 2 (.leaf 3 3333243) (.leaf 23 434771)) (.node 2 (.leaf 11 909067) (.leaf 3 3333247)))))) (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 5 1999949) (.leaf 0 332173)) (.node 2 (.leaf 3 3333251) (.leaf 17 588221))) (.node 4 (.node 2 (.leaf 0 332174) (.leaf 3 3333255)) (.node 2 (.leaf 13 769213) (.leaf 7 1428539)))) (.node 8 (.node 4 (.node 2 (.leaf 3 3333259) (.leaf 11 909071)) (.node 2 (.leaf 5 1999957) (.leaf 3 3333263))) (.node 4 (.node 2 (.leaf 167 59879) (.leaf 293 34129)) (.node 2 (.leaf 3 3333267) (.leaf 5 1999961))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 29 344821) (.leaf 3 3333271)) (.node 2 (.leaf 67 149251) (.leaf 13 769217))) (.node 4 (.node 2 (.leaf 3 3333275) (.leaf 7 1428547)) (.node 2 (.leaf 19 526307) (.leaf 3 3333279)))) (.node 8 (.node 4 (.node 2 (.leaf 331 30211) (.leaf 5 1999969)) (.node 2 (.leaf 3 3333283) (.leaf 71 140843))) (.node 4 (.node 2 (.leaf 7 1428551) (.leaf 3 3333287)) (.node 2 (.leaf 5 1999973) (.leaf 11 909079))))))))

theorem codeBlock0612Check :
    coverageTree0612.check primeRootCoverage 2499840 = true := by decide

theorem codeBlock0612 :
    PrimeCoverageRange primeRootCoverage 2499840 2499968 := by
  simpa [coverageTree0612, PrimeCoverageTree.size] using
    PrimeCoverageTree.range codeBlock0612Check

end Erdos848.GeneratedTailDiagonalCoverage
