.class final Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;
.super Ljava/lang/Object;
.source "TrackerDataLoader.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->loadAdblockData(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/duckduckgo/app/trackerdetection/AdBlockClient;",
        "responseBody",
        "Lokhttp3/ResponseBody;",
        "apply"
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
.field final synthetic $name:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

.field final synthetic this$0:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6bcaf2365faff4c0L    # 1.7717546234852809E211

    const/4 v2, 0x6

    const-string v3, "com/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)V
    .locals 1

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;->this$0:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    iput-object p2, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;->$name:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    const/4 p2, 0x1

    aput-boolean p2, v0, p1

    return-void
.end method


# virtual methods
.method public final apply(Lokhttp3/ResponseBody;)Lcom/duckduckgo/app/trackerdetection/AdBlockClient;
    .locals 6
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "responseBody"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    .line 51
    new-instance v2, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;

    iget-object v3, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;->$name:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-direct {v2, v3}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;-><init>(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)V

    const/4 v3, 0x2

    aput-boolean v1, v0, v3

    .line 52
    .local v2, "client":Lcom/duckduckgo/app/trackerdetection/AdBlockClient;
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v3

    const-string v4, "responseBody.bytes()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->loadBasicData([B)V

    const/4 v3, 0x3

    aput-boolean v1, v0, v3

    .line 53
    iget-object v3, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;->this$0:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    invoke-static {v3}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->access$getTrackerDataStore$p(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;

    move-result-object v3

    iget-object v4, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;->$name:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-virtual {v2}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->getProcessedData()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->saveData(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;[B)V

    .line 54
    const/4 v3, 0x4

    aput-boolean v1, v0, v3

    return-object v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$1;->apply(Lokhttp3/ResponseBody;)Lcom/duckduckgo/app/trackerdetection/AdBlockClient;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method
