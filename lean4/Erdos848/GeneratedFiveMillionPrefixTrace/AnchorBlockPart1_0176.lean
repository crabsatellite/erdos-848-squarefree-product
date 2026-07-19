import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0176

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0176 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 180352
  | _ => True

theorem anchorPart1_0176 : anchorPartValid1_0176 anchorHistoryChunk0176 := by
  unfold anchorPartValid1_0176 anchorHistoryChunk0176
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
