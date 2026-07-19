import Erdos848.GeneratedLowDiagonalCoverage.Data

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def coverageTree0306 : PrimeCoverageTree :=
  (.node 128 (.node 64 (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 7 714167) (.leaf 3 1666391)) (.node 2 (.leaf 0 174161) (.leaf 11 454471))) (.node 4 (.node 2 (.leaf 3 1666395) (.leaf 13 384553)) (.node 2 (.leaf 1483 3371) (.leaf 3 1666399)))) (.node 8 (.node 4 (.node 2 (.leaf 0 174162) (.leaf 5 999841)) (.node 2 (.leaf 3 1666403) (.leaf 947 5279))) (.node 4 (.node 2 (.leaf 0 174163) (.leaf 3 1666407)) (.node 2 (.leaf 5 999845) (.leaf 347 14407))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 3 1666411) (.leaf 0 174164)) (.node 2 (.leaf 13 384557) (.leaf 3 1666415))) (.node 4 (.node 2 (.leaf 47 106367) (.leaf 7 714179)) (.node 2 (.leaf 3 1666419) (.leaf 19 263119)))) (.node 8 (.node 4 (.node 2 (.leaf 5 999853) (.leaf 3 1666423)) (.node 2 (.leaf 0 174165) (.leaf 31 161267))) (.node 4 (.node 2 (.leaf 3 1666427) (.leaf 5 999857)) (.node 2 (.leaf 1063 4703) (.leaf 3 1666431)))))) (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 0 174166) (.leaf 0 174167)) (.node 2 (.leaf 3 1666435) (.leaf 7 714187))) (.node 4 (.node 2 (.leaf 11 454483) (.leaf 3 1666439)) (.node 2 (.leaf 0 174168) (.leaf 5 999865)))) (.node 8 (.node 4 (.node 2 (.leaf 3 1666443) (.leaf 1667 2999)) (.node 2 (.leaf 7 714191) (.leaf 3 1666447))) (.node 4 (.node 2 (.leaf 5 999869) (.leaf 23 217363)) (.node 2 (.leaf 3 1666451) (.leaf 11 454487))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 107 46723) (.leaf 3 1666455)) (.node 2 (.leaf 647 7727) (.leaf 163 30671))) (.node 4 (.node 2 (.leaf 3 1666459) (.leaf 541 9241)) (.node 2 (.leaf 5 999877) (.leaf 3 1666463)))) (.node 8 (.node 4 (.node 2 (.leaf 7 714199) (.leaf 13 384569)) (.node 2 (.leaf 3 1666467) (.leaf 5 999881))) (.node 4 (.node 2 (.leaf 0 174169) (.leaf 3 1666471)) (.node 2 (.leaf 41 121937) (.leaf 7 714203))))))) (.node 64 (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 3 1666475) (.leaf 1693 2953)) (.node 2 (.leaf 853 5861) (.leaf 3 1666479))) (.node 4 (.node 2 (.leaf 23 217367) (.leaf 5 999889)) (.node 2 (.leaf 3 1666483) (.leaf 0 174170)))) (.node 8 (.node 4 (.node 2 (.leaf 0 174171) (.leaf 3 1666487)) (.node 2 (.leaf 5 999893) (.leaf 0 174172))) (.node 4 (.node 2 (.leaf 3 1666491) (.leaf 7 714211)) (.node 2 (.leaf 43 116267) (.leaf 3 1666495))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 11 454499) (.leaf 0 174173)) (.node 2 (.leaf 3 1666499) (.leaf 13 384577))) (.node 4 (.node 2 (.leaf 5 999901) (.leaf 3 1666503)) (.node 2 (.leaf 17 294089) (.leaf 103 48539)))) (.node 8 (.node 4 (.node 2 (.leaf 3 1666507) (.leaf 5 999905)) (.node 2 (.leaf 0 174174) (.leaf 3 1666511))) (.node 4 (.node 2 (.leaf 0 174175) (.leaf 137 36493)) (.node 2 (.leaf 3 1666515) (.leaf 313 15973)))))) (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 13 384581) (.leaf 3 1666519)) (.node 2 (.leaf 7 714223) (.leaf 5 999913))) (.node 4 (.node 2 (.leaf 3 1666523) (.leaf 277 18049)) (.node 2 (.leaf 11 454507) (.leaf 3 1666527)))) (.node 8 (.node 4 (.node 2 (.leaf 5 999917) (.leaf 7 714227)) (.node 2 (.leaf 3 1666531) (.leaf 0 174176))) (.node 4 (.node 2 (.leaf 59 84739) (.leaf 3 1666535)) (.node 2 (.leaf 127 39367) (.leaf 0 174177))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 3 1666539) (.leaf 11 454511)) (.node 2 (.leaf 5 999925) (.leaf 3 1666543))) (.node 4 (.node 2 (.leaf 0 174178) (.leaf 0 174179)) (.node 2 (.leaf 3 1666547) (.leaf 5 999929)))) (.node 8 (.node 4 (.node 2 (.leaf 17 294097) (.leaf 3 1666551)) (.node 2 (.leaf 13 384589) (.leaf 0 174180))) (.node 4 (.node 2 (.leaf 3 1666555) (.leaf 251 19919)) (.node 2 (.leaf 7 714239) (.leaf 3 1666559))))))))

theorem codeBlock0306Check :
    coverageTree0306.check primeRootCoverage 1249792 = true := by decide

theorem codeBlock0306 :
    PrimeCoverageRange primeRootCoverage 1249792 1249920 := by
  simpa [coverageTree0306, PrimeCoverageTree.size] using
    PrimeCoverageTree.range codeBlock0306Check

end Erdos848.GeneratedLowDiagonalCoverage
