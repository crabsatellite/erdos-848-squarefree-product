import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0193

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0193 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 197632
  | _ => True

theorem oppositePart0_0193 : oppositePartValid0_0193 oppositeHistoryChunk0193 := by
  unfold oppositePartValid0_0193 oppositeHistoryChunk0193
  decide

def oppositePartValid1_0193 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 197760
  | _ => True

theorem oppositePart1_0193 : oppositePartValid1_0193 oppositeHistoryChunk0193 := by
  unfold oppositePartValid1_0193 oppositeHistoryChunk0193
  decide

def oppositePartValid2_0193 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 197888
  | _ => True

theorem oppositePart2_0193 : oppositePartValid2_0193 oppositeHistoryChunk0193 := by
  unfold oppositePartValid2_0193 oppositeHistoryChunk0193
  decide

def oppositePartValid3_0193 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 198016
  | _ => True

theorem oppositePart3_0193 : oppositePartValid3_0193 oppositeHistoryChunk0193 := by
  unfold oppositePartValid3_0193 oppositeHistoryChunk0193
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
