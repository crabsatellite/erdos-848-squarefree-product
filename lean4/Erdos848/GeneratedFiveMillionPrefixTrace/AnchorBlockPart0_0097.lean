import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0097

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0097 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 99328
  | _ => True

theorem anchorPart0_0097 : anchorPartValid0_0097 anchorHistoryChunk0097 := by
  unfold anchorPartValid0_0097 anchorHistoryChunk0097
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
