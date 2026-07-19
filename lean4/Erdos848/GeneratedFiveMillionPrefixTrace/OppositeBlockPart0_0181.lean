import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0181

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0181 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 185344
  | _ => True

theorem oppositePart0_0181 : oppositePartValid0_0181 oppositeHistoryChunk0181 := by
  unfold oppositePartValid0_0181 oppositeHistoryChunk0181
  decide

def oppositePartValid1_0181 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 185472
  | _ => True

theorem oppositePart1_0181 : oppositePartValid1_0181 oppositeHistoryChunk0181 := by
  unfold oppositePartValid1_0181 oppositeHistoryChunk0181
  decide

def oppositePartValid2_0181 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 185600
  | _ => True

theorem oppositePart2_0181 : oppositePartValid2_0181 oppositeHistoryChunk0181 := by
  unfold oppositePartValid2_0181 oppositeHistoryChunk0181
  decide

def oppositePartValid3_0181 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 185728
  | _ => True

theorem oppositePart3_0181 : oppositePartValid3_0181 oppositeHistoryChunk0181 := by
  unfold oppositePartValid3_0181 oppositeHistoryChunk0181
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
