import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0144

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0144 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 147584
  | _ => True

theorem anchorPart1_0144 : anchorPartValid1_0144 anchorHistoryChunk0144 := by
  unfold anchorPartValid1_0144 anchorHistoryChunk0144
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
