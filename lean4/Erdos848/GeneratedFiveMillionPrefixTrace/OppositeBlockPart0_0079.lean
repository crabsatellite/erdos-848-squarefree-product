import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0079

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 80896
  | _ => True

theorem oppositePart0_0079 : oppositePartValid0_0079 oppositeHistoryChunk0079 := by
  unfold oppositePartValid0_0079 oppositeHistoryChunk0079
  decide

def oppositePartValid1_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 81024
  | _ => True

theorem oppositePart1_0079 : oppositePartValid1_0079 oppositeHistoryChunk0079 := by
  unfold oppositePartValid1_0079 oppositeHistoryChunk0079
  decide

def oppositePartValid2_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 81152
  | _ => True

theorem oppositePart2_0079 : oppositePartValid2_0079 oppositeHistoryChunk0079 := by
  unfold oppositePartValid2_0079 oppositeHistoryChunk0079
  decide

def oppositePartValid3_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 81280
  | _ => True

theorem oppositePart3_0079 : oppositePartValid3_0079 oppositeHistoryChunk0079 := by
  unfold oppositePartValid3_0079 oppositeHistoryChunk0079
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
