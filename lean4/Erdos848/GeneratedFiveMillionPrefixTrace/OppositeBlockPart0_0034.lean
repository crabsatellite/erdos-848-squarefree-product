import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0034

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 34816
  | _ => True

theorem oppositePart0_0034 : oppositePartValid0_0034 oppositeHistoryChunk0034 := by
  unfold oppositePartValid0_0034 oppositeHistoryChunk0034
  decide

def oppositePartValid1_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 34944
  | _ => True

theorem oppositePart1_0034 : oppositePartValid1_0034 oppositeHistoryChunk0034 := by
  unfold oppositePartValid1_0034 oppositeHistoryChunk0034
  decide

def oppositePartValid2_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 35072
  | _ => True

theorem oppositePart2_0034 : oppositePartValid2_0034 oppositeHistoryChunk0034 := by
  unfold oppositePartValid2_0034 oppositeHistoryChunk0034
  decide

def oppositePartValid3_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 35200
  | _ => True

theorem oppositePart3_0034 : oppositePartValid3_0034 oppositeHistoryChunk0034 := by
  unfold oppositePartValid3_0034 oppositeHistoryChunk0034
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
