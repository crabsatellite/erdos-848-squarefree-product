import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0074

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 75776
  | _ => True

theorem oppositePart0_0074 : oppositePartValid0_0074 oppositeHistoryChunk0074 := by
  unfold oppositePartValid0_0074 oppositeHistoryChunk0074
  decide

def oppositePartValid1_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 75904
  | _ => True

theorem oppositePart1_0074 : oppositePartValid1_0074 oppositeHistoryChunk0074 := by
  unfold oppositePartValid1_0074 oppositeHistoryChunk0074
  decide

def oppositePartValid2_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 76032
  | _ => True

theorem oppositePart2_0074 : oppositePartValid2_0074 oppositeHistoryChunk0074 := by
  unfold oppositePartValid2_0074 oppositeHistoryChunk0074
  decide

def oppositePartValid3_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 76160
  | _ => True

theorem oppositePart3_0074 : oppositePartValid3_0074 oppositeHistoryChunk0074 := by
  unfold oppositePartValid3_0074 oppositeHistoryChunk0074
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
