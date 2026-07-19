import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0153

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0153 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 156672
  | _ => True

theorem oppositePart0_0153 : oppositePartValid0_0153 oppositeHistoryChunk0153 := by
  unfold oppositePartValid0_0153 oppositeHistoryChunk0153
  decide

def oppositePartValid1_0153 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 156800
  | _ => True

theorem oppositePart1_0153 : oppositePartValid1_0153 oppositeHistoryChunk0153 := by
  unfold oppositePartValid1_0153 oppositeHistoryChunk0153
  decide

def oppositePartValid2_0153 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 156928
  | _ => True

theorem oppositePart2_0153 : oppositePartValid2_0153 oppositeHistoryChunk0153 := by
  unfold oppositePartValid2_0153 oppositeHistoryChunk0153
  decide

def oppositePartValid3_0153 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 157056
  | _ => True

theorem oppositePart3_0153 : oppositePartValid3_0153 oppositeHistoryChunk0153 := by
  unfold oppositePartValid3_0153 oppositeHistoryChunk0153
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
