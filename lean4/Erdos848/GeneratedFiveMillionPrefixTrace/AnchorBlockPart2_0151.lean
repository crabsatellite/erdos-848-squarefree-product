import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0151

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0151 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 154880
  | _ => True

theorem anchorPart2_0151 : anchorPartValid2_0151 anchorHistoryChunk0151 := by
  unfold anchorPartValid2_0151 anchorHistoryChunk0151
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
