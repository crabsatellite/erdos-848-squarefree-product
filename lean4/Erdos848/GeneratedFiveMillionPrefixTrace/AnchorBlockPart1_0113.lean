import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0113

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0113 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 115840
  | _ => True

theorem anchorPart1_0113 : anchorPartValid1_0113 anchorHistoryChunk0113 := by
  unfold anchorPartValid1_0113 anchorHistoryChunk0113
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
