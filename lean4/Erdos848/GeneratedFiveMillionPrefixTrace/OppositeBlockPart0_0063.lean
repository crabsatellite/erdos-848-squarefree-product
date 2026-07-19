import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0063

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 64512
  | _ => True

theorem oppositePart0_0063 : oppositePartValid0_0063 oppositeHistoryChunk0063 := by
  unfold oppositePartValid0_0063 oppositeHistoryChunk0063
  decide

def oppositePartValid1_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 64640
  | _ => True

theorem oppositePart1_0063 : oppositePartValid1_0063 oppositeHistoryChunk0063 := by
  unfold oppositePartValid1_0063 oppositeHistoryChunk0063
  decide

def oppositePartValid2_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 64768
  | _ => True

theorem oppositePart2_0063 : oppositePartValid2_0063 oppositeHistoryChunk0063 := by
  unfold oppositePartValid2_0063 oppositeHistoryChunk0063
  decide

def oppositePartValid3_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 64896
  | _ => True

theorem oppositePart3_0063 : oppositePartValid3_0063 oppositeHistoryChunk0063 := by
  unfold oppositePartValid3_0063 oppositeHistoryChunk0063
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
