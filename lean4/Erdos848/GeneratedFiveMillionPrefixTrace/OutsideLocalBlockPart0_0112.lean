import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0112

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideLocalPartValid0_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart0_0112 : outsideLocalPartValid0_0112 outsideHistoryChunk0112 := by
  unfold outsideLocalPartValid0_0112 outsideHistoryChunk0112
  decide

def outsideLocalPartValid1_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart1_0112 : outsideLocalPartValid1_0112 outsideHistoryChunk0112 := by
  unfold outsideLocalPartValid1_0112 outsideHistoryChunk0112
  decide

def outsideLocalPartValid2_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart2_0112 : outsideLocalPartValid2_0112 outsideHistoryChunk0112 := by
  unfold outsideLocalPartValid2_0112 outsideHistoryChunk0112
  decide

def outsideLocalPartValid3_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart3_0112 : outsideLocalPartValid3_0112 outsideHistoryChunk0112 := by
  unfold outsideLocalPartValid3_0112 outsideHistoryChunk0112
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
