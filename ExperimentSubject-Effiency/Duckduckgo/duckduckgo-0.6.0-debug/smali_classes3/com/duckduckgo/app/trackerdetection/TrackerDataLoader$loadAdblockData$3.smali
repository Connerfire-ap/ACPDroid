.class final Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;
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
        "Ljava/lang/Throwable;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "error",
        "",
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

.field public static final INSTANCE:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x643f2851621a332cL    # 7.706194958081564E174

    const/4 v2, 0x4

    const-string v3, "com/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;

    invoke-direct {v1}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;-><init>()V

    sput-object v1, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;->INSTANCE:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;->accept(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader$loadAdblockData$3;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 61
    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method
