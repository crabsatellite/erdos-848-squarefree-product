import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0165

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0165 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 168960
  | _ => True

theorem oppositePart0_0165 : oppositePartValid0_0165 oppositeHistoryChunk0165 := by
  unfold oppositePartValid0_0165 oppositeHistoryChunk0165
  decide

def oppositePartValid1_0165 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 169088
  | _ => True

theorem oppositePart1_0165 : oppositePartValid1_0165 oppositeHistoryChunk0165 := by
  unfold oppositePartValid1_0165 oppositeHistoryChunk0165
  decide

def oppositePartValid2_0165 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 169216
  | _ => True

theorem oppositePart2_0165 : oppositePartValid2_0165 oppositeHistoryChunk0165 := by
  unfold oppositePartValid2_0165 oppositeHistoryChunk0165
  decide

def oppositePartValid3_0165 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 169344
  | _ => True

theorem oppositePart3_0165 : oppositePartValid3_0165 oppositeHistoryChunk0165 := by
  unfold oppositePartValid3_0165 oppositeHistoryChunk0165
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
