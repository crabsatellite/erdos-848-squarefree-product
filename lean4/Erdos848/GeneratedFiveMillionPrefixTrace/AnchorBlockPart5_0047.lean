import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0047

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0047 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 48768
  | _ => True

theorem anchorPart5_0047 : anchorPartValid5_0047 anchorHistoryChunk0047 := by
  unfold anchorPartValid5_0047 anchorHistoryChunk0047
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
