.class public final Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;
.super Ljava/lang/Object;
.source "TermsOfServiceJson.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0018B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0001H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0016\u0010\u0004\u001a\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;",
        "",
        "score",
        "",
        "classification",
        "match",
        "Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;",
        "(ILjava/lang/Object;Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;)V",
        "getClassification",
        "()Ljava/lang/Object;",
        "getMatch",
        "()Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;",
        "getScore",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "Match",
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
.field private final classification:Ljava/lang/Object;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "class"
    .end annotation
.end field

.field private final match:Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

.field private final score:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4e7c1a0a6c2283d8L    # -3.6038484803242305E-70

    const/16 v2, 0x1e

    const-string v3, "com/duckduckgo/app/privacymonitor/api/TermsOfServiceJson"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(ILjava/lang/Object;Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;)V
    .locals 3
    .param p1, "score"    # I
    .param p2, "classification"    # Ljava/lang/Object;
    .param p3, "match"    # Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "classification"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "match"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->score:I

    iput-object p2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->classification:Ljava/lang/Object;

    iput-object p3, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->match:Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static synthetic copy$default(Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;ILjava/lang/Object;Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;ILjava/lang/Object;)Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object p5

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x9

    aput-boolean v1, p5, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->score:I

    const/16 v0, 0xa

    aput-boolean v1, p5, v0

    :goto_0
    and-int/lit8 v0, p4, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0xb

    aput-boolean v1, p5, v0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->classification:Ljava/lang/Object;

    const/16 v0, 0xc

    aput-boolean v1, p5, v0

    :goto_1
    and-int/lit8 p4, p4, 0x4

    if-nez p4, :cond_2

    const/16 p4, 0xd

    aput-boolean v1, p5, p4

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->match:Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    const/16 p4, 0xe

    aput-boolean v1, p5, p4

    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->copy(ILjava/lang/Object;Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;)Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;

    move-result-object p0

    const/16 p1, 0xf

    aput-boolean v1, p5, p1

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object v0

    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->score:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final component2()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->classification:Ljava/lang/Object;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component3()Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->match:Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final copy(ILjava/lang/Object;Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;)Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "classification"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "match"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;

    invoke-direct {v1, p1, p2, p3}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;-><init>(ILjava/lang/Object;Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;)V

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    const/16 p1, 0x16

    aput-boolean v1, v0, p1

    goto :goto_1

    :cond_0
    instance-of v2, p1, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;

    if-nez v2, :cond_1

    const/16 p1, 0x17

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->score:I

    iget v3, p1, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->score:I

    if-eq v2, v3, :cond_2

    const/16 p1, 0x18

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->classification:Ljava/lang/Object;

    iget-object v3, p1, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->classification:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 p1, 0x19

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->match:Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    iget-object p1, p1, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->match:Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x1a

    aput-boolean v1, v0, p1

    :goto_0
    const/4 p1, 0x0

    const/16 v2, 0x1d

    aput-boolean v1, v0, v2

    return p1

    :cond_4
    const/16 p1, 0x1b

    aput-boolean v1, v0, p1

    :goto_1
    const/16 p1, 0x1c

    aput-boolean v1, v0, p1

    return v1
.end method

.method public final getClassification()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->classification:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public final getMatch()Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->match:Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getScore()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->score:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public hashCode()I
    .locals 6

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object v0

    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->score:I

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->classification:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v5, 0x11

    aput-boolean v4, v0, v5

    goto :goto_0

    :cond_0
    const/16 v2, 0x12

    aput-boolean v4, v0, v2

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->match:Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/16 v2, 0x13

    aput-boolean v4, v0, v2

    goto :goto_1

    :cond_1
    const/16 v2, 0x14

    aput-boolean v4, v0, v2

    :goto_1
    add-int/2addr v1, v3

    const/16 v2, 0x15

    aput-boolean v4, v0, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TermsOfServiceJson(score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->score:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", classification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->classification:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", match="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;->match:Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
