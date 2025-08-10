.class public final Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;
.super Ljava/lang/Object;
.source "DisconnectListJson.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;",
        "",
        "()V",
        "trackers",
        "",
        "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
        "getTrackers",
        "()Ljava/util/List;",
        "setTrackers",
        "(Ljava/util/List;)V",
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
.field public trackers:Ljava/util/List;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1fff168742cae582L    # -2.83441035879169E154

    const/4 v2, 0x5

    const-string v3, "com/duckduckgo/app/trackerdetection/api/DisconnectListJson"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public final getTrackers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;->trackers:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "trackers"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    aput-boolean v2, v0, v2

    :goto_0
    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method public final setTrackers(Ljava/util/List;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJson;->trackers:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
