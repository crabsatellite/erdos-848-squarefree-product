import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0179

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0179 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 183424
  | _ => True

theorem anchorPart1_0179 : anchorPartValid1_0179 anchorHistoryChunk0179 := by
  unfold anchorPartValid1_0179 anchorHistoryChunk0179
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
