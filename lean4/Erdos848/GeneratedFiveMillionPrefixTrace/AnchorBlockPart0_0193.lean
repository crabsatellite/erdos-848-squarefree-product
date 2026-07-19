import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0193

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0193 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 197632
  | _ => True

theorem anchorPart0_0193 : anchorPartValid0_0193 anchorHistoryChunk0193 := by
  unfold anchorPartValid0_0193 anchorHistoryChunk0193
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
