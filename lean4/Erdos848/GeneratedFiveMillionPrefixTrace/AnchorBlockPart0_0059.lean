import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0059

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0059 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 60416
  | _ => True

theorem anchorPart0_0059 : anchorPartValid0_0059 anchorHistoryChunk0059 := by
  unfold anchorPartValid0_0059 anchorHistoryChunk0059
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
