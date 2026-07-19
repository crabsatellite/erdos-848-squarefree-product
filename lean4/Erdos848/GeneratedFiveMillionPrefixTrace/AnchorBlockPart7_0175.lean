import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0175

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0175 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 180096
  | _ => True

theorem anchorPart7_0175 : anchorPartValid7_0175 anchorHistoryChunk0175 := by
  unfold anchorPartValid7_0175 anchorHistoryChunk0175
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
