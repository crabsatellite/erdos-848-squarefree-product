import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0021

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 21504
  | _ => True

theorem oppositePart0_0021 : oppositePartValid0_0021 oppositeHistoryChunk0021 := by
  unfold oppositePartValid0_0021 oppositeHistoryChunk0021
  decide

def oppositePartValid1_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 21632
  | _ => True

theorem oppositePart1_0021 : oppositePartValid1_0021 oppositeHistoryChunk0021 := by
  unfold oppositePartValid1_0021 oppositeHistoryChunk0021
  decide

def oppositePartValid2_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 21760
  | _ => True

theorem oppositePart2_0021 : oppositePartValid2_0021 oppositeHistoryChunk0021 := by
  unfold oppositePartValid2_0021 oppositeHistoryChunk0021
  decide

def oppositePartValid3_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 21888
  | _ => True

theorem oppositePart3_0021 : oppositePartValid3_0021 oppositeHistoryChunk0021 := by
  unfold oppositePartValid3_0021 oppositeHistoryChunk0021
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
