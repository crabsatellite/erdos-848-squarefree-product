import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0091

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0091 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 93184
  | _ => True

theorem oppositePart0_0091 : oppositePartValid0_0091 oppositeHistoryChunk0091 := by
  unfold oppositePartValid0_0091 oppositeHistoryChunk0091
  decide

def oppositePartValid1_0091 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 93312
  | _ => True

theorem oppositePart1_0091 : oppositePartValid1_0091 oppositeHistoryChunk0091 := by
  unfold oppositePartValid1_0091 oppositeHistoryChunk0091
  decide

def oppositePartValid2_0091 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 93440
  | _ => True

theorem oppositePart2_0091 : oppositePartValid2_0091 oppositeHistoryChunk0091 := by
  unfold oppositePartValid2_0091 oppositeHistoryChunk0091
  decide

def oppositePartValid3_0091 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 93568
  | _ => True

theorem oppositePart3_0091 : oppositePartValid3_0091 oppositeHistoryChunk0091 := by
  unfold oppositePartValid3_0091 oppositeHistoryChunk0091
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
