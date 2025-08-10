.class public interface abstract Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;
.super Ljava/lang/Object;
.source "PrivacyMonitor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0005\"\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0005R\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0013R\u0012\u0010\u001a\u001a\u00020\u001bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0012\u0010\u001e\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0013R\u0014\u0010 \u001a\u0004\u0018\u00010!X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0012\u0010$\u001a\u00020%X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\u00a8\u0006,"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;",
        "",
        "allTrackersBlocked",
        "",
        "getAllTrackersBlocked",
        "()Z",
        "hasHttpResources",
        "getHasHttpResources",
        "setHasHttpResources",
        "(Z)V",
        "hasObscureTracker",
        "getHasObscureTracker",
        "https",
        "Lcom/duckduckgo/app/privacymonitor/HttpsStatus;",
        "getHttps",
        "()Lcom/duckduckgo/app/privacymonitor/HttpsStatus;",
        "majorNetworkCount",
        "",
        "getMajorNetworkCount",
        "()I",
        "memberNetwork",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;",
        "getMemberNetwork",
        "()Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;",
        "networkCount",
        "getNetworkCount",
        "termsOfService",
        "Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
        "getTermsOfService",
        "()Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
        "trackerCount",
        "getTrackerCount",
        "uri",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "url",
        "",
        "getUrl",
        "()Ljava/lang/String;",
        "trackerDetected",
        "",
        "event",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract getAllTrackersBlocked()Z
.end method

.method public abstract getHasHttpResources()Z
.end method

.method public abstract getHasObscureTracker()Z
.end method

.method public abstract getHttps()Lcom/duckduckgo/app/privacymonitor/HttpsStatus;
.end method

.method public abstract getMajorNetworkCount()I
.end method

.method public abstract getMemberNetwork()Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;
.end method

.method public abstract getNetworkCount()I
.end method

.method public abstract getTermsOfService()Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
.end method

.method public abstract getTrackerCount()I
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract setHasHttpResources(Z)V
.end method

.method public abstract trackerDetected(Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;)V
.end method
