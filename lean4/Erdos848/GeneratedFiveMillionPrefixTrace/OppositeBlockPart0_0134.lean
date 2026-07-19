import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0134

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0134 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 137216
  | _ => True

theorem oppositePart0_0134 : oppositePartValid0_0134 oppositeHistoryChunk0134 := by
  unfold oppositePartValid0_0134 oppositeHistoryChunk0134
  decide

def oppositePartValid1_0134 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 137344
  | _ => True

theorem oppositePart1_0134 : oppositePartValid1_0134 oppositeHistoryChunk0134 := by
  unfold oppositePartValid1_0134 oppositeHistoryChunk0134
  decide

def oppositePartValid2_0134 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 137472
  | _ => True

theorem oppositePart2_0134 : oppositePartValid2_0134 oppositeHistoryChunk0134 := by
  unfold oppositePartValid2_0134 oppositeHistoryChunk0134
  decide

def oppositePartValid3_0134 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 137600
  | _ => True

theorem oppositePart3_0134 : oppositePartValid3_0134 oppositeHistoryChunk0134 := by
  unfold oppositePartValid3_0134 oppositeHistoryChunk0134
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
