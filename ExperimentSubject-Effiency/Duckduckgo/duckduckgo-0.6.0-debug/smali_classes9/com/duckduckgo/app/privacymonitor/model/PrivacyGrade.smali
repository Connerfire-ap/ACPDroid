.class public final Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade;
.super Ljava/lang/Object;
.source "PrivacyGrade.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade;",
        "",
        "()V",
        "Companion",
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
.field private static transient synthetic $jacocoData:[Z = null

.field public static final A:J = 0x0L

.field public static final B:J = 0x1L

.field public static final C:J = 0x2L

.field public static final Companion:Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade$Companion;

.field public static final D:J = 0x3L

.field public static final E:J = 0x4L


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4ce2d300f06b9f0dL    # 2.4199501032421947E62

    const/4 v2, 0x2

    const-string v3, "com/duckduckgo/app/privacymonitor/model/PrivacyGrade"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade;->Companion:Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade$Companion;

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/model/PrivacyGrade;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
