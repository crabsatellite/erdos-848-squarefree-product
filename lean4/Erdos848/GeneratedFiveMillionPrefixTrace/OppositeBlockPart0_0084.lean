import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0084

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 86016
  | _ => True

theorem oppositePart0_0084 : oppositePartValid0_0084 oppositeHistoryChunk0084 := by
  unfold oppositePartValid0_0084 oppositeHistoryChunk0084
  decide

def oppositePartValid1_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 86144
  | _ => True

theorem oppositePart1_0084 : oppositePartValid1_0084 oppositeHistoryChunk0084 := by
  unfold oppositePartValid1_0084 oppositeHistoryChunk0084
  decide

def oppositePartValid2_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 86272
  | _ => True

theorem oppositePart2_0084 : oppositePartValid2_0084 oppositeHistoryChunk0084 := by
  unfold oppositePartValid2_0084 oppositeHistoryChunk0084
  decide

def oppositePartValid3_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 86400
  | _ => True

theorem oppositePart3_0084 : oppositePartValid3_0084 oppositeHistoryChunk0084 := by
  unfold oppositePartValid3_0084 oppositeHistoryChunk0084
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
