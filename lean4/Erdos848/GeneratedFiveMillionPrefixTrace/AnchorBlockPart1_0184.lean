import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0184

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0184 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 188544
  | _ => True

theorem anchorPart1_0184 : anchorPartValid1_0184 anchorHistoryChunk0184 := by
  unfold anchorPartValid1_0184 anchorHistoryChunk0184
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
