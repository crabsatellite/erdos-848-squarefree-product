import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0145

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0145 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 148480
  | _ => True

theorem oppositePart0_0145 : oppositePartValid0_0145 oppositeHistoryChunk0145 := by
  unfold oppositePartValid0_0145 oppositeHistoryChunk0145
  decide

def oppositePartValid1_0145 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 148608
  | _ => True

theorem oppositePart1_0145 : oppositePartValid1_0145 oppositeHistoryChunk0145 := by
  unfold oppositePartValid1_0145 oppositeHistoryChunk0145
  decide

def oppositePartValid2_0145 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 148736
  | _ => True

theorem oppositePart2_0145 : oppositePartValid2_0145 oppositeHistoryChunk0145 := by
  unfold oppositePartValid2_0145 oppositeHistoryChunk0145
  decide

def oppositePartValid3_0145 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 148864
  | _ => True

theorem oppositePart3_0145 : oppositePartValid3_0145 oppositeHistoryChunk0145 := by
  unfold oppositePartValid3_0145 oppositeHistoryChunk0145
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
