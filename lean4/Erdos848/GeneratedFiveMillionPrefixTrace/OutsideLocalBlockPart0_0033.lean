import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0033

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideLocalPartValid0_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart0_0033 : outsideLocalPartValid0_0033 outsideHistoryChunk0033 := by
  unfold outsideLocalPartValid0_0033 outsideHistoryChunk0033
  decide

def outsideLocalPartValid1_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart1_0033 : outsideLocalPartValid1_0033 outsideHistoryChunk0033 := by
  unfold outsideLocalPartValid1_0033 outsideHistoryChunk0033
  decide

def outsideLocalPartValid2_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart2_0033 : outsideLocalPartValid2_0033 outsideHistoryChunk0033 := by
  unfold outsideLocalPartValid2_0033 outsideHistoryChunk0033
  decide

def outsideLocalPartValid3_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart3_0033 : outsideLocalPartValid3_0033 outsideHistoryChunk0033 := by
  unfold outsideLocalPartValid3_0033 outsideHistoryChunk0033
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
