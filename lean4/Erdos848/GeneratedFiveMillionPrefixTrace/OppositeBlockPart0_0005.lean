import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0005

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 5120
  | _ => True

theorem oppositePart0_0005 : oppositePartValid0_0005 oppositeHistoryChunk0005 := by
  unfold oppositePartValid0_0005 oppositeHistoryChunk0005
  decide

def oppositePartValid1_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 5248
  | _ => True

theorem oppositePart1_0005 : oppositePartValid1_0005 oppositeHistoryChunk0005 := by
  unfold oppositePartValid1_0005 oppositeHistoryChunk0005
  decide

def oppositePartValid2_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 5376
  | _ => True

theorem oppositePart2_0005 : oppositePartValid2_0005 oppositeHistoryChunk0005 := by
  unfold oppositePartValid2_0005 oppositeHistoryChunk0005
  decide

def oppositePartValid3_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 5504
  | _ => True

theorem oppositePart3_0005 : oppositePartValid3_0005 oppositeHistoryChunk0005 := by
  unfold oppositePartValid3_0005 oppositeHistoryChunk0005
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
