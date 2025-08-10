.class public final Lcom/duckduckgo/app/privacymonitor/SiteMonitor;
.super Ljava/lang/Object;
.source "SiteMonitor.kt"

# interfaces
.implements Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSiteMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SiteMonitor.kt\ncom/duckduckgo/app/privacymonitor/SiteMonitor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1412#2,9:84\n1642#2,2:93\n1421#2:95\n704#2:96\n777#2,2:97\n1412#2,9:99\n1642#2,2:108\n1421#2:110\n1550#2,3:111\n1847#2,3:114\n*E\n*S KotlinDebug\n*F\n+ 1 SiteMonitor.kt\ncom/duckduckgo/app/privacymonitor/SiteMonitor\n*L\n62#1,9:84\n62#1,2:93\n62#1:95\n68#1:96\n68#1,2:97\n69#1,9:99\n69#1,2:108\n69#1:110\n74#1,3:111\n78#1,3:114\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u00100\u001a\u00020\u0014H\u0002J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u00020)H\u0016R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\"\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000cR\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u001d\u0010\u001b\u001a\u0004\u0018\u00010\u001c8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001aR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0014\u0010%\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u001aR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010*\u001a\u0004\u0018\u00010+8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/\u00a8\u00064"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/SiteMonitor;",
        "Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;",
        "url",
        "",
        "termsOfService",
        "Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
        "trackerNetworks",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
        "(Ljava/lang/String;Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V",
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
        "memberNetwork$delegate",
        "Lkotlin/Lazy;",
        "networkCount",
        "getNetworkCount",
        "getTermsOfService",
        "()Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
        "trackerCount",
        "getTrackerCount",
        "trackingEvents",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;",
        "uri",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "getUrl",
        "()Ljava/lang/String;",
        "httpsStatus",
        "trackerDetected",
        "",
        "event",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private hasHttpResources:Z

.field private final memberNetwork$delegate:Lkotlin/Lazy;

.field private final termsOfService:Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

.field private final trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

.field private final trackingEvents:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x236cb399ed7f232bL    # -8.977182757598596E137

    const/16 v2, 0x4c

    const-string v3, "com/duckduckgo/app/privacymonitor/SiteMonitor"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "termsOfService"    # Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
    .param p3, "trackerNetworks"    # Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "termsOfService"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trackerNetworks"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x47

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->termsOfService:Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    iput-object p3, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    const/16 v1, 0x48

    aput-boolean v2, v0, v1

    .line 34
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->trackingEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v1, 0x49

    aput-boolean v2, v0, v1

    .line 53
    new-instance v1, Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;

    invoke-direct {v1, p0}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor$memberNetwork$2;-><init>(Lcom/duckduckgo/app/privacymonitor/SiteMonitor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->memberNetwork$delegate:Lkotlin/Lazy;

    const/16 v1, 0x4a

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static final synthetic access$getTrackerNetworks$p(Lcom/duckduckgo/app/privacymonitor/SiteMonitor;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;
    .locals 4
    .param p0, "$this"    # Lcom/duckduckgo/app/privacymonitor/SiteMonitor;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->trackerNetworks:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    const/16 v2, 0x4b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private final httpsStatus()Lcom/duckduckgo/app/privacymonitor/HttpsStatus;
    .locals 5

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v3, 0x5

    aput-boolean v2, v0, v3

    .line 46
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Lcom/duckduckgo/app/global/UriExtensionKt;->isHttps(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    aput-boolean v2, v0, v3

    .line 47
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->getHasHttpResources()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->MIXED:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    const/4 v4, 0x7

    aput-boolean v2, v0, v4

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->SECURE:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    const/16 v4, 0x8

    aput-boolean v2, v0, v4

    :goto_0
    const/16 v4, 0x9

    aput-boolean v2, v0, v4

    return-object v3

    .line 50
    :cond_1
    sget-object v3, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->NONE:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    const/16 v4, 0xa

    aput-boolean v2, v0, v4

    return-object v3

    .line 44
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    sget-object v1, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->NONE:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    const/4 v3, 0x4

    aput-boolean v2, v0, v3

    return-object v1
.end method


# virtual methods
.method public getAllTrackersBlocked()Z
    .locals 10

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->trackingEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .local v2, "$i$f$none":I
    const/16 v3, 0x37

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 114
    instance-of v3, v1, Ljava/util/Collection;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const/16 v3, 0x38

    aput-boolean v4, v0, v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x39

    aput-boolean v4, v0, v3

    .line 115
    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v6, 0x3b

    aput-boolean v4, v0, v6

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;

    .local v7, "it":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    const/4 v8, 0x0

    .local v8, "$i$a$-none-SiteMonitor$allTrackersBlocked$1":I
    const/16 v9, 0x3c

    aput-boolean v4, v0, v9

    .line 78
    invoke-virtual {v7}, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;->getBlocked()Z

    move-result v9

    if-nez v9, :cond_1

    const/16 v9, 0x3d

    aput-boolean v4, v0, v9

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/16 v9, 0x3e

    aput-boolean v4, v0, v9

    const/4 v7, 0x0

    .end local v7    # "it":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    .end local v8    # "$i$a$-none-SiteMonitor$allTrackersBlocked$1":I
    :goto_2
    if-nez v7, :cond_2

    const/16 v7, 0x3f

    aput-boolean v4, v0, v7

    goto :goto_1

    :cond_2
    const/16 v3, 0x40

    aput-boolean v4, v0, v3

    goto :goto_3

    .line 116
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/16 v3, 0x41

    aput-boolean v4, v0, v3

    const/4 v5, 0x1

    goto :goto_3

    .line 114
    :cond_4
    const/16 v3, 0x3a

    aput-boolean v4, v0, v3

    const/4 v5, 0x1

    .line 78
    .end local v1    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$none":I
    :goto_3
    const/16 v1, 0x42

    aput-boolean v4, v0, v1

    return v5
.end method

.method public getHasHttpResources()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iget-boolean v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->hasHttpResources:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getHasObscureTracker()Z
    .locals 11

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->trackingEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .local v2, "$i$f$any":I
    const/16 v3, 0x2d

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 111
    instance-of v3, v1, Ljava/util/Collection;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const/16 v3, 0x2e

    aput-boolean v4, v0, v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x2f

    aput-boolean v4, v0, v3

    .line 112
    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v6, 0x31

    aput-boolean v4, v0, v6

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;

    .local v7, "it":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    const/4 v8, 0x0

    .local v8, "$i$a$-any-SiteMonitor$hasObscureTracker$1":I
    const/16 v9, 0x32

    aput-boolean v4, v0, v9

    .line 74
    invoke-virtual {v7}, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;->getTrackerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "Uri.parse(it.trackerUrl)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/duckduckgo/app/global/UriExtensionKt;->getHasIpHost(Landroid/net/Uri;)Z

    move-result v7

    .end local v7    # "it":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    .end local v8    # "$i$a$-any-SiteMonitor$hasObscureTracker$1":I
    if-nez v7, :cond_1

    const/16 v7, 0x33

    aput-boolean v4, v0, v7

    goto :goto_1

    :cond_1
    const/16 v3, 0x34

    aput-boolean v4, v0, v3

    const/4 v5, 0x1

    goto :goto_2

    .line 113
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/16 v3, 0x35

    aput-boolean v4, v0, v3

    goto :goto_2

    .line 111
    :cond_3
    const/16 v3, 0x30

    aput-boolean v4, v0, v3

    .line 74
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_2
    const/16 v1, 0x36

    aput-boolean v4, v0, v1

    return v5
.end method

.method public getHttps()Lcom/duckduckgo/app/privacymonitor/HttpsStatus;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->httpsStatus()Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getMajorNetworkCount()I
    .locals 18

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    nop

    .line 71
    nop

    .line 67
    nop

    .line 70
    nop

    .line 67
    nop

    .line 69
    nop

    .line 67
    nop

    .line 68
    nop

    .line 67
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->trackingEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v2, Ljava/lang/Iterable;

    .line 68
    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .local v3, "$i$f$filter":I
    const/16 v4, 0x18

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .local v7, "$i$f$filterTo":I
    const/16 v8, 0x19

    aput-boolean v5, v0, v8

    .line 97
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v9, 0x1a

    aput-boolean v5, v0, v9

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;

    .local v10, "it":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    const/4 v11, 0x0

    .local v11, "$i$a$-filter-SiteMonitor$majorNetworkCount$1":I
    const/16 v12, 0x1b

    aput-boolean v5, v0, v12

    .line 68
    invoke-virtual {v10}, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;->getTrackerNetwork()Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->isMajor()Z

    move-result v12

    const/16 v13, 0x1c

    aput-boolean v5, v0, v13

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    const/16 v13, 0x1d

    aput-boolean v5, v0, v13

    .end local v10    # "it":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    .end local v11    # "$i$a$-filter-SiteMonitor$majorNetworkCount$1":I
    :goto_1
    if-nez v12, :cond_1

    const/16 v10, 0x1e

    aput-boolean v5, v0, v10

    goto :goto_0

    :cond_1
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    const/16 v9, 0x1f

    aput-boolean v5, v0, v9

    goto :goto_0

    .line 98
    :cond_2
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 69
    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .local v3, "$i$f$mapNotNull":I
    const/16 v4, 0x20

    aput-boolean v5, v0, v4

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 107
    .local v7, "$i$f$mapNotNullTo":I
    move-object v8, v6

    .local v8, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .local v9, "$i$f$forEach":I
    const/16 v10, 0x21

    aput-boolean v5, v0, v10

    .line 108
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/16 v11, 0x22

    aput-boolean v5, v0, v11

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "element$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 107
    .local v13, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v14, v12

    check-cast v14, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;

    .local v14, "it":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    const/4 v15, 0x0

    .local v15, "$i$a$-mapNotNull-SiteMonitor$majorNetworkCount$2":I
    const/16 v16, 0x23

    aput-boolean v5, v0, v16

    .line 69
    invoke-virtual {v14}, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;->getTrackerNetwork()Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x24

    aput-boolean v5, v0, v17

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    const/16 v17, 0x25

    aput-boolean v5, v0, v17

    .end local v14    # "it":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    .end local v15    # "$i$a$-mapNotNull-SiteMonitor$majorNetworkCount$2":I
    :goto_3
    if-eqz v16, :cond_4

    move-object/from16 v14, v16

    .local v14, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    const/16 v16, 0x26

    aput-boolean v5, v0, v16

    .line 107
    invoke-interface {v4, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v14    # "it$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    const/16 v14, 0x27

    aput-boolean v5, v0, v14

    goto :goto_4

    :cond_4
    const/16 v14, 0x28

    aput-boolean v5, v0, v14

    .end local v11    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :goto_4
    const/16 v11, 0x29

    aput-boolean v5, v0, v11

    goto :goto_2

    .line 109
    :cond_5
    nop

    .line 110
    .end local v8    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapNotNullTo":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .end local v2    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapNotNull":I
    check-cast v2, Ljava/lang/Iterable;

    const/16 v3, 0x2a

    aput-boolean v5, v0, v3

    .line 70
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    const/16 v3, 0x2b

    aput-boolean v5, v0, v3

    .line 71
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/16 v3, 0x2c

    aput-boolean v5, v0, v3

    return v2
.end method

.method public getMemberNetwork()Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->memberNetwork$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getNetworkCount()I
    .locals 17

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    nop

    .line 64
    nop

    .line 61
    nop

    .line 63
    nop

    .line 61
    nop

    .line 62
    nop

    .line 61
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->trackingEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v2, Ljava/lang/Iterable;

    .line 62
    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .local v3, "$i$f$mapNotNull":I
    const/16 v4, 0xd

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 92
    .local v7, "$i$f$mapNotNullTo":I
    move-object v8, v6

    .local v8, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .local v9, "$i$f$forEach":I
    const/16 v10, 0xe

    aput-boolean v5, v0, v10

    .line 93
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/16 v11, 0xf

    aput-boolean v5, v0, v11

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "element$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 92
    .local v13, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v14, v12

    check-cast v14, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;

    .local v14, "it":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    const/4 v15, 0x0

    .local v15, "$i$a$-mapNotNull-SiteMonitor$networkCount$1":I
    const/16 v16, 0x10

    aput-boolean v5, v0, v16

    .line 62
    invoke-virtual {v14}, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;->getTrackerNetwork()Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v14

    .end local v14    # "it":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    .end local v15    # "$i$a$-mapNotNull-SiteMonitor$networkCount$1":I
    if-eqz v14, :cond_0

    .local v14, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    const/16 v16, 0x11

    aput-boolean v5, v0, v16

    .line 92
    invoke-interface {v4, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v14    # "it$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    const/16 v14, 0x12

    aput-boolean v5, v0, v14

    goto :goto_1

    :cond_0
    const/16 v14, 0x13

    aput-boolean v5, v0, v14

    .end local v11    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :goto_1
    const/16 v11, 0x14

    aput-boolean v5, v0, v11

    goto :goto_0

    .line 94
    :cond_1
    nop

    .line 95
    .end local v8    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapNotNullTo":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .end local v2    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapNotNull":I
    check-cast v2, Ljava/lang/Iterable;

    const/16 v3, 0x15

    aput-boolean v5, v0, v3

    .line 63
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    const/16 v3, 0x16

    aput-boolean v5, v0, v3

    .line 64
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/16 v3, 0x17

    aput-boolean v5, v0, v3

    return v2
.end method

.method public getTermsOfService()Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->termsOfService:Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    const/16 v2, 0x46

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTrackerCount()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->trackingEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->url:Ljava/lang/String;

    const/16 v2, 0x45

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setHasHttpResources(Z)V
    .locals 2
    .param p1, "<set-?>"    # Z

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iput-boolean p1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->hasHttpResources:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method

.method public trackerDetected(Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x43

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 81
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/SiteMonitor;->trackingEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const/16 v1, 0x44

    aput-boolean v2, v0, v1

    return-void
.end method
