import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0075

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0075 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 77696
  | _ => True

theorem anchorPart7_0075 : anchorPartValid7_0075 anchorHistoryChunk0075 := by
  unfold anchorPartValid7_0075 anchorHistoryChunk0075
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
