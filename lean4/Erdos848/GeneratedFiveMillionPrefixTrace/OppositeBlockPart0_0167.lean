import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0167

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0167 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 171008
  | _ => True

theorem oppositePart0_0167 : oppositePartValid0_0167 oppositeHistoryChunk0167 := by
  unfold oppositePartValid0_0167 oppositeHistoryChunk0167
  decide

def oppositePartValid1_0167 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 171136
  | _ => True

theorem oppositePart1_0167 : oppositePartValid1_0167 oppositeHistoryChunk0167 := by
  unfold oppositePartValid1_0167 oppositeHistoryChunk0167
  decide

def oppositePartValid2_0167 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 171264
  | _ => True

theorem oppositePart2_0167 : oppositePartValid2_0167 oppositeHistoryChunk0167 := by
  unfold oppositePartValid2_0167 oppositeHistoryChunk0167
  decide

def oppositePartValid3_0167 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 171392
  | _ => True

theorem oppositePart3_0167 : oppositePartValid3_0167 oppositeHistoryChunk0167 := by
  unfold oppositePartValid3_0167 oppositeHistoryChunk0167
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
