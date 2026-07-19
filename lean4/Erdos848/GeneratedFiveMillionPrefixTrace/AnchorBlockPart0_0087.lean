import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0087

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0087 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 89088
  | _ => True

theorem anchorPart0_0087 : anchorPartValid0_0087 anchorHistoryChunk0087 := by
  unfold anchorPartValid0_0087 anchorHistoryChunk0087
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
