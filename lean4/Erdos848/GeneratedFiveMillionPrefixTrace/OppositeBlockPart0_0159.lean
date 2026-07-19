import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0159

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0159 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 162816
  | _ => True

theorem oppositePart0_0159 : oppositePartValid0_0159 oppositeHistoryChunk0159 := by
  unfold oppositePartValid0_0159 oppositeHistoryChunk0159
  decide

def oppositePartValid1_0159 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 162944
  | _ => True

theorem oppositePart1_0159 : oppositePartValid1_0159 oppositeHistoryChunk0159 := by
  unfold oppositePartValid1_0159 oppositeHistoryChunk0159
  decide

def oppositePartValid2_0159 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 163072
  | _ => True

theorem oppositePart2_0159 : oppositePartValid2_0159 oppositeHistoryChunk0159 := by
  unfold oppositePartValid2_0159 oppositeHistoryChunk0159
  decide

def oppositePartValid3_0159 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 163200
  | _ => True

theorem oppositePart3_0159 : oppositePartValid3_0159 oppositeHistoryChunk0159 := by
  unfold oppositePartValid3_0159 oppositeHistoryChunk0159
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
