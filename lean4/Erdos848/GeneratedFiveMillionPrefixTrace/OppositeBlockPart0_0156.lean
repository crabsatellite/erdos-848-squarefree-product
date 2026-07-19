import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0156

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0156 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 159744
  | _ => True

theorem oppositePart0_0156 : oppositePartValid0_0156 oppositeHistoryChunk0156 := by
  unfold oppositePartValid0_0156 oppositeHistoryChunk0156
  decide

def oppositePartValid1_0156 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 159872
  | _ => True

theorem oppositePart1_0156 : oppositePartValid1_0156 oppositeHistoryChunk0156 := by
  unfold oppositePartValid1_0156 oppositeHistoryChunk0156
  decide

def oppositePartValid2_0156 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 160000
  | _ => True

theorem oppositePart2_0156 : oppositePartValid2_0156 oppositeHistoryChunk0156 := by
  unfold oppositePartValid2_0156 oppositeHistoryChunk0156
  decide

def oppositePartValid3_0156 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 160128
  | _ => True

theorem oppositePart3_0156 : oppositePartValid3_0156 oppositeHistoryChunk0156 := by
  unfold oppositePartValid3_0156 oppositeHistoryChunk0156
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
