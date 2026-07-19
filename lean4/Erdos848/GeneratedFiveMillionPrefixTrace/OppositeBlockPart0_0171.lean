import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0171

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0171 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 175104
  | _ => True

theorem oppositePart0_0171 : oppositePartValid0_0171 oppositeHistoryChunk0171 := by
  unfold oppositePartValid0_0171 oppositeHistoryChunk0171
  decide

def oppositePartValid1_0171 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 175232
  | _ => True

theorem oppositePart1_0171 : oppositePartValid1_0171 oppositeHistoryChunk0171 := by
  unfold oppositePartValid1_0171 oppositeHistoryChunk0171
  decide

def oppositePartValid2_0171 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 175360
  | _ => True

theorem oppositePart2_0171 : oppositePartValid2_0171 oppositeHistoryChunk0171 := by
  unfold oppositePartValid2_0171 oppositeHistoryChunk0171
  decide

def oppositePartValid3_0171 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 175488
  | _ => True

theorem oppositePart3_0171 : oppositePartValid3_0171 oppositeHistoryChunk0171 := by
  unfold oppositePartValid3_0171 oppositeHistoryChunk0171
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
