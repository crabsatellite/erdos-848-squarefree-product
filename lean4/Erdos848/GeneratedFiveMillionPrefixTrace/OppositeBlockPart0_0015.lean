import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0015

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 15360
  | _ => True

theorem oppositePart0_0015 : oppositePartValid0_0015 oppositeHistoryChunk0015 := by
  unfold oppositePartValid0_0015 oppositeHistoryChunk0015
  decide

def oppositePartValid1_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 15488
  | _ => True

theorem oppositePart1_0015 : oppositePartValid1_0015 oppositeHistoryChunk0015 := by
  unfold oppositePartValid1_0015 oppositeHistoryChunk0015
  decide

def oppositePartValid2_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 15616
  | _ => True

theorem oppositePart2_0015 : oppositePartValid2_0015 oppositeHistoryChunk0015 := by
  unfold oppositePartValid2_0015 oppositeHistoryChunk0015
  decide

def oppositePartValid3_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 15744
  | _ => True

theorem oppositePart3_0015 : oppositePartValid3_0015 oppositeHistoryChunk0015 := by
  unfold oppositePartValid3_0015 oppositeHistoryChunk0015
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
