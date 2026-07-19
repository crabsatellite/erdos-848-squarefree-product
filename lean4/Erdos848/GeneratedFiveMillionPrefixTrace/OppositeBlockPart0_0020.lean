import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0020

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 20480
  | _ => True

theorem oppositePart0_0020 : oppositePartValid0_0020 oppositeHistoryChunk0020 := by
  unfold oppositePartValid0_0020 oppositeHistoryChunk0020
  decide

def oppositePartValid1_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 20608
  | _ => True

theorem oppositePart1_0020 : oppositePartValid1_0020 oppositeHistoryChunk0020 := by
  unfold oppositePartValid1_0020 oppositeHistoryChunk0020
  decide

def oppositePartValid2_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 20736
  | _ => True

theorem oppositePart2_0020 : oppositePartValid2_0020 oppositeHistoryChunk0020 := by
  unfold oppositePartValid2_0020 oppositeHistoryChunk0020
  decide

def oppositePartValid3_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 20864
  | _ => True

theorem oppositePart3_0020 : oppositePartValid3_0020 oppositeHistoryChunk0020 := by
  unfold oppositePartValid3_0020 oppositeHistoryChunk0020
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
