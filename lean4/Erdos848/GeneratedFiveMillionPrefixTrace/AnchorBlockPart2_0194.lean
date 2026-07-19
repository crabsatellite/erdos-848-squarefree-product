import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0194

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0194 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 198912
  | _ => True

theorem anchorPart2_0194 : anchorPartValid2_0194 anchorHistoryChunk0194 := by
  unfold anchorPartValid2_0194 anchorHistoryChunk0194
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
