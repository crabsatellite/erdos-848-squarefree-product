import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0025

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0025 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 25600
  | _ => True

theorem oppositePart0_0025 : oppositePartValid0_0025 oppositeHistoryChunk0025 := by
  unfold oppositePartValid0_0025 oppositeHistoryChunk0025
  decide

def oppositePartValid1_0025 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 25728
  | _ => True

theorem oppositePart1_0025 : oppositePartValid1_0025 oppositeHistoryChunk0025 := by
  unfold oppositePartValid1_0025 oppositeHistoryChunk0025
  decide

def oppositePartValid2_0025 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 25856
  | _ => True

theorem oppositePart2_0025 : oppositePartValid2_0025 oppositeHistoryChunk0025 := by
  unfold oppositePartValid2_0025 oppositeHistoryChunk0025
  decide

def oppositePartValid3_0025 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 25984
  | _ => True

theorem oppositePart3_0025 : oppositePartValid3_0025 oppositeHistoryChunk0025 := by
  unfold oppositePartValid3_0025 oppositeHistoryChunk0025
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
