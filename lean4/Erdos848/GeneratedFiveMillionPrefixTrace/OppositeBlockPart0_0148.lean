import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0148

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0148 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 151552
  | _ => True

theorem oppositePart0_0148 : oppositePartValid0_0148 oppositeHistoryChunk0148 := by
  unfold oppositePartValid0_0148 oppositeHistoryChunk0148
  decide

def oppositePartValid1_0148 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 151680
  | _ => True

theorem oppositePart1_0148 : oppositePartValid1_0148 oppositeHistoryChunk0148 := by
  unfold oppositePartValid1_0148 oppositeHistoryChunk0148
  decide

def oppositePartValid2_0148 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 151808
  | _ => True

theorem oppositePart2_0148 : oppositePartValid2_0148 oppositeHistoryChunk0148 := by
  unfold oppositePartValid2_0148 oppositeHistoryChunk0148
  decide

def oppositePartValid3_0148 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 151936
  | _ => True

theorem oppositePart3_0148 : oppositePartValid3_0148 oppositeHistoryChunk0148 := by
  unfold oppositePartValid3_0148 oppositeHistoryChunk0148
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
