.class final Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2;
.super Ljava/lang/Object;
.source "TrackerDataLoader.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/duckduckgo/app/trackerdetection/AdBlockClient;",
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
        "client",
        "Lcom/duckduckgo/app/trackerdetection/AdBlockClient;",
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

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1a112ea6f47420aeL    # 4.043731398886046E-183

    const/4 v2, 0x3

    const-string v3, "com/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2;->this$0:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public final accept(Lcom/duckduckgo/app/trackerdetection/AdBlockClient;)V
    .locals 3
    .param p1, "client"    # Lcom/duckduckgo/app/trackerdetection/AdBlockClient;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2;->this$0:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    invoke-static {v1}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->access$getTrackerDetector$p(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    move-result-object v1

    const-string v2, "client"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcom/duckduckgo/app/trackerdetection/Client;

    invoke-virtual {v1, v2}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->addClient(Lcom/duckduckgo/app/trackerdetection/Client;)V

    .line 59
    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    check-cast p1, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$2;->accept(Lcom/duckduckgo/app/trackerdetection/AdBlockClient;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
