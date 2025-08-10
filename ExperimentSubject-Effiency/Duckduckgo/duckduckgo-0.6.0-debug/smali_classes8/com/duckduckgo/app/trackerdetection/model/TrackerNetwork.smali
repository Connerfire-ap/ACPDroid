.class public final Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;
.super Ljava/lang/Object;
.source "TrackerNetwork.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u0014\u001a\u00020\u0008H\u00c6\u0003J8\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;",
        "",
        "name",
        "",
        "url",
        "percentageOfPages",
        "",
        "isMajor",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V",
        "()Z",
        "getName",
        "()Ljava/lang/String;",
        "getPercentageOfPages",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getUrl",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;",
        "equals",
        "other",
        "hashCode",
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
.field private final isMajor:Z

.field private final name:Ljava/lang/String;

.field private final percentageOfPages:Ljava/lang/Integer;

.field private final url:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3691d46d856da230L    # 7.807770618614381E-46

    const/16 v2, 0x2d

    const-string v3, "com/duckduckgo/app/trackerdetection/model/TrackerNetwork"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "percentageOfPages"    # Ljava/lang/Integer;
    .param p4, "isMajor"    # Z

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->percentageOfPages:Ljava/lang/Integer;

    iput-boolean p4, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->isMajor:Z

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object p6

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x6

    aput-boolean v1, p6, v0

    goto :goto_0

    .line 21
    :cond_0
    const/4 p3, 0x0

    check-cast p3, Ljava/lang/Integer;

    const/4 v0, 0x7

    aput-boolean v1, p6, v0

    :goto_0
    const/16 v0, 0x8

    and-int/2addr p5, v0

    if-nez p5, :cond_1

    aput-boolean v1, p6, v0

    goto :goto_1

    :cond_1
    const/16 p4, 0x9

    aput-boolean v1, p6, p4

    .line 22
    const/4 p4, 0x0

    const/16 p5, 0xa

    aput-boolean v1, p6, p5

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/16 p1, 0xb

    aput-boolean v1, p6, p1

    return-void
.end method

.method public static synthetic copy$default(Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object p6

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x11

    aput-boolean v1, p6, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->name:Ljava/lang/String;

    const/16 v0, 0x12

    aput-boolean v1, p6, v0

    :goto_0
    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x13

    aput-boolean v1, p6, v0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->url:Ljava/lang/String;

    const/16 v0, 0x14

    aput-boolean v1, p6, v0

    :goto_1
    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_2

    const/16 v0, 0x15

    aput-boolean v1, p6, v0

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->percentageOfPages:Ljava/lang/Integer;

    const/16 v0, 0x16

    aput-boolean v1, p6, v0

    :goto_2
    and-int/lit8 p5, p5, 0x8

    if-nez p5, :cond_3

    const/16 p5, 0x17

    aput-boolean v1, p6, p5

    goto :goto_3

    :cond_3
    iget-boolean p4, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->isMajor:Z

    const/16 p5, 0x18

    aput-boolean v1, p6, p5

    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object p0

    const/16 p1, 0x19

    aput-boolean v1, p6, p1

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->name:Ljava/lang/String;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component2()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->url:Ljava/lang/String;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->percentageOfPages:Ljava/lang/Integer;

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component4()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    iget-boolean v1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->isMajor:Z

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    const/16 p1, 0x24

    aput-boolean v1, v0, p1

    goto :goto_1

    :cond_0
    instance-of v2, p1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    if-nez v2, :cond_1

    const/16 p1, 0x25

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 p1, 0x26

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 p1, 0x27

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->percentageOfPages:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->percentageOfPages:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 p1, 0x28

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->isMajor:Z

    iget-boolean p1, p1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->isMajor:Z

    if-eq v2, p1, :cond_5

    const/16 p1, 0x29

    aput-boolean v1, v0, p1

    :goto_0
    const/4 p1, 0x0

    const/16 v2, 0x2c

    aput-boolean v1, v0, v2

    return p1

    :cond_5
    const/16 p1, 0x2a

    aput-boolean v1, v0, p1

    :goto_1
    const/16 p1, 0x2b

    aput-boolean v1, v0, p1

    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->name:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getPercentageOfPages()Ljava/lang/Integer;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->percentageOfPages:Ljava/lang/Integer;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->url:Ljava/lang/String;

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public hashCode()I
    .locals 7

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->name:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v4, 0x1b

    aput-boolean v3, v0, v4

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    aput-boolean v3, v0, v1

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v5, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->url:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/16 v6, 0x1d

    aput-boolean v3, v0, v6

    goto :goto_1

    :cond_1
    const/16 v5, 0x1e

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    :goto_1
    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x1f

    iget-object v5, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->percentageOfPages:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v2

    aput-boolean v3, v0, v4

    goto :goto_2

    :cond_2
    const/16 v5, 0x20

    aput-boolean v3, v0, v5

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->isMajor:Z

    if-nez v2, :cond_3

    const/16 v4, 0x21

    aput-boolean v3, v0, v4

    goto :goto_3

    :cond_3
    const/16 v2, 0x22

    aput-boolean v3, v0, v2

    const/4 v2, 0x1

    :goto_3
    add-int/2addr v1, v2

    const/16 v2, 0x23

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final isMajor()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-boolean v1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->isMajor:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrackerNetwork(name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", percentageOfPages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->percentageOfPages:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isMajor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->isMajor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
