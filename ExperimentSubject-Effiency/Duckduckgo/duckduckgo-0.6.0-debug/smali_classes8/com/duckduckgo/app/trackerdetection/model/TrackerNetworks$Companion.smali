.class public final Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;
.super Ljava/lang/Object;
.source "TrackerNetworks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;",
        "",
        "()V",
        "majorNetworks",
        "",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;",
        "[Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;",
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


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1eafbc5323cd8417L    # 7.054067951245884E-161

    const/4 v2, 0x2

    const-string v3, "com/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method
