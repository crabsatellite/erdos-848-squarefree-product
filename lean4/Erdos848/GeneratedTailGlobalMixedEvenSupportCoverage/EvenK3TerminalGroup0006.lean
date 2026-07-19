import Erdos848.TailGlobalMixedEvenBitVecCheckerCore
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.WordCounts
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0006

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def evenK3TerminalGroup0006Row0000 : Erdos848.GlobalMixedEvenTerminal :=
  { branchPrefix := [523], maskedPrefix := [523], endpoint := 154769821, counts := { normalFalseTwo := 151, normalTrueTwo := 157, twistFalseTwo := 30, twistTrueTwo := 24, normalFalseThree := 73, normalTrueThree := 78, twistFalseThree := 15, twistTrueThree := 15 } }

def evenK3TerminalGroup0006Row0001 : Erdos848.GlobalMixedEvenTerminal :=
  { branchPrefix := [541], maskedPrefix := [541], endpoint := 164831339, counts := { normalFalseTwo := 141, normalTrueTwo := 162, twistFalseTwo := 25, twistTrueTwo := 37, normalFalseThree := 69, normalTrueThree := 87, twistFalseThree := 12, twistTrueThree := 14 } }

def evenK3TerminalGroup0006CommonRows : Erdos848.GlobalMixedEvenBitVecRows :=
  { normalFalseTwo := [(76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152940196322344977 : Erdos848.GlobalMixedWord), (1224980266876993537 : Erdos848.GlobalMixedWord), (76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152940196322344977 : Erdos848.GlobalMixedWord), (1224980266876993537 : Erdos848.GlobalMixedWord), (76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152940196322344977 : Erdos848.GlobalMixedWord), (1224980266876993537 : Erdos848.GlobalMixedWord), (76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152940196322344977 : Erdos848.GlobalMixedWord), (1224980266876993537 : Erdos848.GlobalMixedWord), (76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152940196322344977 : Erdos848.GlobalMixedWord), (1224980266876993537 : Erdos848.GlobalMixedWord), (76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152940196322344977 : Erdos848.GlobalMixedWord), (1224980266876993537 : Erdos848.GlobalMixedWord), (76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152940196322344977 : Erdos848.GlobalMixedWord), (1224980266876993537 : Erdos848.GlobalMixedWord), (76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152940196322344977 : Erdos848.GlobalMixedWord), (1224980266876993537 : Erdos848.GlobalMixedWord), (76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152940196322344977 : Erdos848.GlobalMixedWord), (1224980266876993537 : Erdos848.GlobalMixedWord), (76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (272 : Erdos848.GlobalMixedWord)]
    normalTrueTwo := [(1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (1157426208041865217 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (4521196125163536 : Erdos848.GlobalMixedWord), (1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (1157426208041865217 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (4521196125163536 : Erdos848.GlobalMixedWord), (1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (1157426208041865217 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (4521196125163536 : Erdos848.GlobalMixedWord), (1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (1157426208041865217 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (4521196125163536 : Erdos848.GlobalMixedWord), (1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (1157426208041865217 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (4521196125163536 : Erdos848.GlobalMixedWord), (1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (1157426208041865217 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (4521196125163536 : Erdos848.GlobalMixedWord), (1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (1157426208041865217 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (4521196125163536 : Erdos848.GlobalMixedWord), (1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (1157426208041865217 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (4521196125163536 : Erdos848.GlobalMixedWord), (1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (1157426208041865217 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (4521196125163536 : Erdos848.GlobalMixedWord), (1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (4097 : Erdos848.GlobalMixedWord)]
    twistFalseTwo := [(76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152940196322344977 : Erdos848.GlobalMixedWord), (1224980266876993537 : Erdos848.GlobalMixedWord), (76561266679812096 : Erdos848.GlobalMixedWord), (4785079167488256 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152940196322344977 : Erdos848.GlobalMixedWord), (1114113 : Erdos848.GlobalMixedWord)]
    twistTrueTwo := [(1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (1157426208041865217 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (4521196125163536 : Erdos848.GlobalMixedWord), (1153204079364669697 : Erdos848.GlobalMixedWord), (72075254960291856 : Erdos848.GlobalMixedWord), (1157426208041865217 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (16781328 : Erdos848.GlobalMixedWord)]
    normalFalseThree := [(72057598332960768 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (281474993488128 : Erdos848.GlobalMixedWord), (1099528404993 : Erdos848.GlobalMixedWord), (72058693549621249 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (281474993488128 : Erdos848.GlobalMixedWord), (1099528404993 : Erdos848.GlobalMixedWord), (72058693549621249 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (281474993488128 : Erdos848.GlobalMixedWord), (1099528404993 : Erdos848.GlobalMixedWord), (72058693549621249 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (281474993488128 : Erdos848.GlobalMixedWord), (1099528404993 : Erdos848.GlobalMixedWord), (72058693549621249 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (281474993488128 : Erdos848.GlobalMixedWord), (1099528404993 : Erdos848.GlobalMixedWord), (72058693549621249 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (281474993488128 : Erdos848.GlobalMixedWord), (1099528404993 : Erdos848.GlobalMixedWord), (72058693549621249 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (281474993488128 : Erdos848.GlobalMixedWord), (1099528404993 : Erdos848.GlobalMixedWord), (72058693549621249 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (281474993488128 : Erdos848.GlobalMixedWord), (1099528404993 : Erdos848.GlobalMixedWord), (72058693549621249 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (281474993488128 : Erdos848.GlobalMixedWord), (1099528404993 : Erdos848.GlobalMixedWord), (72058693549621249 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord)]
    normalTrueThree := [(282574488338689 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (282574488338689 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (282574488338689 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (282574488338689 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (282574488338689 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (282574488338689 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (282574488338689 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (282574488338689 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (282574488338689 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (282574488338689 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1 : Erdos848.GlobalMixedWord)]
    twistFalseThree := [(4503668346851328 : Erdos848.GlobalMixedWord), (4503599895810048 : Erdos848.GlobalMixedWord), (17592454479888 : Erdos848.GlobalMixedWord), (1152939096793939984 : Erdos848.GlobalMixedWord), (1152921573327372288 : Erdos848.GlobalMixedWord), (4503668346851328 : Erdos848.GlobalMixedWord), (4503599895810048 : Erdos848.GlobalMixedWord), (17592454479888 : Erdos848.GlobalMixedWord), (1152939096793939984 : Erdos848.GlobalMixedWord), (1048576 : Erdos848.GlobalMixedWord)]
    twistTrueThree := [(1152921504876331008 : Erdos848.GlobalMixedWord), (17660905521168 : Erdos848.GlobalMixedWord), (1157425104235270144 : Erdos848.GlobalMixedWord), (68987912192 : Erdos848.GlobalMixedWord), (4521191813419024 : Erdos848.GlobalMixedWord), (1152921504876331008 : Erdos848.GlobalMixedWord), (17660905521168 : Erdos848.GlobalMixedWord), (1157425104235270144 : Erdos848.GlobalMixedWord), (68987912192 : Erdos848.GlobalMixedWord), (4112 : Erdos848.GlobalMixedWord)] }

def evenK3TerminalGroup0006FinalRows0000 : Erdos848.GlobalMixedEvenBitVecRows :=
  { normalFalseTwo := [(4503599627440128 : Erdos848.GlobalMixedWord), (4503599627374848 : Erdos848.GlobalMixedWord), (299067447968016 : Erdos848.GlobalMixedWord), (1152939096809668609 : Erdos848.GlobalMixedWord), (72057594037927937 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (4503603922341888 : Erdos848.GlobalMixedWord), (299067447967744 : Erdos848.GlobalMixedWord), (1048576 : Erdos848.GlobalMixedWord), (1224980266876993537 : Erdos848.GlobalMixedWord), (76561197960335360 : Erdos848.GlobalMixedWord), (281474976715008 : Erdos848.GlobalMixedWord), (299067162755344 : Erdos848.GlobalMixedWord), (16777217 : Erdos848.GlobalMixedWord), (72057662758453248 : Erdos848.GlobalMixedWord), (4503599627436032 : Erdos848.GlobalMixedWord), (4503604190773248 : Erdos848.GlobalMixedWord), (281475245146112 : Erdos848.GlobalMixedWord), (17592202821649 : Erdos848.GlobalMixedWord), (68720590849 : Erdos848.GlobalMixedWord), (76561193665302528 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (285212944 : Erdos848.GlobalMixedWord), (1099528404992 : Erdos848.GlobalMixedWord), (1224979167365300225 : Erdos848.GlobalMixedWord), (73014448128 : Erdos848.GlobalMixedWord), (281475245146112 : Erdos848.GlobalMixedWord), (281474976710928 : Erdos848.GlobalMixedWord), (1152922604118474752 : Erdos848.GlobalMixedWord), (68720590848 : Erdos848.GlobalMixedWord), (72057598332964864 : Erdos848.GlobalMixedWord), (4785079167488000 : Erdos848.GlobalMixedWord), (17592186044688 : Erdos848.GlobalMixedWord), (1152921504607895568 : Erdos848.GlobalMixedWord), (72057662758453248 : Erdos848.GlobalMixedWord), (4503672641884160 : Erdos848.GlobalMixedWord), (281475245150464 : Erdos848.GlobalMixedWord), (281475261923600 : Erdos848.GlobalMixedWord), (1099512676369 : Erdos848.GlobalMixedWord), (1224979167365300224 : Erdos848.GlobalMixedWord), (4503672641880064 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (299067431190544 : Erdos848.GlobalMixedWord), (1048577 : Erdos848.GlobalMixedWord), (72057594037927937 : Erdos848.GlobalMixedWord), (4503599627374592 : Erdos848.GlobalMixedWord), (281474976710656 : Erdos848.GlobalMixedWord), (16 : Erdos848.GlobalMixedWord)]
    normalTrueTwo := [(282574756774145 : Erdos848.GlobalMixedWord), (72075186240815104 : Erdos848.GlobalMixedWord), (4504703435018240 : Erdos848.GlobalMixedWord), (72339069283139840 : Erdos848.GlobalMixedWord), (4521196125159440 : Erdos848.GlobalMixedWord), (1153204079096233984 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (1157426203745849344 : Erdos848.GlobalMixedWord), (65792 : Erdos848.GlobalMixedWord), (16781312 : Erdos848.GlobalMixedWord), (282574489387009 : Erdos848.GlobalMixedWord), (17592202821648 : Erdos848.GlobalMixedWord), (4294971393 : Erdos848.GlobalMixedWord), (65792 : Erdos848.GlobalMixedWord), (4503599644147728 : Erdos848.GlobalMixedWord), (282574757822465 : Erdos848.GlobalMixedWord), (17660905586688 : Erdos848.GlobalMixedWord), (1048577 : Erdos848.GlobalMixedWord), (68987912192 : Erdos848.GlobalMixedWord), (4503603939119120 : Erdos848.GlobalMixedWord), (1152922604387958785 : Erdos848.GlobalMixedWord), (17660922298384 : Erdos848.GlobalMixedWord), (4504703435018240 : Erdos848.GlobalMixedWord), (281474976776448 : Erdos848.GlobalMixedWord), (16781312 : Erdos848.GlobalMixedWord), (1152921504876331264 : Erdos848.GlobalMixedWord), (65552 : Erdos848.GlobalMixedWord), (4503599627374593 : Erdos848.GlobalMixedWord), (72339069283139584 : Erdos848.GlobalMixedWord), (16777232 : Erdos848.GlobalMixedWord), (281474976710912 : Erdos848.GlobalMixedWord), (72057594054705168 : Erdos848.GlobalMixedWord), (1157426203745845248 : Erdos848.GlobalMixedWord), (72057594306363648 : Erdos848.GlobalMixedWord), (4503603939115024 : Erdos848.GlobalMixedWord), (1152921504876331265 : Erdos848.GlobalMixedWord), (17660922298384 : Erdos848.GlobalMixedWord), (4294971392 : Erdos848.GlobalMixedWord), (72057663025840128 : Erdos848.GlobalMixedWord), (4294971392 : Erdos848.GlobalMixedWord), (1152922604387959040 : Erdos848.GlobalMixedWord), (72075186223972352 : Erdos848.GlobalMixedWord), (1152922604119523329 : Erdos848.GlobalMixedWord), (72339138002550784 : Erdos848.GlobalMixedWord), (4521191830192144 : Erdos848.GlobalMixedWord), (1152921504875282432 : Erdos848.GlobalMixedWord), (16 : Erdos848.GlobalMixedWord), (1 : Erdos848.GlobalMixedWord)]
    twistFalseTwo := [(72057667052371968 : Erdos848.GlobalMixedWord), (281479540113408 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (1099512676368 : Erdos848.GlobalMixedWord), (1152922672839065600 : Erdos848.GlobalMixedWord), (4503672641884160 : Erdos848.GlobalMixedWord), (281475245146368 : Erdos848.GlobalMixedWord), (272 : Erdos848.GlobalMixedWord), (1152940196321296401 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord)]
    twistTrueTwo := [(1152921504607895552 : Erdos848.GlobalMixedWord), (68719476752 : Erdos848.GlobalMixedWord), (1152921504606846977 : Erdos848.GlobalMixedWord), (68719476736 : Erdos848.GlobalMixedWord), (4096 : Erdos848.GlobalMixedWord), (268435713 : Erdos848.GlobalMixedWord), (17660922363920 : Erdos848.GlobalMixedWord), (4296015873 : Erdos848.GlobalMixedWord), (72339138002550784 : Erdos848.GlobalMixedWord), (16 : Erdos848.GlobalMixedWord)]
    normalFalseThree := [(65536 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord), (281474993488128 : Erdos848.GlobalMixedWord), (16777217 : Erdos848.GlobalMixedWord), (72057594037927937 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (281474993487872 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (72058693549621249 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281474976710912 : Erdos848.GlobalMixedWord), (281474976710912 : Erdos848.GlobalMixedWord), (16777217 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (65536 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (281474976710656 : Erdos848.GlobalMixedWord), (16777217 : Erdos848.GlobalMixedWord), (65537 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (16777472 : Erdos848.GlobalMixedWord), (1099528404992 : Erdos848.GlobalMixedWord), (72057594037927937 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (281474976710656 : Erdos848.GlobalMixedWord), (281474976710912 : Erdos848.GlobalMixedWord), (1099511627776 : Erdos848.GlobalMixedWord), (65536 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281479271677952 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (4295032832 : Erdos848.GlobalMixedWord), (281474976710912 : Erdos848.GlobalMixedWord), (281474993488128 : Erdos848.GlobalMixedWord), (1099511627777 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (4295032832 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (281474976710656 : Erdos848.GlobalMixedWord), (1 : Erdos848.GlobalMixedWord), (72057594037927937 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (281474976710656 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord)]
    normalTrueThree := [(282574488338689 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1103806595072 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (282574488338432 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (1099511627776 : Erdos848.GlobalMixedWord), (65792 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (282574488338433 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (4294967297 : Erdos848.GlobalMixedWord), (65792 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (282574488338433 : Erdos848.GlobalMixedWord), (65536 : Erdos848.GlobalMixedWord), (1 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (1099511627777 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (1103806595072 : Erdos848.GlobalMixedWord), (281474976776448 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord), (65536 : Erdos848.GlobalMixedWord), (1 : Erdos848.GlobalMixedWord), (72339069014704128 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (281474976710912 : Erdos848.GlobalMixedWord), (72057594054705152 : Erdos848.GlobalMixedWord), (1099511627776 : Erdos848.GlobalMixedWord), (72057594037928192 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (257 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (1099511628032 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (1099511627777 : Erdos848.GlobalMixedWord), (72339069014638592 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (1 : Erdos848.GlobalMixedWord)]
    twistFalseThree := [(68719476736 : Erdos848.GlobalMixedWord), (268435456 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (1048592 : Erdos848.GlobalMixedWord), (1152921573327372288 : Erdos848.GlobalMixedWord), (4503668346851328 : Erdos848.GlobalMixedWord), (268435456 : Erdos848.GlobalMixedWord), (16 : Erdos848.GlobalMixedWord), (1152939096792891408 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord)]
    twistTrueThree := [(1152921504607895552 : Erdos848.GlobalMixedWord), (68719476752 : Erdos848.GlobalMixedWord), (1152921504606846976 : Erdos848.GlobalMixedWord), (68719476736 : Erdos848.GlobalMixedWord), (4096 : Erdos848.GlobalMixedWord), (268435456 : Erdos848.GlobalMixedWord), (17660905521168 : Erdos848.GlobalMixedWord), (1048576 : Erdos848.GlobalMixedWord), (68987912192 : Erdos848.GlobalMixedWord), (16 : Erdos848.GlobalMixedWord)] }

def evenK3TerminalGroup0006FinalRows0001 : Erdos848.GlobalMixedEvenBitVecRows :=
  { normalFalseTwo := [(76561193665298432 : Erdos848.GlobalMixedWord), (268435456 : Erdos848.GlobalMixedWord), (17592186044688 : Erdos848.GlobalMixedWord), (17592202821632 : Erdos848.GlobalMixedWord), (72057594038976512 : Erdos848.GlobalMixedWord), (72057598332895232 : Erdos848.GlobalMixedWord), (4785078899052544 : Erdos848.GlobalMixedWord), (17592454480144 : Erdos848.GlobalMixedWord), (18691714449409 : Erdos848.GlobalMixedWord), (72058693549555713 : Erdos848.GlobalMixedWord), (68719480832 : Erdos848.GlobalMixedWord), (281479540113664 : Erdos848.GlobalMixedWord), (281475261923344 : Erdos848.GlobalMixedWord), (1152939096810717200 : Erdos848.GlobalMixedWord), (1224979098644840448 : Erdos848.GlobalMixedWord), (4503599627440128 : Erdos848.GlobalMixedWord), (4785078899052800 : Erdos848.GlobalMixedWord), (285212928 : Erdos848.GlobalMixedWord), (17592202821648 : Erdos848.GlobalMixedWord), (1168232218625 : Erdos848.GlobalMixedWord), (4503668346916864 : Erdos848.GlobalMixedWord), (4503599627370496 : Erdos848.GlobalMixedWord), (299067162755072 : Erdos848.GlobalMixedWord), (1099512676368 : Erdos848.GlobalMixedWord), (1152921504607895552 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (281475261923344 : Erdos848.GlobalMixedWord), (17592202821649 : Erdos848.GlobalMixedWord), (72057594038976513 : Erdos848.GlobalMixedWord), (72057667052437504 : Erdos848.GlobalMixedWord), (4563403008 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (1152939096810717200 : Erdos848.GlobalMixedWord), (72058762269032448 : Erdos848.GlobalMixedWord), (76561197960331264 : Erdos848.GlobalMixedWord), (281479540113408 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (1152940196305567744 : Erdos848.GlobalMixedWord), (68720590848 : Erdos848.GlobalMixedWord), (76561266679742464 : Erdos848.GlobalMixedWord), (4503603922337792 : Erdos848.GlobalMixedWord), (17592454479888 : Erdos848.GlobalMixedWord), (1152940196304519169 : Erdos848.GlobalMixedWord), (1152921504606846977 : Erdos848.GlobalMixedWord), (76561262384844800 : Erdos848.GlobalMixedWord), (4096 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord)]
    normalTrueTwo := [(282574489387265 : Erdos848.GlobalMixedWord), (72075254943514640 : Erdos848.GlobalMixedWord), (1152922608413446145 : Erdos848.GlobalMixedWord), (281543964622848 : Erdos848.GlobalMixedWord), (4521196108382208 : Erdos848.GlobalMixedWord), (282574756774144 : Erdos848.GlobalMixedWord), (72075186224037888 : Erdos848.GlobalMixedWord), (4294971393 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4521191830196224 : Erdos848.GlobalMixedWord), (1099511628033 : Erdos848.GlobalMixedWord), (16842752 : Erdos848.GlobalMixedWord), (4097 : Erdos848.GlobalMixedWord), (268435712 : Erdos848.GlobalMixedWord), (4521191830196224 : Erdos848.GlobalMixedWord), (1099781111809 : Erdos848.GlobalMixedWord), (72057662757470224 : Erdos848.GlobalMixedWord), (1099512680449 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord), (4521191830196240 : Erdos848.GlobalMixedWord), (268435712 : Erdos848.GlobalMixedWord), (72075186240815104 : Erdos848.GlobalMixedWord), (1152922608414490625 : Erdos848.GlobalMixedWord), (281475245211904 : Erdos848.GlobalMixedWord), (4503599627374592 : Erdos848.GlobalMixedWord), (281474976710657 : Erdos848.GlobalMixedWord), (68736319488 : Erdos848.GlobalMixedWord), (1152922604118478848 : Erdos848.GlobalMixedWord), (72057594306363648 : Erdos848.GlobalMixedWord), (16 : Erdos848.GlobalMixedWord), (268435713 : Erdos848.GlobalMixedWord), (72075254960226320 : Erdos848.GlobalMixedWord), (4504699140050945 : Erdos848.GlobalMixedWord), (72339138002616576 : Erdos848.GlobalMixedWord), (17596481015808 : Erdos848.GlobalMixedWord), (1153202979851993088 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (1152922608414494721 : Erdos848.GlobalMixedWord), (65792 : Erdos848.GlobalMixedWord), (17592186048512 : Erdos848.GlobalMixedWord), (1152922604119523585 : Erdos848.GlobalMixedWord), (17592186109968 : Erdos848.GlobalMixedWord), (4503603923390465 : Erdos848.GlobalMixedWord), (72057663025905664 : Erdos848.GlobalMixedWord), (4503603939119104 : Erdos848.GlobalMixedWord), (1048576 : Erdos848.GlobalMixedWord), (72057662774247424 : Erdos848.GlobalMixedWord), (4097 : Erdos848.GlobalMixedWord)]
    twistFalseTwo := [(76561193665298432 : Erdos848.GlobalMixedWord), (268435456 : Erdos848.GlobalMixedWord), (17592186044688 : Erdos848.GlobalMixedWord), (17592202821632 : Erdos848.GlobalMixedWord), (72057594038976512 : Erdos848.GlobalMixedWord), (72057598332895232 : Erdos848.GlobalMixedWord), (4785078899052544 : Erdos848.GlobalMixedWord), (17592454480144 : Erdos848.GlobalMixedWord), (18691714449409 : Erdos848.GlobalMixedWord), (1 : Erdos848.GlobalMixedWord)]
    twistTrueTwo := [(282574489387265 : Erdos848.GlobalMixedWord), (72075254943514640 : Erdos848.GlobalMixedWord), (1152922608413446145 : Erdos848.GlobalMixedWord), (281543964622848 : Erdos848.GlobalMixedWord), (4521196108382208 : Erdos848.GlobalMixedWord), (282574756774144 : Erdos848.GlobalMixedWord), (72075186224037888 : Erdos848.GlobalMixedWord), (4294971393 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (16781312 : Erdos848.GlobalMixedWord)]
    normalFalseThree := [(72057594037927936 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (72057598332895232 : Erdos848.GlobalMixedWord), (281479271677952 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord), (1099528404993 : Erdos848.GlobalMixedWord), (72058693549555713 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (281474993487872 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (72057594037993472 : Erdos848.GlobalMixedWord), (65536 : Erdos848.GlobalMixedWord), (281479271678208 : Erdos848.GlobalMixedWord), (16777472 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (1099511693313 : Erdos848.GlobalMixedWord), (65536 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (281474976710656 : Erdos848.GlobalMixedWord), (1099511627776 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (72057594037927936 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (281474993487872 : Erdos848.GlobalMixedWord), (16777217 : Erdos848.GlobalMixedWord), (72057594037927937 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (4294967552 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (72058693549555712 : Erdos848.GlobalMixedWord), (72057598332960768 : Erdos848.GlobalMixedWord), (281479271677952 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (1099511627776 : Erdos848.GlobalMixedWord), (65536 : Erdos848.GlobalMixedWord), (72057598332895232 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (1099511627777 : Erdos848.GlobalMixedWord), (1 : Erdos848.GlobalMixedWord), (72057594037993472 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord)]
    normalTrueThree := [(282574488338689 : Erdos848.GlobalMixedWord), (72057594037993472 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (281474976710656 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (282574488338688 : Erdos848.GlobalMixedWord), (72057594037993472 : Erdos848.GlobalMixedWord), (4294967297 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (1099511628033 : Erdos848.GlobalMixedWord), (16842752 : Erdos848.GlobalMixedWord), (1 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (1099511627777 : Erdos848.GlobalMixedWord), (72057594037993472 : Erdos848.GlobalMixedWord), (1099511627777 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord), (16777216 : Erdos848.GlobalMixedWord), (256 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (281474976776448 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (281474976710657 : Erdos848.GlobalMixedWord), (16842752 : Erdos848.GlobalMixedWord), (1099511627776 : Erdos848.GlobalMixedWord), (72057594037928192 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (257 : Erdos848.GlobalMixedWord), (72057594054705152 : Erdos848.GlobalMixedWord), (1099511627777 : Erdos848.GlobalMixedWord), (72339069014704384 : Erdos848.GlobalMixedWord), (4294967296 : Erdos848.GlobalMixedWord), (281474976710656 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (1103806595073 : Erdos848.GlobalMixedWord), (65792 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (1099511628033 : Erdos848.GlobalMixedWord), (65536 : Erdos848.GlobalMixedWord), (4294967297 : Erdos848.GlobalMixedWord), (72057594037993472 : Erdos848.GlobalMixedWord), (4311744512 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (72057594054770688 : Erdos848.GlobalMixedWord), (1 : Erdos848.GlobalMixedWord)]
    twistFalseThree := [(4503599627370496 : Erdos848.GlobalMixedWord), (268435456 : Erdos848.GlobalMixedWord), (17592186044432 : Erdos848.GlobalMixedWord), (17592186044416 : Erdos848.GlobalMixedWord), (1048576 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (4503599627374592 : Erdos848.GlobalMixedWord), (17592454479888 : Erdos848.GlobalMixedWord), (17592186044416 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord)]
    twistTrueThree := [(1048576 : Erdos848.GlobalMixedWord), (17660905521168 : Erdos848.GlobalMixedWord), (1152921504606851072 : Erdos848.GlobalMixedWord), (68987912192 : Erdos848.GlobalMixedWord), (4521191813414912 : Erdos848.GlobalMixedWord), (268435456 : Erdos848.GlobalMixedWord), (17592186044416 : Erdos848.GlobalMixedWord), (4096 : Erdos848.GlobalMixedWord), (0 : Erdos848.GlobalMixedWord), (4096 : Erdos848.GlobalMixedWord)] }

def evenK3TerminalGroup0006 : List Erdos848.GlobalMixedEvenTerminal :=
  [evenK3TerminalGroup0006Row0000, evenK3TerminalGroup0006Row0001]

def evenK3TerminalGroup0006NormalLookup (p : Nat) : List Nat :=
  if p <= 619 then Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0006 p else
  []

def evenK3TerminalGroup0006TwistLookup (p : Nat) : List Nat :=
  if p <= 619 then Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0006 p else
  []

theorem evenK3TerminalGroup0006_common_rows :
    Erdos848.globalMixedBitVecRestrictedRows
      evenK3TerminalGroup0006NormalLookup evenK3TerminalGroup0006TwistLookup [] =
    evenK3TerminalGroup0006CommonRows := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecRestrictedRows,
      Erdos848.globalMixedBitVecSupportWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK3TerminalGroup0006CommonRows, evenK3TerminalGroup0006NormalLookup, evenK3TerminalGroup0006TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalCosetWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistCosetWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0006,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0006,      ]

theorem evenK3TerminalGroup0006_rows :
    [
      (Erdos848.globalMixedBitVecContinueRows evenK3TerminalGroup0006NormalLookup evenK3TerminalGroup0006TwistLookup [523] evenK3TerminalGroup0006CommonRows),
      (Erdos848.globalMixedBitVecContinueRows evenK3TerminalGroup0006NormalLookup evenK3TerminalGroup0006TwistLookup [541] evenK3TerminalGroup0006CommonRows)
    ] =
    [
      evenK3TerminalGroup0006FinalRows0000,
      evenK3TerminalGroup0006FinalRows0001
    ] := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK3TerminalGroup0006CommonRows,
      evenK3TerminalGroup0006FinalRows0000, evenK3TerminalGroup0006FinalRows0001,
      evenK3TerminalGroup0006NormalLookup, evenK3TerminalGroup0006TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0006,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0006,      ]

theorem evenK3TerminalGroup0006_counts :
    [
      evenK3TerminalGroup0006FinalRows0000.counts,
      evenK3TerminalGroup0006FinalRows0001.counts
    ] =
    [
      evenK3TerminalGroup0006Row0000.counts.toBitVec,
      evenK3TerminalGroup0006Row0001.counts.toBitVec
    ] := by
  simp (config := { maxSteps := 1000000 }) only
    [
      Erdos848.globalMixedBitVecCount,
      Erdos848.GlobalMixedEvenBitVecRows.counts,
      Erdos848.GlobalMixedEvenCounts.toBitVec,
      evenK3TerminalGroup0006FinalRows0000, evenK3TerminalGroup0006FinalRows0001,
      evenK3TerminalGroup0006Row0000, evenK3TerminalGroup0006Row0001,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0000,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0001,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0002,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0004,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0005,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0006,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0007,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0008,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0011,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0012,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0013,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0014,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0016,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0017,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0018,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0026,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0027,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0028,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0030,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0032,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0034,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0040,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0043,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0044,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0056,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0057,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0058,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0059,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0061,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0062,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0063,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0066,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0069,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0072,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0077,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0080,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0082,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0084,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0092,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0093,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0096,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0098,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0103,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0106,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0107,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0110,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0111,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0115,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0118,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0119,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0123,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0126,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0127,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0139,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0142,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0143,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0157,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0158,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0160,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0163,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0164,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0167,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0172,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0174,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0175,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0187,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0189,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0196,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0203,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0204,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0207,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0209,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0219,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0226,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0227,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0229,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0231,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0233,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0235,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0240,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0242,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0244,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0247,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0251,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0253,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0259,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0261,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0262,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0263,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0266,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0267,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0274,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0278,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0279,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0280,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0281,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0283,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0285,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0288,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0289,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0291,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0294,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0297,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0303,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0306,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0309,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0310,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0314,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0315,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0317,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0318,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0319,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0325,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0332,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0336,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0345,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0347,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0348,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0349,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0350,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0355,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0357,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0360,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0361,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0369,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0376,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0378,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0383,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0384,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0385,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0386,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0391,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0404,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0405,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0408,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0410,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0411,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0413,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0415,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0420,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0421,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0424,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0425,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0426,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0429,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0432,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0434,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0435,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0443,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0446,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0452,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0454,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0456,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0458,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0460,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0462,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0463,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0465,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0470,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0478,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0480,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0484,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0489,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0491,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0494,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0496,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0497,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0500,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0501,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0506,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0509,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0510,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0511,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0516,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0517,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0521,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0522,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0526,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0527,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0532,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0536,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0538,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0554,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0560,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0561,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0574,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0578,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0584,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0589,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0593,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0611,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0612,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0617,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0619,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0621,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0628,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0632,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0639,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0644,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0647,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0650,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0657,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0670,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0682,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0710,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0712,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0728,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0738,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0739,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0757,      ]
  simp

theorem evenK3TerminalGroup0006_line_passes :
    evenK3TerminalGroup0006.all (Erdos848.globalMixedEvenTerminalCountsPasses 3) = true := by
  rfl

#print axioms evenK3TerminalGroup0006_counts
#print axioms evenK3TerminalGroup0006_common_rows
#print axioms evenK3TerminalGroup0006_rows
#print axioms evenK3TerminalGroup0006_line_passes

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
