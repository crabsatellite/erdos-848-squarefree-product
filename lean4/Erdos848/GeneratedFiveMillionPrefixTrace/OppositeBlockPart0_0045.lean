import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0045

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 46080
  | _ => True

theorem oppositePart0_0045 : oppositePartValid0_0045 oppositeHistoryChunk0045 := by
  unfold oppositePartValid0_0045 oppositeHistoryChunk0045
  decide

def oppositePartValid1_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 46208
  | _ => True

theorem oppositePart1_0045 : oppositePartValid1_0045 oppositeHistoryChunk0045 := by
  unfold oppositePartValid1_0045 oppositeHistoryChunk0045
  decide

def oppositePartValid2_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 46336
  | _ => True

theorem oppositePart2_0045 : oppositePartValid2_0045 oppositeHistoryChunk0045 := by
  unfold oppositePartValid2_0045 oppositeHistoryChunk0045
  decide

def oppositePartValid3_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 46464
  | _ => True

theorem oppositePart3_0045 : oppositePartValid3_0045 oppositeHistoryChunk0045 := by
  unfold oppositePartValid3_0045 oppositeHistoryChunk0045
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
