.class public final Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;
.super Ljava/lang/Object;
.source "TermsOfServiceJson.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Match"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0006J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J)\u0010\u000c\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0004H\u00d6\u0001R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;",
        "",
        "good",
        "",
        "",
        "bad",
        "(Ljava/util/List;Ljava/util/List;)V",
        "getBad",
        "()Ljava/util/List;",
        "getGood",
        "component1",
        "component2",
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
.field private final bad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final good:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x9c2830fc9f614cfL

    const/16 v2, 0x19

    const-string v3, "com/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "good"    # Ljava/util/List;
    .param p2, "bad"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "good"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bad"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->good:Ljava/util/List;

    iput-object p2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->bad:Ljava/util/List;

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static synthetic copy$default(Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoInit()[Z

    move-result-object p4

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aput-boolean v1, p4, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->good:Ljava/util/List;

    const/16 v0, 0x8

    aput-boolean v1, p4, v0

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_1

    const/16 p3, 0x9

    aput-boolean v1, p4, p3

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->bad:Ljava/util/List;

    const/16 p3, 0xa

    aput-boolean v1, p4, p3

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->copy(Ljava/util/List;Ljava/util/List;)Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    move-result-object p0

    const/16 p1, 0xb

    aput-boolean v1, p4, p1

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->good:Ljava/util/List;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component2()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->bad:Ljava/util/List;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;)Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "good"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bad"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    invoke-direct {v1, p1, p2}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoInit()[Z

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    const/16 p1, 0x12

    aput-boolean v1, v0, p1

    goto :goto_1

    :cond_0
    instance-of v2, p1, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    if-nez v2, :cond_1

    const/16 p1, 0x13

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->good:Ljava/util/List;

    iget-object v3, p1, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->good:Ljava/util/List;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 p1, 0x14

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->bad:Ljava/util/List;

    iget-object p1, p1, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->bad:Ljava/util/List;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x15

    aput-boolean v1, v0, p1

    :goto_0
    const/4 p1, 0x0

    const/16 v2, 0x18

    aput-boolean v1, v0, v2

    return p1

    :cond_3
    const/16 p1, 0x16

    aput-boolean v1, v0, p1

    :goto_1
    const/16 p1, 0x17

    aput-boolean v1, v0, p1

    return v1
.end method

.method public final getBad()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->bad:Ljava/util/List;

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public final getGood()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->good:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public hashCode()I
    .locals 5

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->good:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v4, 0xd

    aput-boolean v3, v0, v4

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    const/4 v1, 0x0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->bad:Ljava/util/List;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v4, 0xf

    aput-boolean v3, v0, v4

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    aput-boolean v3, v0, v4

    :goto_1
    add-int/2addr v1, v2

    const/16 v2, 0x11

    aput-boolean v3, v0, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Match(good="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->good:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", bad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/api/TermsOfServiceJson$Match;->bad:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
