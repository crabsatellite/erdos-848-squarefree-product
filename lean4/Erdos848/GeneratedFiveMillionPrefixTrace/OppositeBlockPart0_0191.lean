import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0191

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0191 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 195584
  | _ => True

theorem oppositePart0_0191 : oppositePartValid0_0191 oppositeHistoryChunk0191 := by
  unfold oppositePartValid0_0191 oppositeHistoryChunk0191
  decide

def oppositePartValid1_0191 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 195712
  | _ => True

theorem oppositePart1_0191 : oppositePartValid1_0191 oppositeHistoryChunk0191 := by
  unfold oppositePartValid1_0191 oppositeHistoryChunk0191
  decide

def oppositePartValid2_0191 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 195840
  | _ => True

theorem oppositePart2_0191 : oppositePartValid2_0191 oppositeHistoryChunk0191 := by
  unfold oppositePartValid2_0191 oppositeHistoryChunk0191
  decide

def oppositePartValid3_0191 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 195968
  | _ => True

theorem oppositePart3_0191 : oppositePartValid3_0191 oppositeHistoryChunk0191 := by
  unfold oppositePartValid3_0191 oppositeHistoryChunk0191
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
