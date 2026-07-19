import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0147

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0147 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 150528
  | _ => True

theorem oppositePart0_0147 : oppositePartValid0_0147 oppositeHistoryChunk0147 := by
  unfold oppositePartValid0_0147 oppositeHistoryChunk0147
  decide

def oppositePartValid1_0147 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 150656
  | _ => True

theorem oppositePart1_0147 : oppositePartValid1_0147 oppositeHistoryChunk0147 := by
  unfold oppositePartValid1_0147 oppositeHistoryChunk0147
  decide

def oppositePartValid2_0147 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 150784
  | _ => True

theorem oppositePart2_0147 : oppositePartValid2_0147 oppositeHistoryChunk0147 := by
  unfold oppositePartValid2_0147 oppositeHistoryChunk0147
  decide

def oppositePartValid3_0147 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 150912
  | _ => True

theorem oppositePart3_0147 : oppositePartValid3_0147 oppositeHistoryChunk0147 := by
  unfold oppositePartValid3_0147 oppositeHistoryChunk0147
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
