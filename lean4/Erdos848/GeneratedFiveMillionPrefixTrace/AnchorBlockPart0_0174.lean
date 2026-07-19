import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0174

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0174 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 178176
  | _ => True

theorem anchorPart0_0174 : anchorPartValid0_0174 anchorHistoryChunk0174 := by
  unfold anchorPartValid0_0174 anchorHistoryChunk0174
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
