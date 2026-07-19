import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0002

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0002 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 2176
  | _ => True

theorem anchorPart1_0002 : anchorPartValid1_0002 anchorHistoryChunk0002 := by
  unfold anchorPartValid1_0002 anchorHistoryChunk0002
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
