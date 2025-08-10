.class public final Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;
.super Ljava/lang/Object;
.source "DisconnectTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
        "",
        "url",
        "",
        "category",
        "networkName",
        "networkUrl",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getCategory",
        "()Ljava/lang/String;",
        "getNetworkName",
        "getNetworkUrl",
        "getUrl",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final category:Ljava/lang/String;

.field private final networkName:Ljava/lang/String;

.field private final networkUrl:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x75e7fcf019d4574L

    const/16 v2, 0x27

    const-string v3, "com/duckduckgo/app/trackerdetection/model/DisconnectTracker"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "networkName"    # Ljava/lang/String;
    .param p4, "networkUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "category"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "networkName"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "networkUrl"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->category:Ljava/lang/String;

    iput-object p3, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkName:Ljava/lang/String;

    iput-object p4, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkUrl:Ljava/lang/String;

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static synthetic copy$default(Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object p6

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0xb

    aput-boolean v1, p6, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->url:Ljava/lang/String;

    const/16 v0, 0xc

    aput-boolean v1, p6, v0

    :goto_0
    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0xd

    aput-boolean v1, p6, v0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->category:Ljava/lang/String;

    const/16 v0, 0xe

    aput-boolean v1, p6, v0

    :goto_1
    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_2

    const/16 v0, 0xf

    aput-boolean v1, p6, v0

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkName:Ljava/lang/String;

    const/16 v0, 0x10

    aput-boolean v1, p6, v0

    :goto_2
    and-int/lit8 p5, p5, 0x8

    if-nez p5, :cond_3

    const/16 p5, 0x11

    aput-boolean v1, p6, p5

    goto :goto_3

    :cond_3
    iget-object p4, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkUrl:Ljava/lang/String;

    const/16 p5, 0x12

    aput-boolean v1, p6, p5

    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;

    move-result-object p0

    const/16 p1, 0x13

    aput-boolean v1, p6, p1

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->url:Ljava/lang/String;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component2()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->category:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component3()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkName:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component4()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkUrl:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "category"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "networkName"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "networkUrl"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    const/16 p1, 0x1e

    aput-boolean v1, v0, p1

    goto :goto_1

    :cond_0
    instance-of v2, p1, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;

    if-nez v2, :cond_1

    const/16 p1, 0x1f

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;

    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 p1, 0x20

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->category:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 p1, 0x21

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkName:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 p1, 0x22

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkUrl:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0x23

    aput-boolean v1, v0, p1

    :goto_0
    const/4 p1, 0x0

    const/16 v2, 0x26

    aput-boolean v1, v0, v2

    return p1

    :cond_5
    const/16 p1, 0x24

    aput-boolean v1, v0, p1

    :goto_1
    const/16 p1, 0x25

    aput-boolean v1, v0, p1

    return v1
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->category:Ljava/lang/String;

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public final getNetworkName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkName:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getNetworkUrl()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkUrl:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->url:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public hashCode()I
    .locals 6

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->url:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v4, 0x15

    aput-boolean v3, v0, v4

    goto :goto_0

    :cond_0
    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    const/4 v1, 0x0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->category:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/16 v5, 0x17

    aput-boolean v3, v0, v5

    goto :goto_1

    :cond_1
    const/16 v4, 0x18

    aput-boolean v3, v0, v4

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkName:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/16 v5, 0x19

    aput-boolean v3, v0, v5

    goto :goto_2

    :cond_2
    const/16 v4, 0x1a

    aput-boolean v3, v0, v4

    const/4 v4, 0x0

    :goto_2
    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkUrl:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v4, 0x1b

    aput-boolean v3, v0, v4

    goto :goto_3

    :cond_3
    const/16 v4, 0x1c

    aput-boolean v3, v0, v4

    :goto_3
    add-int/2addr v1, v2

    const/16 v2, 0x1d

    aput-boolean v3, v0, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisconnectTracker(url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", networkName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", networkUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->networkUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
