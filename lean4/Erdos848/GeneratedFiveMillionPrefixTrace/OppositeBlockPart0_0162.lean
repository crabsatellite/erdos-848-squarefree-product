import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0162

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0162 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 165888
  | _ => True

theorem oppositePart0_0162 : oppositePartValid0_0162 oppositeHistoryChunk0162 := by
  unfold oppositePartValid0_0162 oppositeHistoryChunk0162
  decide

def oppositePartValid1_0162 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 166016
  | _ => True

theorem oppositePart1_0162 : oppositePartValid1_0162 oppositeHistoryChunk0162 := by
  unfold oppositePartValid1_0162 oppositeHistoryChunk0162
  decide

def oppositePartValid2_0162 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 166144
  | _ => True

theorem oppositePart2_0162 : oppositePartValid2_0162 oppositeHistoryChunk0162 := by
  unfold oppositePartValid2_0162 oppositeHistoryChunk0162
  decide

def oppositePartValid3_0162 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 166272
  | _ => True

theorem oppositePart3_0162 : oppositePartValid3_0162 oppositeHistoryChunk0162 := by
  unfold oppositePartValid3_0162 oppositeHistoryChunk0162
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
