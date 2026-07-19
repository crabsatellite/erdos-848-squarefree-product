import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0177

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0177 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 182144
  | _ => True

theorem anchorPart7_0177 : anchorPartValid7_0177 anchorHistoryChunk0177 := by
  unfold anchorPartValid7_0177 anchorHistoryChunk0177
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
