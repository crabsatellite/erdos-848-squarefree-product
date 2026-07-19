import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0028

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0028 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 28800
  | _ => True

theorem anchorPart1_0028 : anchorPartValid1_0028 anchorHistoryChunk0028 := by
  unfold anchorPartValid1_0028 anchorHistoryChunk0028
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
