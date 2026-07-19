import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0069

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0069 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 70912
  | _ => True

theorem anchorPart2_0069 : anchorPartValid2_0069 anchorHistoryChunk0069 := by
  unfold anchorPartValid2_0069 anchorHistoryChunk0069
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
