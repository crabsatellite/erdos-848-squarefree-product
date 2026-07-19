import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0094

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 96256
  | _ => True

theorem oppositePart0_0094 : oppositePartValid0_0094 oppositeHistoryChunk0094 := by
  unfold oppositePartValid0_0094 oppositeHistoryChunk0094
  decide

def oppositePartValid1_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 96384
  | _ => True

theorem oppositePart1_0094 : oppositePartValid1_0094 oppositeHistoryChunk0094 := by
  unfold oppositePartValid1_0094 oppositeHistoryChunk0094
  decide

def oppositePartValid2_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 96512
  | _ => True

theorem oppositePart2_0094 : oppositePartValid2_0094 oppositeHistoryChunk0094 := by
  unfold oppositePartValid2_0094 oppositeHistoryChunk0094
  decide

def oppositePartValid3_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 96640
  | _ => True

theorem oppositePart3_0094 : oppositePartValid3_0094 oppositeHistoryChunk0094 := by
  unfold oppositePartValid3_0094 oppositeHistoryChunk0094
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
