.class public final Lcom/duckduckgo/app/privacymonitor/model/TermsOfService$Companion;
.super Ljava/lang/Object;
.source "TermsOfService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/privacymonitor/model/TermsOfService$Companion$Practices;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/model/TermsOfService$Companion;",
        "",
        "()V",
        "GOOD",
        "",
        "MIXED",
        "POOR",
        "UNKNOWN",
        "Practices",
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

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService$Companion;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7ee46553ab26dc81L    # 1.7483426998811448E303

    const/4 v2, 0x2

    const-string v3, "com/duckduckgo/app/privacymonitor/model/TermsOfService$Companion"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService$Companion;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService$Companion;-><init>()V

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method
