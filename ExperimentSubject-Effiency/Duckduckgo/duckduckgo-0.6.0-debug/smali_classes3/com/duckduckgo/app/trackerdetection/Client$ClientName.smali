.class public final enum Lcom/duckduckgo/app/trackerdetection/Client$ClientName;
.super Ljava/lang/Enum;
.source "Client.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/trackerdetection/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/duckduckgo/app/trackerdetection/Client$ClientName;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/Client$ClientName;",
        "",
        "(Ljava/lang/String;I)V",
        "EASYLIST",
        "EASYPRIVACY",
        "DISCONNECT",
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
.field private static final synthetic $VALUES:[Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

.field private static transient synthetic $jacocoData:[Z

.field public static final enum DISCONNECT:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

.field public static final enum EASYLIST:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

.field public static final enum EASYPRIVACY:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7ab055f269cebca5L

    const/4 v2, 0x4

    const-string v3, "com/duckduckgo/app/trackerdetection/Client$ClientName"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->$jacocoInit()[Z

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    new-instance v2, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    const-string v3, "EASYLIST"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->EASYLIST:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    aput-object v2, v1, v4

    new-instance v2, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    const-string v3, "EASYPRIVACY"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->EASYPRIVACY:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    aput-object v2, v1, v5

    new-instance v2, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    const-string v3, "DISCONNECT"

    const/4 v6, 0x2

    invoke-direct {v2, v3, v6}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->DISCONNECT:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    aput-object v2, v1, v6

    sput-object v1, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->$VALUES:[Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    aput-boolean v5, v0, v4

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/Client$ClientName;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->$jacocoInit()[Z

    move-result-object v0

    const-class v1, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p0
.end method

.method public static values()[Lcom/duckduckgo/app/trackerdetection/Client$ClientName;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->$jacocoInit()[Z

    move-result-object v0

    sget-object v1, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->$VALUES:[Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-virtual {v1}, [Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
