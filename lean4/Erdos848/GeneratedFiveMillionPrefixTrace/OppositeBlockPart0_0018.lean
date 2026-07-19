import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0018

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0018 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 18432
  | _ => True

theorem oppositePart0_0018 : oppositePartValid0_0018 oppositeHistoryChunk0018 := by
  unfold oppositePartValid0_0018 oppositeHistoryChunk0018
  decide

def oppositePartValid1_0018 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 18560
  | _ => True

theorem oppositePart1_0018 : oppositePartValid1_0018 oppositeHistoryChunk0018 := by
  unfold oppositePartValid1_0018 oppositeHistoryChunk0018
  decide

def oppositePartValid2_0018 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 18688
  | _ => True

theorem oppositePart2_0018 : oppositePartValid2_0018 oppositeHistoryChunk0018 := by
  unfold oppositePartValid2_0018 oppositeHistoryChunk0018
  decide

def oppositePartValid3_0018 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 18816
  | _ => True

theorem oppositePart3_0018 : oppositePartValid3_0018 oppositeHistoryChunk0018 := by
  unfold oppositePartValid3_0018 oppositeHistoryChunk0018
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
