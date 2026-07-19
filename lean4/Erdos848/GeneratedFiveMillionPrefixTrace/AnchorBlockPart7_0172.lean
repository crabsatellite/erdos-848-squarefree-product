import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0172

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0172 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 177024
  | _ => True

theorem anchorPart7_0172 : anchorPartValid7_0172 anchorHistoryChunk0172 := by
  unfold anchorPartValid7_0172 anchorHistoryChunk0172
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
