import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0011

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 11264
  | _ => True

theorem oppositePart0_0011 : oppositePartValid0_0011 oppositeHistoryChunk0011 := by
  unfold oppositePartValid0_0011 oppositeHistoryChunk0011
  decide

def oppositePartValid1_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 11392
  | _ => True

theorem oppositePart1_0011 : oppositePartValid1_0011 oppositeHistoryChunk0011 := by
  unfold oppositePartValid1_0011 oppositeHistoryChunk0011
  decide

def oppositePartValid2_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 11520
  | _ => True

theorem oppositePart2_0011 : oppositePartValid2_0011 oppositeHistoryChunk0011 := by
  unfold oppositePartValid2_0011 oppositeHistoryChunk0011
  decide

def oppositePartValid3_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 11648
  | _ => True

theorem oppositePart3_0011 : oppositePartValid3_0011 oppositeHistoryChunk0011 := by
  unfold oppositePartValid3_0011 oppositeHistoryChunk0011
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
