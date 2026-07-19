import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0151

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0151 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 154624
  | _ => True

theorem oppositePart0_0151 : oppositePartValid0_0151 oppositeHistoryChunk0151 := by
  unfold oppositePartValid0_0151 oppositeHistoryChunk0151
  decide

def oppositePartValid1_0151 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 154752
  | _ => True

theorem oppositePart1_0151 : oppositePartValid1_0151 oppositeHistoryChunk0151 := by
  unfold oppositePartValid1_0151 oppositeHistoryChunk0151
  decide

def oppositePartValid2_0151 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 154880
  | _ => True

theorem oppositePart2_0151 : oppositePartValid2_0151 oppositeHistoryChunk0151 := by
  unfold oppositePartValid2_0151 oppositeHistoryChunk0151
  decide

def oppositePartValid3_0151 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 155008
  | _ => True

theorem oppositePart3_0151 : oppositePartValid3_0151 oppositeHistoryChunk0151 := by
  unfold oppositePartValid3_0151 oppositeHistoryChunk0151
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
