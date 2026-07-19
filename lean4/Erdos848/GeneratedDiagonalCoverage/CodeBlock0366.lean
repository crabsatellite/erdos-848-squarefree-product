import Erdos848.GeneratedDiagonalCoverage.Data

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def coverageTree0366 : PrimeCoverageTree :=
  (.node 128 (.node 64 (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 269 5573) (.leaf 7 214163)) (.node 2 (.leaf 3 499715) (.leaf 0 56995))) (.node 4 (.node 2 (.leaf 0 56996) (.leaf 3 499719)) (.node 2 (.leaf 0 56997) (.leaf 5 299833)))) (.node 8 (.node 4 (.node 2 (.leaf 3 499723) (.leaf 13 115321)) (.node 2 (.leaf 107 14011) (.leaf 3 499727))) (.node 4 (.node 2 (.leaf 5 299837) (.leaf 0 56998)) (.node 2 (.leaf 3 499731) (.leaf 7 214171))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 11 136291) (.leaf 3 499735)) (.node 2 (.leaf 23 65183) (.leaf 17 88189))) (.node 4 (.node 2 (.leaf 3 499739) (.leaf 0 56999)) (.node 2 (.leaf 5 299845) (.leaf 3 499743)))) (.node 8 (.node 4 (.node 2 (.leaf 19 78907) (.leaf 0 57000)) (.node 2 (.leaf 3 499747) (.leaf 5 299849))) (.node 4 (.node 2 (.leaf 59 25411) (.leaf 3 499751)) (.node 2 (.leaf 0 57001) (.leaf 241 6221)))))) (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 3 499755) (.leaf 563 2663)) (.node 2 (.leaf 0 57002) (.leaf 3 499759))) (.node 4 (.node 2 (.leaf 7 214183) (.leaf 5 299857)) (.node 2 (.leaf 3 499763) (.leaf 839 1787)))) (.node 8 (.node 4 (.node 2 (.leaf 599 2503) (.leaf 3 499767)) (.node 2 (.leaf 5 299861) (.leaf 7 214187))) (.node 4 (.node 2 (.leaf 3 499771) (.leaf 53 28289)) (.node 2 (.leaf 0 57003) (.leaf 3 499775))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 13 115333) (.leaf 11 136303)) (.node 2 (.leaf 3 499779) (.leaf 79 18979))) (.node 4 (.node 2 (.leaf 5 299869) (.leaf 3 499783)) (.node 2 (.leaf 0 57004) (.leaf 0 57005)))) (.node 8 (.node 4 (.node 2 (.leaf 3 499787) (.leaf 5 299873)) (.node 2 (.leaf 0 57006) (.leaf 3 499791))) (.node 4 (.node 2 (.leaf 11 136307) (.leaf 13 115337)) (.node 2 (.leaf 3 499795) (.leaf 0 57007))))))) (.node 64 (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 7 214199) (.leaf 3 499799)) (.node 2 (.leaf 277 5413) (.leaf 5 299881))) (.node 4 (.node 2 (.leaf 3 499803) (.leaf 0 57008)) (.node 2 (.leaf 17 88201) (.leaf 3 499807)))) (.node 8 (.node 4 (.node 2 (.leaf 5 299885) (.leaf 0 57009)) (.node 2 (.leaf 3 499811) (.leaf 163 9199))) (.node 4 (.node 2 (.leaf 47 31903) (.leaf 3 499815)) (.node 2 (.leaf 7 214207) (.leaf 43 34871))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 3 499819) (.leaf 19 78919)) (.node 2 (.leaf 5 299893) (.leaf 3 499823))) (.node 4 (.node 2 (.leaf 487 3079) (.leaf 7 214211)) (.node 2 (.leaf 3 499827) (.leaf 5 299897)))) (.node 8 (.node 4 (.node 2 (.leaf 127 11807) (.leaf 3 499831)) (.node 2 (.leaf 0 57010) (.leaf 31 48371))) (.node 4 (.node 2 (.leaf 3 499835) (.leaf 11 136319)) (.node 2 (.leaf 109 13757) (.leaf 3 499839)))))) (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 0 57011) (.leaf 5 299905)) (.node 2 (.leaf 3 499843) (.leaf 7 214219))) (.node 4 (.node 2 (.leaf 13 115349) (.leaf 3 499847)) (.node 2 (.leaf 5 299909) (.leaf 0 57012)))) (.node 8 (.node 4 (.node 2 (.leaf 3 499851) (.leaf 131 11447)) (.node 2 (.leaf 7 214223) (.leaf 3 499855))) (.node 4 (.node 2 (.leaf 0 57013) (.leaf 37 40529)) (.node 2 (.leaf 3 499859) (.leaf 151 9931))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 5 299917) (.leaf 3 499863)) (.node 2 (.leaf 0 57014) (.leaf 11 136327))) (.node 4 (.node 2 (.leaf 3 499867) (.leaf 5 299921)) (.node 2 (.leaf 0 57015) (.leaf 3 499871)))) (.node 8 (.node 4 (.node 2 (.leaf 7 214231) (.leaf 17 88213)) (.node 2 (.leaf 3 499875) (.leaf 47 31907))) (.node 4 (.node 2 (.leaf 461 3253) (.leaf 3 499879)) (.node 2 (.leaf 11 136331) (.leaf 5 299929))))))))

theorem codeBlock0366Check :
    coverageTree0366.check primeRootCoverage 374784 = true := by decide

theorem codeBlock0366 :
    PrimeCoverageRange primeRootCoverage 374784 374912 := by
  simpa [coverageTree0366, PrimeCoverageTree.size] using
    PrimeCoverageTree.range codeBlock0366Check

end Erdos848.GeneratedDiagonalCoverage
