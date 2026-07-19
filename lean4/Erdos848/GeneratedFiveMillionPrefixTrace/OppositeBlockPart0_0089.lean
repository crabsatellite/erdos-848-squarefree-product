import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0089

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0089 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 91136
  | _ => True

theorem oppositePart0_0089 : oppositePartValid0_0089 oppositeHistoryChunk0089 := by
  unfold oppositePartValid0_0089 oppositeHistoryChunk0089
  decide

def oppositePartValid1_0089 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 91264
  | _ => True

theorem oppositePart1_0089 : oppositePartValid1_0089 oppositeHistoryChunk0089 := by
  unfold oppositePartValid1_0089 oppositeHistoryChunk0089
  decide

def oppositePartValid2_0089 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 91392
  | _ => True

theorem oppositePart2_0089 : oppositePartValid2_0089 oppositeHistoryChunk0089 := by
  unfold oppositePartValid2_0089 oppositeHistoryChunk0089
  decide

def oppositePartValid3_0089 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 91520
  | _ => True

theorem oppositePart3_0089 : oppositePartValid3_0089 oppositeHistoryChunk0089 := by
  unfold oppositePartValid3_0089 oppositeHistoryChunk0089
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
