import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0164

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0164 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 168192
  | _ => True

theorem anchorPart2_0164 : anchorPartValid2_0164 anchorHistoryChunk0164 := by
  unfold anchorPartValid2_0164 anchorHistoryChunk0164
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
