.class public final Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;
.super Ljava/lang/Object;
.source "TrackerDataLoader_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final networkTrackersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
            ">;"
        }
    .end annotation
.end field

.field private final trackerDataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;",
            ">;"
        }
    .end annotation
.end field

.field private final trackerDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/TrackerDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final trackerListServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3e39fa3d25c26426L    # 6.048357006340497E-9

    const/16 v2, 0x8

    const-string v3, "com/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackerDetectorProvider",
            "trackerDataStoreProvider",
            "trackerListServiceProvider",
            "networkTrackersProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/TrackerDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
            ">;)V"
        }
    .end annotation

    .local p1, "trackerDetectorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/TrackerDetector;>;"
    .local p2, "trackerDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;>;"
    .local p3, "trackerListServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;>;"
    .local p4, "networkTrackersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;>;"
    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->trackerDetectorProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->trackerDataStoreProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->trackerListServiceProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p4, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->networkTrackersProvider:Ljavax/inject/Provider;

    .line 28
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackerDetectorProvider",
            "trackerDataStoreProvider",
            "trackerListServiceProvider",
            "networkTrackersProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/TrackerDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;",
            ">;"
        }
    .end annotation

    .local p0, "trackerDetectorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/TrackerDetector;>;"
    .local p1, "trackerDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;>;"
    .local p2, "trackerListServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;>;"
    .local p3, "networkTrackersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;>;"
    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    new-instance v1, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public get()Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;
    .locals 8

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    new-instance v1, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->trackerDetectorProvider:Ljavax/inject/Provider;

    const/4 v3, 0x1

    aput-boolean v3, v0, v3

    .line 33
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    iget-object v4, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->trackerDataStoreProvider:Ljavax/inject/Provider;

    const/4 v5, 0x2

    aput-boolean v3, v0, v5

    .line 34
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;

    iget-object v5, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->trackerListServiceProvider:Ljavax/inject/Provider;

    const/4 v6, 0x3

    aput-boolean v3, v0, v6

    .line 35
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    iget-object v6, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->networkTrackersProvider:Ljavax/inject/Provider;

    const/4 v7, 0x4

    aput-boolean v3, v0, v7

    .line 36
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;-><init>(Lcom/duckduckgo/app/trackerdetection/TrackerDetector;Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V

    .line 32
    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader_Factory;->get()Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
