import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0141

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0141 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 144384
  | _ => True

theorem oppositePart0_0141 : oppositePartValid0_0141 oppositeHistoryChunk0141 := by
  unfold oppositePartValid0_0141 oppositeHistoryChunk0141
  decide

def oppositePartValid1_0141 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 144512
  | _ => True

theorem oppositePart1_0141 : oppositePartValid1_0141 oppositeHistoryChunk0141 := by
  unfold oppositePartValid1_0141 oppositeHistoryChunk0141
  decide

def oppositePartValid2_0141 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 144640
  | _ => True

theorem oppositePart2_0141 : oppositePartValid2_0141 oppositeHistoryChunk0141 := by
  unfold oppositePartValid2_0141 oppositeHistoryChunk0141
  decide

def oppositePartValid3_0141 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 144768
  | _ => True

theorem oppositePart3_0141 : oppositePartValid3_0141 oppositeHistoryChunk0141 := by
  unfold oppositePartValid3_0141 oppositeHistoryChunk0141
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
