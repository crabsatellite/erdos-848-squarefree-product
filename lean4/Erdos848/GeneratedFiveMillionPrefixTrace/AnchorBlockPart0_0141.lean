import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0141

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0141 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 144384
  | _ => True

theorem anchorPart0_0141 : anchorPartValid0_0141 anchorHistoryChunk0141 := by
  unfold anchorPartValid0_0141 anchorHistoryChunk0141
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
