import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0100

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0100 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102400
  | _ => True

theorem outsideMarkerPart0_0100 : outsideMarkerPartValid0_0100 outsideHistoryChunk0100 := by
  unfold outsideMarkerPartValid0_0100 outsideHistoryChunk0100
  decide

def outsideMarkerPartValid1_0100 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102528
  | _ => True

theorem outsideMarkerPart1_0100 : outsideMarkerPartValid1_0100 outsideHistoryChunk0100 := by
  unfold outsideMarkerPartValid1_0100 outsideHistoryChunk0100
  decide

def outsideMarkerPartValid2_0100 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102656
  | _ => True

theorem outsideMarkerPart2_0100 : outsideMarkerPartValid2_0100 outsideHistoryChunk0100 := by
  unfold outsideMarkerPartValid2_0100 outsideHistoryChunk0100
  decide

def outsideMarkerPartValid3_0100 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102784
  | _ => True

theorem outsideMarkerPart3_0100 : outsideMarkerPartValid3_0100 outsideHistoryChunk0100 := by
  unfold outsideMarkerPartValid3_0100 outsideHistoryChunk0100
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
