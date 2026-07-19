import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0016

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 16384
  | _ => True

theorem oppositePart0_0016 : oppositePartValid0_0016 oppositeHistoryChunk0016 := by
  unfold oppositePartValid0_0016 oppositeHistoryChunk0016
  decide

def oppositePartValid1_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 16512
  | _ => True

theorem oppositePart1_0016 : oppositePartValid1_0016 oppositeHistoryChunk0016 := by
  unfold oppositePartValid1_0016 oppositeHistoryChunk0016
  decide

def oppositePartValid2_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 16640
  | _ => True

theorem oppositePart2_0016 : oppositePartValid2_0016 oppositeHistoryChunk0016 := by
  unfold oppositePartValid2_0016 oppositeHistoryChunk0016
  decide

def oppositePartValid3_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 16768
  | _ => True

theorem oppositePart3_0016 : oppositePartValid3_0016 oppositeHistoryChunk0016 := by
  unfold oppositePartValid3_0016 oppositeHistoryChunk0016
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
