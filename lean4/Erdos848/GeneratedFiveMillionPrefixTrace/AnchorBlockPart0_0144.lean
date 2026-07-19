import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0144

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0144 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 147456
  | _ => True

theorem anchorPart0_0144 : anchorPartValid0_0144 anchorHistoryChunk0144 := by
  unfold anchorPartValid0_0144 anchorHistoryChunk0144
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
