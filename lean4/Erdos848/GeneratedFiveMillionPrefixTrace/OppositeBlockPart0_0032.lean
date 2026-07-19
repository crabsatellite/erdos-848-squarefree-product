import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0032

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 32768
  | _ => True

theorem oppositePart0_0032 : oppositePartValid0_0032 oppositeHistoryChunk0032 := by
  unfold oppositePartValid0_0032 oppositeHistoryChunk0032
  decide

def oppositePartValid1_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 32896
  | _ => True

theorem oppositePart1_0032 : oppositePartValid1_0032 oppositeHistoryChunk0032 := by
  unfold oppositePartValid1_0032 oppositeHistoryChunk0032
  decide

def oppositePartValid2_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 33024
  | _ => True

theorem oppositePart2_0032 : oppositePartValid2_0032 oppositeHistoryChunk0032 := by
  unfold oppositePartValid2_0032 oppositeHistoryChunk0032
  decide

def oppositePartValid3_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 33152
  | _ => True

theorem oppositePart3_0032 : oppositePartValid3_0032 oppositeHistoryChunk0032 := by
  unfold oppositePartValid3_0032 oppositeHistoryChunk0032
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
