import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0188

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0188 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 192512
  | _ => True

theorem oppositePart0_0188 : oppositePartValid0_0188 oppositeHistoryChunk0188 := by
  unfold oppositePartValid0_0188 oppositeHistoryChunk0188
  decide

def oppositePartValid1_0188 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 192640
  | _ => True

theorem oppositePart1_0188 : oppositePartValid1_0188 oppositeHistoryChunk0188 := by
  unfold oppositePartValid1_0188 oppositeHistoryChunk0188
  decide

def oppositePartValid2_0188 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 192768
  | _ => True

theorem oppositePart2_0188 : oppositePartValid2_0188 oppositeHistoryChunk0188 := by
  unfold oppositePartValid2_0188 oppositeHistoryChunk0188
  decide

def oppositePartValid3_0188 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 192896
  | _ => True

theorem oppositePart3_0188 : oppositePartValid3_0188 oppositeHistoryChunk0188 := by
  unfold oppositePartValid3_0188 oppositeHistoryChunk0188
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
