import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0059

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 60416
  | _ => True

theorem oppositePart0_0059 : oppositePartValid0_0059 oppositeHistoryChunk0059 := by
  unfold oppositePartValid0_0059 oppositeHistoryChunk0059
  decide

def oppositePartValid1_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 60544
  | _ => True

theorem oppositePart1_0059 : oppositePartValid1_0059 oppositeHistoryChunk0059 := by
  unfold oppositePartValid1_0059 oppositeHistoryChunk0059
  decide

def oppositePartValid2_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 60672
  | _ => True

theorem oppositePart2_0059 : oppositePartValid2_0059 oppositeHistoryChunk0059 := by
  unfold oppositePartValid2_0059 oppositeHistoryChunk0059
  decide

def oppositePartValid3_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 60800
  | _ => True

theorem oppositePart3_0059 : oppositePartValid3_0059 oppositeHistoryChunk0059 := by
  unfold oppositePartValid3_0059 oppositeHistoryChunk0059
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
