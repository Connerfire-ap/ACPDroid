.class public final enum Lcom/duckduckgo/app/trackerdetection/model/ResourceType;
.super Ljava/lang/Enum;
.source "ResourceType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/duckduckgo/app/trackerdetection/model/ResourceType;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/model/ResourceType;",
        "",
        "filterOption",
        "",
        "(Ljava/lang/String;II)V",
        "getFilterOption",
        "()I",
        "UNKNOWN",
        "SCRIPT",
        "IMAGE",
        "CSS",
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
.field private static final synthetic $VALUES:[Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

.field private static transient synthetic $jacocoData:[Z

.field public static final enum CSS:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

.field public static final Companion:Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;

.field public static final enum IMAGE:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

.field public static final enum SCRIPT:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

.field public static final enum UNKNOWN:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;


# instance fields
.field private final filterOption:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x40e8f709980314c5L    # -8.787158912763615E-5

    const/16 v2, 0x9

    const-string v3, "com/duckduckgo/app/trackerdetection/model/ResourceType"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->$jacocoInit()[Z

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    new-instance v3, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 25
    const-string v6, "UNKNOWN"

    invoke-direct {v3, v6, v4, v4}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->UNKNOWN:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    aput-object v3, v2, v4

    new-instance v3, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    aput-boolean v5, v0, v5

    .line 26
    const-string v4, "SCRIPT"

    invoke-direct {v3, v4, v5, v5}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->SCRIPT:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    aput-object v3, v2, v5

    new-instance v3, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/4 v4, 0x2

    aput-boolean v5, v0, v4

    .line 27
    const-string v6, "IMAGE"

    invoke-direct {v3, v6, v4, v4}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->IMAGE:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    aput-object v3, v2, v4

    new-instance v3, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    .line 28
    const-string v6, "CSS"

    invoke-direct {v3, v6, v4, v1}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->CSS:Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    aput-object v3, v2, v4

    sput-object v2, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->$VALUES:[Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    new-instance v2, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->Companion:Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;

    aput-boolean v5, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .param p3, "filterOption"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->filterOption:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/ResourceType;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->$jacocoInit()[Z

    move-result-object v0

    const-class v1, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p0
.end method

.method public static values()[Lcom/duckduckgo/app/trackerdetection/model/ResourceType;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->$jacocoInit()[Z

    move-result-object v0

    sget-object v1, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->$VALUES:[Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    invoke-virtual {v1}, [Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public final getFilterOption()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget v1, p0, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->filterOption:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
