import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0027

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 27648
  | _ => True

theorem oppositePart0_0027 : oppositePartValid0_0027 oppositeHistoryChunk0027 := by
  unfold oppositePartValid0_0027 oppositeHistoryChunk0027
  decide

def oppositePartValid1_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 27776
  | _ => True

theorem oppositePart1_0027 : oppositePartValid1_0027 oppositeHistoryChunk0027 := by
  unfold oppositePartValid1_0027 oppositeHistoryChunk0027
  decide

def oppositePartValid2_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 27904
  | _ => True

theorem oppositePart2_0027 : oppositePartValid2_0027 oppositeHistoryChunk0027 := by
  unfold oppositePartValid2_0027 oppositeHistoryChunk0027
  decide

def oppositePartValid3_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 28032
  | _ => True

theorem oppositePart3_0027 : oppositePartValid3_0027 oppositeHistoryChunk0027 := by
  unfold oppositePartValid3_0027 oppositeHistoryChunk0027
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
