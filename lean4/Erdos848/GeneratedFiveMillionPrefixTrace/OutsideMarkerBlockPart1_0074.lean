import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0074

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76288
  | _ => True

theorem outsideMarkerPart4_0074 : outsideMarkerPartValid4_0074 outsideHistoryChunk0074 := by
  unfold outsideMarkerPartValid4_0074 outsideHistoryChunk0074
  decide

def outsideMarkerPartValid5_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76416
  | _ => True

theorem outsideMarkerPart5_0074 : outsideMarkerPartValid5_0074 outsideHistoryChunk0074 := by
  unfold outsideMarkerPartValid5_0074 outsideHistoryChunk0074
  decide

def outsideMarkerPartValid6_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76544
  | _ => True

theorem outsideMarkerPart6_0074 : outsideMarkerPartValid6_0074 outsideHistoryChunk0074 := by
  unfold outsideMarkerPartValid6_0074 outsideHistoryChunk0074
  decide

def outsideMarkerPartValid7_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76672
  | _ => True

theorem outsideMarkerPart7_0074 : outsideMarkerPartValid7_0074 outsideHistoryChunk0074 := by
  unfold outsideMarkerPartValid7_0074 outsideHistoryChunk0074
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
