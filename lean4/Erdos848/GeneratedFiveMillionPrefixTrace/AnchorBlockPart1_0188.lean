import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0188

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0188 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 192640
  | _ => True

theorem anchorPart1_0188 : anchorPartValid1_0188 anchorHistoryChunk0188 := by
  unfold anchorPartValid1_0188 anchorHistoryChunk0188
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
