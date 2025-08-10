.class final Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;
.super Ljava/lang/Object;
.source "TrackerDataLoader.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->loadDisconnectData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3753ebaf26c0398bL    # 3.573089808520087E-42

    const/4 v2, 0x5

    const-string v3, "com/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;->this$0:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public final accept(Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;)V
    .locals 5
    .param p1, "response"    # Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    new-instance v1, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;

    sget-object v2, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->DISCONNECT:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-virtual {p1}, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;->getTrackers()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;-><init>(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;Ljava/util/List;)V

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    .line 71
    .local v1, "client":Lcom/duckduckgo/app/trackerdetection/DisconnectClient;
    iget-object v3, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;->this$0:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    invoke-static {v3}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->access$getTrackerDetector$p(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/duckduckgo/app/trackerdetection/Client;

    invoke-virtual {v3, v4}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->addClient(Lcom/duckduckgo/app/trackerdetection/Client;)V

    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    .line 72
    iget-object v3, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;->this$0:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    invoke-static {v3}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->access$getNetworkTrackers$p(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    move-result-object v3

    invoke-virtual {p1}, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;->getTrackers()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->updateData(Ljava/util/List;)V

    .line 73
    .end local v1    # "client":Lcom/duckduckgo/app/trackerdetection/DisconnectClient;
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    check-cast p1, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadDisconnectData$1;->accept(Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
