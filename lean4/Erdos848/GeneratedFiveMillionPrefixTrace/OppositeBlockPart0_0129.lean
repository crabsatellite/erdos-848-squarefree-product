import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0129

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0129 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 132096
  | _ => True

theorem oppositePart0_0129 : oppositePartValid0_0129 oppositeHistoryChunk0129 := by
  unfold oppositePartValid0_0129 oppositeHistoryChunk0129
  decide

def oppositePartValid1_0129 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 132224
  | _ => True

theorem oppositePart1_0129 : oppositePartValid1_0129 oppositeHistoryChunk0129 := by
  unfold oppositePartValid1_0129 oppositeHistoryChunk0129
  decide

def oppositePartValid2_0129 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 132352
  | _ => True

theorem oppositePart2_0129 : oppositePartValid2_0129 oppositeHistoryChunk0129 := by
  unfold oppositePartValid2_0129 oppositeHistoryChunk0129
  decide

def oppositePartValid3_0129 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 132480
  | _ => True

theorem oppositePart3_0129 : oppositePartValid3_0129 oppositeHistoryChunk0129 := by
  unfold oppositePartValid3_0129 oppositeHistoryChunk0129
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
