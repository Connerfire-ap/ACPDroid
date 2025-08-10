.class public final Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;
.super Ljava/lang/Object;
.source "TrackerDataLoader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrackerDataLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackerDataLoader.kt\ncom/duckduckgo/app/trackerdetection/TrackerDataLoader\n*L\n1#1,78:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0006\u0010\u000f\u001a\u00020\u000cJ\u0008\u0010\u0010\u001a\u00020\u000cH\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;",
        "",
        "trackerDetector",
        "Lcom/duckduckgo/app/trackerdetection/TrackerDetector;",
        "trackerDataStore",
        "Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;",
        "trackerListService",
        "Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;",
        "networkTrackers",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
        "(Lcom/duckduckgo/app/trackerdetection/TrackerDetector;Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V",
        "loadAdblockData",
        "",
        "name",
        "Lcom/duckduckgo/app/trackerdetection/Client$ClientName;",
        "loadData",
        "loadDisconnectData",
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
.field private final networkTrackers:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

.field private final trackerDataStore:Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;

.field private final trackerDetector:Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

.field private final trackerListService:Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x34d497e08ec59958L    # -1.3125215988862928E54

    const/16 v2, 0x19

    const-string v3, "com/duckduckgo/app/trackerdetection/TrackerDataLoader"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/duckduckgo/app/trackerdetection/TrackerDetector;Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V
    .locals 3
    .param p1, "trackerDetector"    # Lcom/duckduckgo/app/trackerdetection/TrackerDetector;
    .param p2, "trackerDataStore"    # Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;
    .param p3, "trackerListService"    # Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;
    .param p4, "networkTrackers"    # Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "trackerDetector"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trackerDataStore"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trackerListService"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "networkTrackers"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->trackerDetector:Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    iput-object p2, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->trackerDataStore:Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;

    iput-object p3, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->trackerListService:Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    iput-object p4, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->networkTrackers:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static final synthetic access$getNetworkTrackers$p(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;
    .locals 4
    .param p0, "$this"    # Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->networkTrackers:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    const/16 v2, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static final synthetic access$getTrackerDataStore$p(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;
    .locals 4
    .param p0, "$this"    # Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->trackerDataStore:Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static final synthetic access$getTrackerDetector$p(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)Lcom/duckduckgo/app/trackerdetection/TrackerDetector;
    .locals 4
    .param p0, "$this"    # Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->trackerDetector:Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private final loadAdblockData(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)V
    .locals 6
    .param p1, "name"    # Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->trackerDataStore:Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;

    invoke-virtual {v1, p1}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->hasData(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 42
    new-instance v1, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;

    invoke-direct {v1, p1}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;-><init>(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)V

    const/4 v3, 0x4

    aput-boolean v2, v0, v3

    .line 43
    .local v1, "client":Lcom/duckduckgo/app/trackerdetection/AdBlockClient;
    iget-object v3, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->trackerDataStore:Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;

    invoke-virtual {v3, p1}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->loadData(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->loadProcessedData([B)V

    const/4 v3, 0x5

    aput-boolean v2, v0, v3

    .line 44
    iget-object v3, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->trackerDetector:Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    move-object v4, v1

    check-cast v4, Lcom/duckduckgo/app/trackerdetection/Client;

    invoke-virtual {v3, v4}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->addClient(Lcom/duckduckgo/app/trackerdetection/Client;)V

    .line 45
    const/4 v3, 0x6

    aput-boolean v2, v0, v3

    return-void

    .line 48
    .end local v1    # "client":Lcom/duckduckgo/app/trackerdetection/AdBlockClient;
    :cond_0
    nop

    .line 57
    nop

    .line 48
    nop

    .line 56
    nop

    .line 48
    nop

    .line 50
    nop

    .line 48
    nop

    .line 49
    nop

    .line 48
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->trackerListService:Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    invoke-virtual {p1}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    aput-boolean v2, v0, v4

    invoke-interface {v1, v3}, Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;->list(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v3, 0x9

    aput-boolean v2, v0, v3

    .line 49
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v3, 0xa

    aput-boolean v2, v0, v3

    .line 50
    new-instance v3, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;

    invoke-direct {v3, p0, p1}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;-><init>(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)V

    check-cast v3, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v3, 0xb

    aput-boolean v2, v0, v3

    .line 56
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v3, 0xc

    aput-boolean v2, v0, v3

    .line 57
    new-instance v3, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2;

    invoke-direct {v3, p0}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2;-><init>(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    .line 59
    sget-object v4, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;->INSTANCE:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;

    check-cast v4, Lio/reactivex/functions/Consumer;

    const/16 v5, 0xd

    aput-boolean v2, v0, v5

    .line 57
    invoke-virtual {v1, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 62
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    return-void

    .line 48
    :cond_1
    new-instance v1, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x7

    aput-boolean v2, v0, v3

    throw v1
.end method

.method private final loadDisconnectData()V
    .locals 6

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    nop

    .line 69
    nop

    .line 66
    nop

    .line 68
    nop

    .line 66
    nop

    .line 67
    nop

    .line 66
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->trackerListService:Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    invoke-interface {v1}, Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;->disconnect()Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 67
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0x10

    aput-boolean v3, v0, v2

    .line 68
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0x11

    aput-boolean v3, v0, v2

    .line 69
    new-instance v2, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;

    invoke-direct {v2, p0}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;-><init>(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 73
    sget-object v4, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$2;->INSTANCE:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$2;

    check-cast v4, Lio/reactivex/functions/Consumer;

    const/16 v5, 0x12

    aput-boolean v3, v0, v5

    .line 69
    invoke-virtual {v1, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 76
    const/16 v1, 0x13

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public final loadData()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    sget-object v1, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->EASYLIST:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-direct {p0, v1}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->loadAdblockData(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 35
    sget-object v1, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->EASYPRIVACY:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-direct {p0, v1}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->loadAdblockData(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)V

    aput-boolean v2, v0, v2

    .line 36
    invoke-direct {p0}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->loadDisconnectData()V

    .line 37
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method
