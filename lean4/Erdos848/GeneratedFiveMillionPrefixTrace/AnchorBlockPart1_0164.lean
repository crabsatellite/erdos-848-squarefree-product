import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0164

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0164 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 168064
  | _ => True

theorem anchorPart1_0164 : anchorPartValid1_0164 anchorHistoryChunk0164 := by
  unfold anchorPartValid1_0164 anchorHistoryChunk0164
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
