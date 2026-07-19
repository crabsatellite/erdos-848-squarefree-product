import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0049

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0049 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 50304
  | _ => True

theorem anchorPart1_0049 : anchorPartValid1_0049 anchorHistoryChunk0049 := by
  unfold anchorPartValid1_0049 anchorHistoryChunk0049
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
