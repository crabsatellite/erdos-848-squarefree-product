import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0161

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0161 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 165760
  | _ => True

theorem anchorPart7_0161 : anchorPartValid7_0161 anchorHistoryChunk0161 := by
  unfold anchorPartValid7_0161 anchorHistoryChunk0161
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
