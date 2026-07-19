import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0134

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0134 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 137344
  | _ => True

theorem anchorPart1_0134 : anchorPartValid1_0134 anchorHistoryChunk0134 := by
  unfold anchorPartValid1_0134 anchorHistoryChunk0134
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
